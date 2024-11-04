thread_template = "where sys := {{ {} }}"

iriw_template = "deflitmus iriw-TB_{} := W.{}_rlx x=1 || R.{} x // 1; {} R.{}_rlx y // 0 || W.{} y=1 || R.{} y // 1; {} R.{}_rlx x // 0"

# Define the variables
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

def iriw_mem_orders(variant):
  mem_orders = {
    "t_1_order": "rlx",
    "t_3_order": "rlx"
  }

  if variant == "ACQUIRE" or variant == "THREAD_1_FENCE":
    mem_orders["t_3_order"] = "acq"
  if variant == "ACQUIRE" or variant == "THREAD_3_FENCE":
    mem_orders["t_1_order"] = "acq"

  return mem_orders

def iriw_fences(f_scope, variant):
  fences = {
    "t_1_fence": "",
    "t_3_fence": ""
  }

  if variant == "THREAD_1_FENCE" or variant == "BOTH_FENCE":
    fences["t_1_fence"] = f"Fence.{f_scope}_acqrel;"
  if variant == "THREAD_3_FENCE" or variant == "BOTH_FENCE":
    fences["t_3_fence"] = f"Fence.{f_scope}_acqrel;"
  
  return fences

def iriw_tests(output):
  tb_combos = make_combinations(four_threads)
  variants = ["ACQUIRE", "RELAXED"]
  fence_variants = ["THREAD_1_FENCE", "THREAD_3_FENCE", "BOTH_FENCE"]
  for combo in tb_combos:
    sorted_groups = sorted(combo, key=lambda group: int(group[0][1:]))
    lean_format_combo = ", ".join(f"{{{', '.join(group)}}}" for group in sorted_groups)
    formatted_tb_config = f"where sys := {{{lean_format_combo}}}"

    name_format_combo = "_".join("".join(item[1:] for item in group) for group in sorted_groups)
   
    # Deal with one annoyance matching names across test generation formats
    if name_format_combo == "0_13_2":
      name_format_combo = "0_2_13"

    for scope in scope_mappings.keys():
      mapped_scope = scope_mappings[scope]
      for variant in variants:
        full_name = f"{name_format_combo}_{scope}_NO_FENCE_{variant}"
        mem_orders = iriw_mem_orders(variant)
        t1_read = "{}_{}".format(mapped_scope, mem_orders["t_1_order"])
        t3_read = "{}_{}".format(mapped_scope, mem_orders["t_3_order"])
        formatted_test = f"deflitmus iriw_TB_{full_name} := W.{mapped_scope}_rlx x=1 || R.{t1_read} x // 1; R.{mapped_scope}_rlx y // 0 || W.{mapped_scope}_rlx y=1 || R.{t3_read} y // 1; R.{mapped_scope}_rlx x // 0"
        output.write(formatted_test)
        output.write("\n")
        output.write(f" {formatted_tb_config}")
        output.write("\n\n")
      
      for f_scope in scope_mappings.keys():
        mapped_f_scope = scope_mappings[f_scope]
        for variant in fence_variants:
          full_name = f"{name_format_combo}_{scope}_FENCE_{f_scope}_{variant}"
          mem_orders = iriw_mem_orders(variant)
          t1_read = "{}_{}".format(mapped_scope, mem_orders["t_1_order"])
          t3_read = "{}_{}".format(mapped_scope, mem_orders["t_3_order"])
          fences = iriw_fences(mapped_f_scope, variant)
          formatted_test = f"deflitmus iriw_TB_{full_name} := W.{mapped_scope}_rlx x=1 || R.{t1_read} x // 1; {fences["t_1_fence"]} R.{mapped_scope}_rlx y // 0 || W.{mapped_scope}_rlx y=1 || R.{t3_read} y // 1; {fences["t_3_fence"]} R.{mapped_scope}_rlx x // 0"

          output.write(formatted_test)
          output.write("\n")
          output.write(f" {formatted_tb_config}")
          output.write("\n\n")

output_file = "Litmus/PTX_MCA.lean"

with open(output_file, "w") as output:
  output.write("""import Pop.Arch.PTX_MCA
namespace PTX_MCA
namespace Litmus

""")

  iriw_tests(output)

  output.write("""def allTests : List Litmus.Test := litmusTests!

end Litmus
end PTX_MCA
""")