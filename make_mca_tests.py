
# --------------------------
# Utilities
# --------------------------
three_threads = ["T0", "T1", "T2"]
four_threads = ["T0", "T1", "T2", "T3"]

scope_mappings = {
  "SCOPE_SYSTEM" : "sys",
  "SCOPE_DEVICE" : "gpu",
  "SCOPE_BLOCK" : "cta"
}

def make_combinations(threads):
  if len(threads) == 1:
    return [[[threads[0]]]]
  else:
    combos = make_combinations(threads[1:])
    new_combos = []
    this_thread = threads[0]
    for combo in combos:
      # new group for this thread
      new_combo = combo.copy()
      new_combo = [[this_thread]] + new_combo
      new_combos.append(new_combo)

      # add this thread to all other groups
      for i in range(len(combo)):
        new_combo = combo.copy()
        new_combo[i] = [this_thread] + new_combo[i]
        new_combos.append(new_combo)
    return new_combos

def sort_combinations(combos):
  new_combos = []
  for combo in combos:
    sorted_groups = sorted(combo, key=lambda group: int(group[0][1:]))
    new_combos.append(sorted_groups)
  return new_combos

def lean_format(combo):
  lean_format_combo = ", ".join(f"{{{', '.join(group)}}}" for group in combo)
  formatted_tb_config = f"where sys := {{{lean_format_combo}}}"
  return formatted_tb_config

def name_format(combo):
  return "_".join("".join(item[1:] for item in group) for group in combo)

def make_tests(output, tb_combinations, variants, fence_variants, make_test):
  for combo in tb_combinations:
    formatted_tb_config = lean_format(combo)
    name_format_combo = name_format(combo)
    # Deal with one annoyance matching names across test generation formats
    if name_format_combo == "0_13_2":
      name_format_combo = "0_2_13"

    for scope in scope_mappings.keys():
      mapped_scope = scope_mappings[scope]

      def write_test(formatted_test):
        output.write(formatted_test)
        output.write("\n")
        output.write(f" {formatted_tb_config}")
        output.write("\n\n")

      # Variants without fences
      for variant in variants:
        full_name = f"{name_format_combo}_{scope}_NO_FENCE_{variant}"
        write_test(make_test(full_name, mapped_scope, "", variant))
     
      # Variants with fences
      for f_scope in scope_mappings.keys():
        mapped_f_scope = scope_mappings[f_scope]
        for variant in fence_variants:
          full_name = f"{name_format_combo}_{scope}_FENCE_{f_scope}_{variant}"
          write_test(make_test(full_name, mapped_scope, mapped_f_scope, variant))


# --------------------------
# End Utilities
# --------------------------

# -------------------------------------------------------------------------
# IRIW
# -------------------------------------------------------------------------
def iriw_mem_orders(scope, variant):
  mem_orders = {
    "t1_load": f"{scope}_rlx",
    "t3_load": f"{scope}_rlx"
  }

  if variant == "ACQUIRE" or variant == "THREAD_1_FENCE":
    mem_orders["t3_load"] = f"{scope}_acq"
  if variant == "ACQUIRE" or variant == "THREAD_3_FENCE":
    mem_orders["t1_load"] = f"{scope}_acq"

  return mem_orders

def iriw_fences(f_scope, variant):
  fences = {
    "t1_fence": "",
    "t3_fence": ""
  }

  if variant == "THREAD_1_FENCE" or variant == "BOTH_FENCE":
    fences["t1_fence"] = f"Fence.{f_scope}_acqrel;"
  if variant == "THREAD_3_FENCE" or variant == "BOTH_FENCE":
    fences["t3_fence"] = f"Fence.{f_scope}_acqrel;"
  
  return fences

def make_iriw_test(full_name, scope, f_scope, variant):
  mem_orders = iriw_mem_orders(scope, variant)
  fences = iriw_fences(f_scope, variant)
  return f"deflitmus iriw_TB_{full_name} := W.{scope}_rlx x=1 || R.{mem_orders["t1_load"]} x // 1; {fences["t1_fence"]} R.{scope}_rlx y // 0 || W.{scope}_rlx y=1 || R.{mem_orders["t3_load"]} y // 1; {fences["t3_fence"]} R.{scope}_rlx x // 0"
        
def iriw_tests(output):
  tb_combos = sort_combinations(make_combinations(four_threads))
  variants = ["ACQUIRE", "RELAXED"]
  fence_variants = ["THREAD_1_FENCE", "THREAD_3_FENCE", "BOTH_FENCE"]
  make_tests(output, tb_combos, variants, fence_variants, make_iriw_test)

# -------------------------------------------------------------------------
# ISA2
# -------------------------------------------------------------------------

def isa2_mem_orders(scope, variant):
  mem_orders = {
    "t0_store": f"{scope}_rlx",
    "t1_load": f"{scope}_rlx",
    "t1_store": f"{scope}_rlx",
    "t2_load": f"{scope}_rlx"
  }

  ## T0 store
  if variant in ["ACQUIRE", "RELEASE", "THREAD_1_FENCE", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL", "THREAD_1_2_FENCE"]:
    mem_orders["t0_store"] = f"{scope}_rel"
  
  ## T1 load
  if variant in ["ACQUIRE", "THREAD_0_FENCE_ACQ", "THREAD_2_FENCE_ACQ", "THREAD_0_2_FENCE_ACQ"]:
    mem_orders["t1_load"] = f"{scope}_acq"

  ## T1 store
  if variant in ["RELEASE", "THREAD_0_FENCE_REL", "THREAD_2_FENCE_REL", "THREAD_0_2_FENCE_REL"]:
    mem_orders["t1_store"] = f"{scope}_rel"

  ## T2 load
  if variant in ["ACQUIRE", "RELEASE", "THREAD_0_FENCE_ACQ", "THREAD_0_FENCE_REL", "THREAD_1_FENCE", "THREAD_0_1_FENCE"]:
    mem_orders["t2_load"] = f"{scope}_acq"
  
  return mem_orders

def isa2_fences(f_scope, variant):
  fences = {
    "t0_fence": "",
    "t1_fence": "",
    "t2_fence": ""
  }

  ## T0 fence
  if variant in ["ALL_FENCE", "THREAD_0_FENCE_ACQ", "THREAD_0_FENCE_REL", "THREAD_0_1_FENCE", "THREAD_0_2_FENCE_ACQ", "THREAD_0_2_FENCE_REL"]:
    fences["t0_fence"] = f"Fence.{f_scope}_acqrel;"

  ## T1 fence
  if variant in ["ALL_FENCE", "THREAD_1_FENCE", "THREAD_0_1_FENCE", "THREAD_1_2_FENCE"]:
    fences["t1_fence"] = f"Fence.{f_scope}_acqrel;"
   
  ## T2 fence
  if variant in ["ALL_FENCE", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL", "THREAD_0_2_FENCE_ACQ", "THREAD_0_2_FENCE_REL", "THREAD_1_2_FENCE"]:
    fences["t2_fence"] = f"Fence.{f_scope}_acqrel;"

  return fences

def make_isa2_test(full_name, scope, f_scope, variant):
  mem_orders = isa2_mem_orders(scope, variant)
  fences = isa2_fences(f_scope, variant)
  return f"deflitmus isa2_TB_{full_name} := W.{scope}_rlx x=1; {fences["t0_fence"]} W.{mem_orders["t0_store"]} y=1 || R.{mem_orders["t1_load"]} y // 1; {fences["t1_fence"]} W.{mem_orders["t1_store"]} z=1 || R.{mem_orders["t2_load"]} z // 1; {fences["t2_fence"]} R.{scope}_rlx x // 0"

def isa2_tests(output):
  tb_combos = make_combinations(three_threads)
  variants = ["RELAXED", "ACQUIRE", "RELEASE"]
  fence_variants = ["ALL_FENCE", "THREAD_0_FENCE_ACQ", "THREAD_0_FENCE_REL", "THREAD_1_FENCE", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL", "THREAD_0_1_FENCE", "THREAD_0_2_FENCE_ACQ", "THREAD_0_2_FENCE_REL", "THREAD_1_2_FENCE"]
  make_tests(output, tb_combos, variants, fence_variants, make_isa2_test)

# -------------------------------------------------------------------------
# Paper Example
# -------------------------------------------------------------------------

def paper_example(output):
  test = "deflitmus paper_example_DEFAULT_DEFAULT_NO_FENCE_DEFAULT := Fence.gpu_sc; W.gpu_rel x=1; W.gpu_rel z=1 || R.gpu_acq z // 1; W.gpu_rel y=1; Fence.gpu_sc; R.gpu_rlx y // 2 || Fence.gpu_sc; W.gpu_rel y=2; W.gpu_rel a=1 || R.gpu_acq a // 1; R.gpu_acq x // 0; Fence.gpu_sc"
  config = " where sys := {{T0}, {T1}, {T2}, {T3}}"
  output.write(test)
  output.write("\n")
  output.write(config)
  output.write("\n\n")

# -------------------------------------------------------------------------
# RWC
# -------------------------------------------------------------------------

def rwc_mem_orders(scope, variant):
  mem_orders = {
    "t1_load": f"{scope}_rlx",
    "t2_store": f"{scope}_rlx",
    "t2_load": f"{scope}_rlx"
  }

  ## T1 load
  if variant in ["STORE_SC", "LOAD_SC", "THREAD_2_FENCE"]:
    mem_orders["t1_load"] = f"{scope}_acq"

  ## T2 store
  if variant in ["STORE_SC", "THREAD_1_FENCE_STORE_SC"]:
    mem_orders["t2_store"] = f"{scope}_sc"
  
  ## T2 load
  if variant in ["LOAD_SC", "THREAD_1_FENCE_LOAD_SC"]:
    mem_orders["t2_load"] = f"{scope}_sc"
  
  return mem_orders

def rwc_fences(f_scope, variant):
  fences = {
    "t1_fence": "",
    "t2_fence": ""
  }

  ## T1 fence
  if variant in ["BOTH_FENCE", "THREAD_1_FENCE_STORE_SC", "THREAD_1_FENCE_LOAD_SC"]:
    fences["t1_fence"] = f"Fence.{f_scope}_acqrel;"
  
  ## T2 fence
  if variant in ["BOTH_FENCE", "THREAD_2_FENCE"]:
    fences["t2_fence"] = f"Fence.{f_scope}_sc;"

  return fences


def make_rwc_test(full_name, scope, f_scope, variant):
  mem_orders = rwc_mem_orders(scope, variant)
  fences = rwc_fences(f_scope, variant)
  return f"deflitmus rwc_TB_{full_name} := W.{scope}_rlx x=1 || R.{mem_orders["t1_load"]} x // 1; {fences["t1_fence"]} R.{scope}_rlx y // 0 || W.{mem_orders["t2_store"]} y=1; {fences["t2_fence"]} R.{mem_orders["t2_load"]} x // 0"


def rwc_tests(output):
  tb_combos = make_combinations(three_threads)
  variants = ["RELAXED", "STORE_SC", "LOAD_SC"]
  fence_variants = ["BOTH_FENCE", "THREAD_1_FENCE_STORE_SC", "THREAD_1_FENCE_LOAD_SC", "THREAD_2_FENCE"]
  make_tests(output, tb_combos, variants, fence_variants, make_rwc_test)

# -------------------------------------------------------------------------
# WRC
# -------------------------------------------------------------------------

def wrc_mem_orders(scope, variant):
  mem_orders = {
    "t1_load": f"{scope}_rlx",
    "t1_store": f"{scope}_rlx",
    "t2_load": f"{scope}_rlx"
  }

  ## T1 load
  if variant in ["ACQUIRE", "THREAD_2_FENCE_ACQ"]:
    mem_orders["t1_load"] = f"{scope}_acq"

  ## T1 store
  if variant in ["RELEASE", "THREAD_2_FENCE_REL"]:
    mem_orders["t1_store"] = f"{scope}_rel"
  
  ## T2 load
  if variant in ["ACQUIRE", "RELEASE", "THREAD_1_FENCE"]:
    mem_orders["t2_load"] = f"{scope}_acq"
  
  return mem_orders

def wrc_fences(f_scope, variant):
  fences = {
    "t1_fence": "",
    "t2_fence": ""
  }

  ## T1 fence
  if variant in ["BOTH_FENCE", "THREAD_1_FENCE"]:
    fences["t1_fence"] = f"Fence.{f_scope}_acqrel;"
  
  ## T2 fence
  if variant in ["BOTH_FENCE", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL"]:
    fences["t2_fence"] = f"Fence.{f_scope}_acqrel;"

  return fences

def make_wrc_test(full_name, scope, f_scope, variant):
  mem_orders = wrc_mem_orders(scope, variant)
  fences = wrc_fences(f_scope, variant)
  return f"deflitmus wrc_TB_{full_name} := W.{scope}_rlx x=1 || R.{mem_orders["t1_load"]} x // 1; {fences["t1_fence"]} W.{mem_orders["t1_store"]} y=1 || R.{mem_orders["t2_load"]} y // 1; {fences["t2_fence"]} R.{scope}_rlx x // 0"

def wrc_tests(output):
  tb_combos = make_combinations(three_threads)
  variants = ["RELAXED", "ACQUIRE", "RELEASE"]
  fence_variants = ["BOTH_FENCE", "THREAD_1_FENCE", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL"]
  make_tests(output, tb_combos, variants, fence_variants, make_wrc_test)

# -------------------------------------------------------------------------
# WRW + 2W
# -------------------------------------------------------------------------

def wrw_2w_mem_orders(scope, variant):
  mem_orders = {
    "t1_load": f"{scope}_rlx",
    "t1_store": f"{scope}_rlx",
    "t2_store": f"{scope}_rlx"
  }

  ## T1 load
  if variant in ["ACQUIRE", "THREAD_2_FENCE_ACQ"]:
    mem_orders["t1_load"] = f"{scope}_acq"

  ## T1 store
  if variant in ["RELEASE", "THREAD_2_FENCE_REL"]:
    mem_orders["t1_store"] = f"{scope}_rel"
  
  ## T2 store
  if variant in ["ACQUIRE", "RELEASE", "THREAD_1_FENCE"]:
    mem_orders["t2_store"] = f"{scope}_rel"
  
  return mem_orders

def wrw_2w_fences(f_scope, variant):
  fences = {
    "t1_fence": "",
    "t2_fence": ""
  }

  ## T1 fence
  if variant in ["BOTH_FENCE", "THREAD_1_FENCE"]:
    fences["t1_fence"] = f"Fence.{f_scope}_acqrel;"
  
  ## T2 fence
  if variant in ["BOTH_FENCE", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL"]:
    fences["t2_fence"] = f"Fence.{f_scope}_acqrel;"

  return fences

def make_wrw_2w_test(full_name, scope, f_scope, variant):
  mem_orders = wrw_2w_mem_orders(scope, variant)
  fences = wrw_2w_fences(f_scope, variant)
  return f"deflitmus wrw_2w_TB_{full_name} := W.{scope}_rlx x=1 || R.{mem_orders["t1_load"]} x // 1; {fences["t1_fence"]} W.{mem_orders["t1_store"]} y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.{scope}_rlx y=2; {fences["t2_fence"]} R.{mem_orders["t2_store"]} x // 0"

def wrw_2w_tests(output):
  tb_combos = make_combinations(three_threads)
  variants = ["RELAXED", "ACQUIRE", "RELEASE"]
  fence_variants = ["BOTH_FENCE", "THREAD_1_FENCE", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL"]
  make_tests(output, tb_combos, variants, fence_variants, make_wrw_2w_test)

# -------------------------------------------------------------------------
# WWC
# -------------------------------------------------------------------------

def wwc_mem_orders(scope, variant):
  mem_orders = {
    "t1_load": f"{scope}_rlx",
    "t1_store": f"{scope}_rlx",
    "t2_load": f"{scope}_rlx",
    "t2_store": f"{scope}_rlx"
  }

  ## T1 load
  if variant in ["ACQ_REL", "ACQ_ACQ", "THREAD_2_FENCE_ACQ"]:
    mem_orders["t1_load"] = f"{scope}_acq"

  ## T1 store
  if variant in ["REL_ACQ", "REL_REL", "THREAD_2_FENCE_REL"]:
    mem_orders["t1_store"] = f"{scope}_rel"
  
  ## T2 load
  if variant in ["ACQ_ACQ", "REL_ACQ", "THREAD_1_FENCE_ACQ"]:
    mem_orders["t2_load"] = f"{scope}_acq"

   ## T2 store
  if variant in ["ACQ_REL", "REL_REL", "THREAD_1_FENCE_REL"]:
    mem_orders["t2_store"] = f"{scope}_rel"
 
  return mem_orders

def wwc_fences(f_scope, variant):
  fences = {
    "t1_fence": "",
    "t2_fence": ""
  }

  ## T1 fence
  if variant in ["BOTH_FENCE", "THREAD_1_FENCE_ACQ", "THREAD_1_FENCE_REL"]:
    fences["t1_fence"] = f"Fence.{f_scope}_acqrel;"
  
  ## T2 fence
  if variant in ["BOTH_FENCE", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL"]:
    fences["t2_fence"] = f"Fence.{f_scope}_acqrel;"

  return fences

def make_wwc_test(full_name, scope, f_scope, variant):
  mem_orders = wwc_mem_orders(scope, variant)
  fences = wwc_fences(f_scope, variant)
  return f"deflitmus wwc_TB_{full_name} := W.{scope}_rlx x=2 || R.{mem_orders["t1_load"]} x // 2; {fences["t1_fence"]} W.{mem_orders["t1_store"]} y=1 || R.{mem_orders["t2_load"]} y // 1; {fences["t2_fence"]} W.{mem_orders["t2_store"]} x=1; Fence.sys_sc; R.sys_rlx x // 2"

def wwc_tests(output):
  tb_combos = make_combinations(three_threads)
  variants = ["RELAXED", "ACQ_REL", "ACQ_ACQ", "REL_ACQ", "REL_REL"]
  fence_variants = ["BOTH_FENCE", "THREAD_1_FENCE_ACQ", "THREAD_1_FENCE_REL", "THREAD_2_FENCE_ACQ", "THREAD_2_FENCE_REL"]
  make_tests(output, tb_combos, variants, fence_variants, make_wwc_test)

# -------------------------------------------------------------------------
# Write Output 
# -------------------------------------------------------------------------

output_file = "Litmus/PTX_MCA.lean"

with open(output_file, "w") as output:
  output.write("""import Pop.Arch.PTX_MCA
namespace PTX_MCA
namespace Litmus

""")

  iriw_tests(output)
  isa2_tests(output)
  paper_example(output)
  rwc_tests(output)
  wrc_tests(output)
  wrw_2w_tests(output)
  wwc_tests(output)

  output.write("""def allTests : List Litmus.Test := litmusTests!

end Litmus
end PTX_MCA
""")
