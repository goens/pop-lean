-- Author(s): Andrés Goens
-- See Copyright Notice in LICENSE

import Pop.Arch.TSO
import Litmus.TSOTraces
namespace x86
namespace Litmus

deflitmus IRIW := W x=1 || R x // 1 ; R y // 0 || R y // 1; R x // 0 || W y=1  expect 𐄂

deflitmus IRIW_fences := W x=1 || R x // 1; Fence; R y // 0 || R y // 1; Fence; R x // 0 || W y=1  expect 𐄂

deflitmus MP :=  W x=1; W y=1 || R y // 1; R x // 0  expect 𐄂

deflitmus MP_fence1 := W x=1; Fence; W y=1 || R y // 1; R x // 0  expect 𐄂

deflitmus MP_fence2 := W x=1; W y=1 || R y //1; Fence; R x // 0  expect 𐄂

deflitmus MP_fence := W x=1; Fence; W y=1 || R y // 1; Fence; R x // 0 expect 𐄂

deflitmus N7 := W x=1; R x // 1; R y //0 || W y=1 || R y // 1; R x //0  expect ✓

deflitmus N7_fence := W x=1; Fence; R x // 1; R y //0 || W y=1 || R y // 1; R x //0  expect 𐄂

deflitmus N7_two_threads := W x=1; R x // 1; R y //0 || W y=1; R y // 1; R x //0  expect ✓

deflitmus N7_two_threads_fences := W x=1; Fence; R x // 1; R y //0 || W y=1; Fence; R y // 1; R x //0  expect 𐄂

deflitmus dekkers := W x=1; R y //0 || W y=1; R x // 0  expect ✓

deflitmus dekkers_fence := W x=1; Fence; R y //0 || W y=1; Fence; R x // 0  expect 𐄂

deflitmus dekkers_po_fence := W x=1; R y //0 || W y=1; Fence; R x // 0  expect ✓

deflitmus dekkers_fence_po := W x=1; Fence; R y //0 || W y=1; R x // 0  expect ✓

deflitmus WWRWRR_fences' := W x=1; Fence; W y=1 || R y // 1; Fence; W z = 1 || R z // 1 ; Fence; R x // 0 expect 𐄂

deflitmus WRC := W x=1 || R x // 1; W y = 1 || R y // 1 ;dep R x // 0 expect 𐄂

deflitmus MP3 := W x=1; W y=1 || R y // 1; W z = 1 || R z // 1 ; R x // 0 expect 𐄂

deflitmus simpleRF := W.cta_rlx x=1 || R.cta_rlx x // 1  expect ✓

deflitmus two_plus_two2 := W x=1; W y=2; R y // 1 || W y=1; W x=2 ; R x // 1 expect 𐄂

deflitmus co_two_thread := W x = 1; R x // 2 || W x = 2; R x // 1  expect 𐄂

-- deflitmus IRIW_rmw := RMW x // 0 || R x // 1 ; R y // 0 || R y // 1; R x // 0 || RMW y // 0  expect 𐄂 -- tso is multicopy atomic anyway...

-- deflitmus two_rmws := RMW x // 0; R x // 1 || RMW x // 0; R x // 1  expect 𐄂 -- this actually should be allowed, because it will be the result if the write fails!

-- deflitmus dekkers_rmw_fence_unsuccessful := W x = 1; RMW y // 0; R z //0 || W z = 1; RMW y // 0; R x // 0  -- expect ✓

-- deflitmus dekkers_rmw_fence_successful := W x = 1; RMW y // 0; R z //0 || W z = 1; RMW y // 1; R x // 0  -- expect 𐄂 even without the additional PPO

-- deflitmus dekkers_rmw_fence_diff_addresses := W x = 1; RMW y // 0; R z //0 || W z = 1; RMW w // 1; R x // 0  -- expect 𐄂

deflitmus two_plus_two_w_mfence := W x=1; Fence; W y=2; R y // 1 || W y=1; W x=2 ; R x // 1 expect 𐄂

deflitmus two_plus_two_w_mfences := W x=1; Fence; W y=2; R y // 1 || W y=1; Fence; W x=2 ; R x // 1 expect 𐄂

deflitmus lb := R x // 1; W y = 1 || R y // 1; W x=1  expect 𐄂

deflitmus lb_mfence := R x // 1; Fence; W y = 1 || R y // 1; Fence; W x=1  expect 𐄂

deflitmus lb_mfences := R x // 1; W y = 1 || R y // 1; W x=1  expect 𐄂

deflitmus r := W x = 1; W y = 1 || W y = 2; R x // 0; R y // 2  expect ✓

deflitmus r_mfences := W x = 1; Fence; W y = 1 || W y = 2; Fence; R x // 0; R y // 2  expect ✓ -- huh, really?

deflitmus r_mfence_po := W x = 1; Fence; W y = 1 || W y = 2; R x // 0; R y // 2  expect ✓

deflitmus r_po_mfence := W x = 1; W y = 1 || W y = 2; Fence; R x // 0; R y // 2  expect ✓

deflitmus r_mfence_rfi_po := W x = 1; Fence; W y = 1 || W y = 2; R y // 2; R x // 0  expect ✓

deflitmus s := W x = 2; W y = 1 || R y // 1; W x = 1; R x // 2  expect 𐄂

deflitmus s_mfences := W x = 2; Fence; W y = 1 || R y // 1; Fence; W x = 1; R x // 2  expect 𐄂

deflitmus s_po_mfence := W x = 2; W y = 1 || R y // 1; Fence; W x = 1; R x // 2  expect 𐄂

deflitmus s_mfence_po := W x = 2; Fence; W y = 1 || R y // 1; W x = 1; R x // 2  expect 𐄂

-- deflitmus rmw_atomic := W x = 1 || RMW x // 1 || W x = 3 || R x // 1; R x // 3; R x // 2 

-- deflitmus rmw_chain := RMW x // 0 || RMW x // 1 || W x = 3 || R x // 1; R x // 3; R x // 2 

-- deflitmus rmw_chain' := RMW x // 0 || RMW x // 1; W x = 4 || RMW x // 2 || R x // 4; R x // 3 

def allTests := litmusTests!
def tests_2 := allTests.filter λ lit => lit.numThreads == 2
def tests_3 := allTests.filter λ lit => lit.numThreads == 3
def tests_4 := allTests.filter λ lit => lit.numThreads == 4

end Litmus
end x86
