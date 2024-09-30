-- Author(s): Andrés Goens
-- See Copyright Notice in LICENSE

import Pop.Arch.PTX
import Litmus.PTXTraces
namespace PTX
namespace Litmus

deflitmus IRIW := W x=1 || R x // 1 ; R y // 0 || R y // 1; R x // 0 || W y=1  expect ✓

deflitmus IRIW_dep := W x=1 || R x // 1 ;dep R y // 0 || R y // 1;dep R x // 0 || W y=1  expect ✓

deflitmus IRIW_dep_sc := W x=1 || R x // 1 ;dep R y // 0 || R y // 1; Fence; R x // 0 || W y=1  expect ✓

deflitmus IRIW_relacq := W.sys_rel x=1 || R.sys_acq x // 1 ; R.sys_acq y // 0 || R.sys_acq y // 1; R.sys_acq x // 0 || W.sys_rel y=1  expect ✓

deflitmus IRIW_3ctas := W x=1 || R x // 1 ; Fence.cta_sc; R y // 0 || R y // 1; Fence.cta_sc; R x // 0 || W y=1 
 where sys := { {T0}, {T1, T2}, {T3} } expect 𐄂

deflitmus IRIW_4ctas := W x=1 || R.cta_rlx x // 1 ; Fence.sys_sc; R.cta_rlx y // 0 || R.cta_rlx y // 1; Fence.sys_sc; R.sys_rlx x // 0 || W y=1 
 where sys := { {T0}, {T1}, {T2}, {T3} } expect ✓

-- TODO: litmus with sc fences and writes that are not predecessors, can something break?
deflitmus IRIW_3ctas_1scoped_w := W.cta_rlx x=1 || R x // 1 ; Fence.cta_sc; R y // 0 || R y // 1; Fence.cta_sc; R x // 0 || W y=1 
 where sys := { {T0}, {T1, T2}, {T3} } expect ✓

deflitmus IRIW_3ctas_1scoped_r := W x=1 || R.cta_rlx x // 1 ; Fence.cta_sc; R y // 0 || R y // 1; Fence.cta_sc; R x // 0 || W y=1 
 where sys := { {T0}, {T1, T2}, {T3} } expect ✓

deflitmus IRIW_3ctas_scoped_rs_after := W x=1 || R x // 1 ; Fence.cta_sc; R.cta_rlx y // 0 || R y // 1; Fence.cta_sc; R.cta_rlx x // 0 || W y=1 
 where sys := { {T0}, {T1, T2}, {T3} } expect 𐄂
deflitmus IRIW_2ctas := W x=1 || R x // 1 ; Fence.cta_sc; R y // 0 || R y // 1; Fence.cta_sc; R x // 0 || W y=1 
 where sys := { {T0, T2}, {T1, T3} } expect ✓

deflitmus IRIW_fences := W x=1 || R x // 1; Fence; R y // 0 || R y // 1; Fence; R x // 0 || W y=1  expect 𐄂

deflitmus IRIW_acq_fences := W x=1 || R x // 1; Fence.sys_acq; R y // 0 || R y // 1; Fence.sys_acq; R x // 0 || W y=1  expect ✓

deflitmus IRIW_acqrel_fences := W x=1 || R x // 1; Fence.sys_acqrel; R y // 0 || R y // 1; Fence.sys_acqrel; R x // 0 || W y=1  expect ✓

deflitmus IRIW_sc_acqrel_fence := W x=1 || R x // 1; Fence; R y // 0 || R y // 1; Fence.sys_acqrel; R x // 0 || W y=1  expect ✓

deflitmus simpleRF := W.cta_rlx x=1 || R.cta_rlx x // 1 
 where sys := { {T0}, {T1} } expect ✓

deflitmus MP :=  W x=1; W y=1 || R y // 1; R x // 0  expect ✓

deflitmus MP_fence1 := W x=1; Fence; W y=1 || R y // 1; R x // 0  expect ✓

deflitmus MP_fence2 := W x=1; W y=1 || R y //1; Fence; R x // 0  expect ✓

deflitmus MP_fence := W x=1; Fence; W y=1 || R y // 1; Fence; R x // 0 expect 𐄂

deflitmus MP_fence_cta := W x=1; Fence.cta_sc; W y=1 || R y // 1; Fence.cta_sc; R x // 0
 where sys := { {T0}, {T1} } expect ✓

deflitmus MP_read_cta := W x=1; Fence.sys_sc; W y=1 || R.cta_rlx y // 1; Fence.sys_sc; R x // 0
 where sys := { {T0}, {T1} } expect 𐄂

deflitmus MP_fence_consumer_weak := W.sys_weak x=1; Fence.sys_sc; W y=1 || R y // 1; Fence.sys_sc; R.sys_weak x // 0 -- expect 𐄂

deflitmus MP_fence_weak := W.sys_weak x=1; Fence.sys_sc; W.sys_weak y=1 || R.sys_weak y // 1; Fence.sys_sc; R.sys_weak x // 0 -- expect 𐄂

deflitmus MP_fence_weak_rel_acq := W.sys_weak x=1; Fence.sys_rel; W.sys_weak y=1 || R.sys_weak y // 1; Fence.sys_acq; R.sys_weak x // 0 -- expect 𐄂

deflitmus MP_fence_rel_acq := W x=1; Fence.sys_rel; W y=1 || R y // 1; Fence.sys_acq; R x // 0 expect 𐄂

deflitmus MP_rel_acq := W x=1; W.sys_rel y=1 || R.sys_acq y // 1; R x // 0 expect 𐄂

deflitmus MP_rel_seq := W x=1; W.sys_rel y=1; W y = 2 || R.sys_acq y // 2; R x // 0 expect 𐄂

deflitmus MP_acq_seq := W x=1; W.sys_rel y=1 || R y // 1; R.sys_acq y // 2; R x // 0 expect 𐄂

deflitmus MP_fence_cta_1fence := W x=1; Fence.sys_sc; W y=1 || R y // 1; Fence.cta_sc; R x // 0
 where sys := { {T0}, {T1} } expect ✓

deflitmus N7 := W x=1; R x // 1; R y //0 || W y=1; R y // 1; R x //0  expect ✓

deflitmus dekkers := W x=1; R y //0 || W y=1; R x // 0  expect ✓

deflitmus dekkers_fence := W x=1; Fence; R y //0 || W y=1; Fence; R x // 0  expect 𐄂

deflitmus dekkers_acqrel := W.sys_rel x=1; R.sys_acq y //0 || W.sys_rel y=1; R.sys_acq x // 0  expect ✓

deflitmus dekkers_acqrelfence := W x=1; Fence.sys_acqrel; R y //0 || W y=1; Fence.sys_acqrel; R x // 0  expect ✓

deflitmus dekkers_relfence := W x=1; Fence.sys_rel; R y //0 || W y=1; Fence.sys_acqrel; R x // 0  expect ✓

deflitmus dekkers_acqfence := W x=1; Fence.sys_acq; R y //0 || W y=1; Fence.sys_acqrel; R x // 0  expect ✓

deflitmus WRC := W x=1 || R.sys_acq x // 1; W y = 1 || R y // 1 ;dep R x // 0 expect ✓

deflitmus WRC_acqrel := W.sys_rlx x=1 || R.sys_acq x // 1; W.sys_rel y = 1 || R.sys_acq y // 1 ; R.sys_acq x // 0 expect 𐄂

deflitmus WRC_two_deps := W x=1 || R.sys_acq x // 1;dep W y = 1 || R y // 1 ;dep R x // 0 expect ✓

deflitmus WRC_rel_first := W.sys_rel x=1 || R.sys_acq x // 1; W y = 1 || R y // 1 ;dep R x // 0 expect ✓

deflitmus WRC_acq := W x=1 || R.sys_acq x // 1; W y = 1 || R.sys_acq y // 1 ;dep R x // 0 expect ✓

deflitmus WRC_sc_dep := W x=1 || R x // 1; Fence.sys_sc; W y = 1 || R y // 1 ;dep R x // 0 expect ✓

deflitmus WRC_no_dep := W x=1 || R.sys_acq x // 1; W y = 1 || R y // 1 ; R x // 0 expect ✓

deflitmus WRC_cta_1_2 := W x=1 || R.sys_rlx x // 1; Fence.sys_rel; W.cta_rlx y = 1 || R.cta_rlx y // 1 ; Fence.sys_acq; R.sys_rlx x // 0 
 where sys := { {T0}, {T1, T2}} expect 𐄂

deflitmus WRC_cta_1_2_acqrel := W x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y = 1 || R.cta_rlx y // 1 ; Fence.sys_acqrel; R.sys_rlx x // 0 
 where sys := { {T0}, {T1, T2}} expect 𐄂

deflitmus WRC_cta_2_1 := W x=1 || R.sys_rlx x // 1; Fence.sys_rel; W.cta_rlx y = 1 || R.cta_rlx y // 1 ; Fence.sys_acq; R.sys_rlx x // 0 
 where sys := { {T0, T1}, {T2}} expect ✓

deflitmus WRC_cta_2_1' := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_rel; W.sys_rlx y = 1 || R.sys_rlx y // 1 ; Fence.sys_acq; R.sys_rlx x // 0 
 where sys := { {T0, T1}, {T2}} expect 𐄂

deflitmus WRC_rel_mid := W x=1 || R x // 1; Fence.sys_rel; W y = 1 || R y // 1 ; Fence.sys_acq; R x // 0  expect 𐄂

deflitmus WRC_rel_mid_no_fence := W x=1 || R x // 1; W.sys_rel y = 1 || R y // 1 ; Fence.sys_acq; R x // 0  expect 𐄂

deflitmus WRC_acq_mid := W x=1 || R.sys_acq x // 1; W y = 1 || R y // 1 ; Fence.sys_acq; R x // 0  expect ✓

deflitmus WRC_cta_2_1_acqrel := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y = 1 || R.sys_rlx y // 1 ; Fence.sys_acq; R.sys_rlx x // 0 
 where sys := { {T0, T1}, {T2}} expect 𐄂

deflitmus WRC_cta_1_1_1_cta_rf_right := W x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y = 1 || R.cta_rlx y // 1 ; Fence.sys_acq; R.sys_rlx x // 0 
 where sys := { {T0}, {T1}, {T2}} expect ✓

deflitmus WRC_cta_1_1_1_rf_cta_left := W.sys_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y = 1 || R.sys_rlx y // 1 ; Fence.sys_acq; R.sys_rlx x // 0 
 where sys := { {T0}, {T1}, {T2}} expect ✓

deflitmus WRC_cta_1_1_1_cta_rf_left := W.cta_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y = 1 || R.sys_rlx y // 1 ; Fence.sys_acq; R.sys_rlx x // 0 
 where sys := { {T0}, {T1}, {T2}} expect ✓

deflitmus WRC_cta_1_1_1_cta_rf_left_sc_acq := W.cta_rlx x=1 || R.sys_rlx x // 1; Fence.sys_sc; W.sys_rlx y = 1 || R.sys_rlx y // 1 ; Fence.sys_acq; R.sys_rlx x // 0 
 where sys := { {T0}, {T1}, {T2}} expect ✓

deflitmus WRC_cta_1_1_1_cta_rf_left_sc := W.cta_rlx x=1 || R.sys_rlx x // 1; Fence.sys_sc; W.sys_rlx y = 1 || R.sys_rlx y // 1 ; Fence.sys_sc; R.sys_rlx x // 0 
 where sys := { {T0}, {T1}, {T2}} expect ✓

deflitmus ISA2 := W x=1; W y=1 || R y // 1; W z = 1 || R z // 1 ; R x // 0 expect ✓

deflitmus ISA2_acqrel := W.cta_rel x=1; W.cta_rel y=1 || R.cta_acq y // 1; W.cta_rel z = 1 || R.cta_acq z // 1 ; R.cta_acq x // 0 expect 𐄂

deflitmus ISA2_fences := W x=1; Fence.sys_rel; W y=1 || R y // 1; Fence.sys_acq; W z = 1 || R z // 1 ; Fence.sys_acq; R x // 0 expect ✓

deflitmus ISA2_fences_rel := W x=1; Fence.sys_rel; W y=1 || R y // 1; Fence.sys_rel; W z = 1 || R z // 1 ; Fence.sys_acq; R x // 0 expect ✓

deflitmus ISA2_fences' := W x=1; Fence.sys_rel; W y=1 || R y // 1; Fence.sys_acqrel; W z = 1 || R z // 1 ; Fence.sys_acq; R x // 0 expect 𐄂

deflitmus ISA2_scoped := W.cta_rel x=1; W.cta_rel y=1 || R.cta_acq y // 1; W.cta_rel z = 1 || R.cta_acq z // 1 ; R.cta_acq x // 0
 where sys := { {T0}, {T1, T2}} expect ✓

deflitmus three_vars_ws := W x = 1; Fence.sys_acqrel; W y = 1 || W y = 2; Fence.sys_acqrel; W z = 1 || R z // 1; Fence.sys_acqrel; R x // 0  expect ✓

deflitmus two_plus_two2 := W.sys_rel x=1; W.sys_rel y=2; R.sys_acq y // 1 || W.sys_rel y=1; W.sys_rel x=2 ; R.sys_acq x // 1 expect ✓

deflitmus two_plus_two2_rlx := W x=1; W y=2; R y // 1 || W y=1; W x=2 ; R x // 1 expect ✓

deflitmus co_two_thread := W x = 1; R x // 2 || W x = 2; R x // 1  expect 𐄂

deflitmus co_four_thread := W x = 1 || R x // 1 ; R x // 2 || R x // 2; R x // 1 || W x = 2  expect 𐄂

deflitmus simple_write_serialization := W x=1; W x=2 || R x // 2 ; R x // 1 expect 𐄂

deflitmus simple_write_serialization_extra_thread := W x=1; W x=2 || R x // 2 ; R x // 1 || W y=1; R y // 1 expect 𐄂

deflitmus write_serialization := W.cta_rlx x=1; W.cta_rlx x=2 || R.cta_rlx x // 1; R.cta_rlx x // 2 || R.cta_rlx x // 2 ; R.cta_rlx x // 1
 where sys := { {T0, T1}, {T2} } expect ✓

deflitmus write_serialization_unscoped := W.cta_rlx x=1; W.cta_rlx x=2 || R.cta_rlx x // 1; R.cta_rlx x // 2 || R.cta_rlx x // 2 ; R.cta_rlx x // 1 expect 𐄂

deflitmus two_r_two_w := R.cta_rlx x // 0;dep W.cta_rlx x=1; R.cta_rlx x // 1 || R.cta_rlx x // 0;dep W.cta_rlx x = 1; R.cta_rlx x // 1  
 where sys := { {T0}, {T1} }

deflitmus z6_3_lwsync_lwsync_dep := W x=1; Fence.sys_acqrel; W y=1; R y // 2 || W y = 2; Fence.sys_acqrel; W z = 1 || R z // 1 ;dep R x // 0

-- deflitmus IRIW_rmw := RMW x //0 || R x // 1 ; Fence.sys_acq; R y // 0 || R y // 1; Fence.sys_acq; R x // 0 || RMW y//0 

def allTests : List Litmus.Test := litmusTests!
def tests_2 := allTests.filter λ lit => lit.numThreads == 2
def tests_3 := allTests.filter λ lit => lit.numThreads == 3
def tests_4 := allTests.filter λ lit => lit.numThreads == 4

end Litmus
end PTX
