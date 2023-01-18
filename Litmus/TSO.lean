import Pop.Arch.TSO
import Litmus.TSOTraces
namespace x86
namespace Litmus

deflitmus IRIW := {| W x=1 ||  R x // 1 ; R y // 0 || R y // 1; R x // 0 || W y=1 |} 𐄂

deflitmus IRIW_fences := {| W x=1 ||  R x // 1; Fence; R y // 0 || R y // 1; Fence; R x // 0 || W y=1 |} 𐄂

deflitmus MP := {|  W x=1; W y=1 ||  R y // 1; R x // 0 |} 𐄂

deflitmus MP_fence1 := {| W x=1; Fence; W y=1 ||  R y // 1; R x // 0 |} 𐄂

deflitmus MP_fence2 := {| W x=1; W y=1 ||  R y //1; Fence; R x // 0 |} 𐄂

deflitmus MP_fence := {| W x=1; Fence; W y=1 ||  R y // 1; Fence; R x // 0|} 𐄂

deflitmus N7 := {| W x=1; R x // 1; R y //0 || W y=1 || R y // 1; R x //0 |} ✓

deflitmus N7_fence := {| W x=1; Fence; R x // 1; R y //0 || W y=1 || R y // 1; R x //0 |} 𐄂

deflitmus N7_two_threads := {| W x=1; R x // 1; R y //0 || W y=1; R y // 1; R x //0 |} ✓

deflitmus N7_two_threads_fences := {| W x=1; Fence; R x // 1; R y //0 || W y=1; Fence; R y // 1; R x //0 |} 𐄂

deflitmus dekkers := {| W x=1; R y //0 || W y=1; R x // 0 |} ✓

deflitmus dekkers_fence := {| W x=1; Fence; R y //0 || W y=1; Fence;  R x // 0 |} 𐄂

deflitmus WWRWRR_fences' := {| W x=1; Fence; W y=1 || R y // 1; Fence; W z = 1 || R z // 1 ; Fence; R x // 0|} 𐄂

deflitmus WRC := {| W x=1 || R x // 1; W y = 1 || R y // 1 ;dep R x // 0|} 𐄂

deflitmus MP3 := {| W x=1;  W y=1 || R y // 1; W z = 1 || R z // 1 ; R x // 0|} 𐄂

deflitmus simpleRF := {| W. cta_rlx x=1 || R. cta_rlx x // 1 |} ✓

deflitmus two_plus_two2 := {| W x=1; W y=2;  R y // 1 || W y=1; W x=2 ;  R x // 1|} 𐄂

deflitmus co_two_thread := {| W x = 1; R x // 2 || W x = 2; R x // 1 |} 𐄂

deflitmus IRIW_rmw := {| RMW x // 0 ||  R x // 1 ; R y // 0 || R y // 1; R x // 0 || RMW y // 0 |} 𐄂 -- tso is multicopy atomic anyway...

deflitmus two_rmws := {| RMW x // 0; R x // 1 || RMW x // 0; R x // 1 |} 𐄂

deflitmus dekkers_rmw := {| RMW x // 0; R y //0 || RMW y  // 1; R x // 0 |}

deflitmus dekkers_rmw_fence_unsuccessful := {| W x = 1; RMW y // 0; R z //0 || W z = 1; RMW y // 0; R x // 0 |} -- ✓

deflitmus dekkers_rmw_fence_successuful := {| W x = 1; RMW y // 0; R z //0 || W z = 1; RMW y // 1; R x // 0 |} -- 𐄂 even without the additional PPO

deflitmus dekkers_rmw_fence_diff_addresses := {| W x = 1; RMW y // 0; R z //0 || W z = 1; RMW w // 1; R x // 0 |} -- 𐄂

deflitmus rmw_atomic := {| W x = 1 || RMW x // 1 || W x = 3 || R x // 1; R x // 3; R x // 2 |}

deflitmus rmw_chain := {| RMW x // 0  || RMW x // 1 || W x = 3 || R x // 1; R x // 3; R x // 2 |}

deflitmus rmw_chain' := {| RMW x // 0  || RMW x // 1; W x = 4 || RMW x // 2 || R x // 4; R x // 3 |}

def allTests := litmusTests!
def tests_2 := allTests.filter λ lit => lit.numThreads == 2
def tests_3 := allTests.filter λ lit => lit.numThreads == 3
def tests_4 := allTests.filter λ lit => lit.numThreads == 4

end Litmus
end x86
