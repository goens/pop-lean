-- Author(s): Andrés Goens
-- See Copyright Notice in LICENSE

-- There's no axiomatic model for XC-TSO, here the axiomatic annotations refer to the simulator results.

import Pop.Arch.CompoundXCTSO
import Litmus.CompoundXCTSOTraces

namespace CompoundXCTSO
namespace Litmus

deflitmus MP1_sys := W x=1; W y=1 || R y // 1; R x // 0
 where sys := { {T0}. XC, {T1}. x86 } 
 expect ✓

deflitmus MP1_sys_F := W x=1; Fence; W y=1 || R y //1; Fence; R x // 0 
 where sys := { {T0}. XC, {T1}. x86 } 
 expect 𐄂

deflitmus MP1_cta_F := W x=1; Fence.cta_sc; W y=1 || R y // 1; Fence; R x // 0
 where sys := { {T0}. XC, {T1}. x86 } 
 expect ✓

deflitmus MP2_sys := W x=1; W y=1 || R y // 1; R x // 0
 where sys := { {T0}. x86, {T1}. XC } 
 expect ✓

deflitmus MP2_sys_F := W x=1; Fence; W y=1 || R y //1; Fence; R x // 0 
 where sys := { {T0}. x86, {T1}. XC } 
 expect 𐄂

deflitmus SB_sys := W x=1; R y //0 || W y=1; R x // 0 
 where sys := { {T0}. x86, {T1}. XC } 
 expect ✓

deflitmus SB_sys_F := W x=1; Fence; R y //0 || W y=1; Fence; R x // 0 
 where sys := { {T0}. x86, {T1}. XC } 
 expect 𐄂

deflitmus IRIW1_sys := W x=1 || R x // 1 ; R y // 0 || R y // 1; R x // 0 || W y=1 
 where sys := { {T0}. XC, {T1, T2}. x86, {T3}. XC } 
 expect 𐄂

deflitmus IRIW2_sys := W x=1 || R x // 1 ; R y // 0 || R y // 1; R x // 0 || W y=1 
 where sys := { {T0}. x86, {T1, T2}. XC, {T3}. x86 } 
 expect ✓

deflitmus IRIW2_sys_F := W x=1 || R x // 1 ; Fence; R y // 0 || R y // 1; Fence; R x // 0 || W y=1 
 where sys := { {T0}. x86, {T1, T2}. XC, {T3}. x86 } 
 expect 𐄂

deflitmus LB_sys := R x // 1; W y = 1 || R y // 1; W x=1 
 where sys := { {T0}. x86, {T1}. XC } 
 expect 𐄂

def allTests : List Litmus.Test := litmusTests!
def tests_2 := allTests.filter λ lit => lit.numThreads == 2
def tests_3 := allTests.filter λ lit => lit.numThreads == 3
def tests_4 := allTests.filter λ lit => lit.numThreads == 4

end Litmus
end CompoundXCTSO
