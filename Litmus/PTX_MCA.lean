import Pop.Arch.PTX_MCA
namespace PTX_MCA
namespace Litmus

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_3_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_ALL_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_ALL_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_ALL_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_ALL_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_ALL_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_ALL_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_ALL_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_ALL_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_ALL_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_ALL_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_ALL_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_ALL_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_ALL_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_ALL_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_ALL_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_ALL_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_ALL_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_ALL_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_ALL_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_ALL_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_ALL_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_ALL_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_ALL_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_ALL_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_ALL_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_ALL_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_acq z // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.sys_rlx x=1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.sys_rlx x=1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx z=1 || R.sys_rlx z // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_ALL_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_ALL_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_acq z // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.gpu_rlx x=1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.gpu_rlx x=1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx z=1 || R.gpu_rlx z // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_ALL_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_ALL_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_ALL_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_1_FENCE := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_acq z // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_ACQ := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_0_2_FENCE_REL := W.cta_rlx x=1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus isa2_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_2_FENCE := W.cta_rlx x=1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx z=1 || R.cta_rlx z // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus paper_example_DEFAULT_DEFAULT_NO_FENCE_DEFAULT := Fence.gpu_sc; W.gpu_rel x=1; W.gpu_rel z=1 || R.gpu_acq z // 1; W.gpu_rel y=1; Fence.gpu_sc; R.gpu_rlx y // 2 || Fence.gpu_sc; W.gpu_rel y=2; W.gpu_rel a=1 || R.gpu_acq a // 1; R.gpu_acq x // 0; Fence.gpu_sc
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_NO_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_NO_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_NO_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_NO_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_NO_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_NO_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_NO_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_NO_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_NO_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_NO_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_NO_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_NO_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_NO_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_NO_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.gpu_sc; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_sc y=1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; R.sys_rlx y // 0 || W.sys_rlx y=1;  R.sys_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.sys_rlx x=1 || R.sys_acq x // 1;  R.sys_rlx y // 0 || W.sys_rlx y=1; Fence.cta_sc; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_NO_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_NO_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.sys_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.gpu_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_sc y=1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; R.gpu_rlx y // 0 || W.gpu_rlx y=1;  R.gpu_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  R.gpu_rlx y // 0 || W.gpu_rlx y=1; Fence.cta_sc; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_NO_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_NO_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.sys_sc; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.gpu_sc; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_STORE_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_sc y=1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_LOAD_SC := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; R.cta_rlx y // 0 || W.cta_rlx y=1;  R.cta_sc x // 0
 where sys := {{T0, T1, T2}}

deflitmus rwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE := W.cta_rlx x=1 || R.cta_acq x // 1;  R.cta_rlx y // 0 || W.cta_rlx y=1; Fence.cta_sc; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T1}, {T0, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=1 || R.sys_rlx x // 1; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=1 || R.sys_acq x // 1;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=1 || R.sys_rlx x // 1;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=1 || R.gpu_rlx x // 1; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=1 || R.gpu_acq x // 1;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=1 || R.gpu_rlx x // 1;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=1 || R.cta_rlx x // 1; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=1 || R.cta_acq x // 1;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=1 || R.cta_rlx x // 1;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_NO_FENCE_RELEASE := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.sys_rlx y=2; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_NO_FENCE_RELEASE := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.gpu_rlx y=2; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_NO_FENCE_RELEASE := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wrw_2w_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1; Fence.sys_sc; R.sys_rlx y // 2 || W.cta_rlx y=2; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_ACQ_REL := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_ACQ_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_REL_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_NO_FENCE_REL_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_ACQ_REL := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_ACQ_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_REL_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_NO_FENCE_REL_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_ACQ_REL := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_ACQ_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_REL_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_NO_FENCE_REL_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_0_1_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_ACQ_REL := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_ACQ_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_REL_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_NO_FENCE_REL_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_NO_FENCE_ACQ_REL := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_NO_FENCE_ACQ_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_NO_FENCE_REL_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_NO_FENCE_REL_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_NO_FENCE_ACQ_REL := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_NO_FENCE_ACQ_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_NO_FENCE_REL_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_NO_FENCE_REL_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_01_2_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1}, {T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_ACQ_REL := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_ACQ_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_REL_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_NO_FENCE_REL_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_NO_FENCE_ACQ_REL := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_NO_FENCE_ACQ_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_NO_FENCE_REL_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_NO_FENCE_REL_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_NO_FENCE_ACQ_REL := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_NO_FENCE_ACQ_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_NO_FENCE_REL_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_NO_FENCE_REL_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_1_02_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T1}, {T0, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_ACQ_REL := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_ACQ_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_REL_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_NO_FENCE_REL_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_NO_FENCE_ACQ_REL := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_NO_FENCE_ACQ_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_NO_FENCE_REL_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_NO_FENCE_REL_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_NO_FENCE_ACQ_REL := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_NO_FENCE_ACQ_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_NO_FENCE_REL_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_NO_FENCE_REL_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_0_12_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0}, {T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_NO_FENCE_ACQ_REL := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_NO_FENCE_ACQ_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_NO_FENCE_REL_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_NO_FENCE_REL_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.sys_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.sys_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.gpu_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.gpu_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_acq y // 1;  W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2; Fence.cta_acqrel; W.sys_rlx y=1 || R.sys_rlx y // 1;  W.sys_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.sys_rlx x=2 || R.sys_acq x // 2;  W.sys_rlx y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_SYSTEM_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.sys_rlx x=2 || R.sys_rlx x // 2;  W.sys_rel y=1 || R.sys_rlx y // 1; Fence.cta_acqrel; W.sys_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_NO_FENCE_ACQ_REL := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_NO_FENCE_ACQ_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_NO_FENCE_REL_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_NO_FENCE_REL_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.sys_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.sys_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.gpu_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.gpu_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_acq y // 1;  W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2; Fence.cta_acqrel; W.gpu_rlx y=1 || R.gpu_rlx y // 1;  W.gpu_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.gpu_rlx x=2 || R.gpu_acq x // 2;  W.gpu_rlx y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_DEVICE_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.gpu_rlx x=2 || R.gpu_rlx x // 2;  W.gpu_rel y=1 || R.gpu_rlx y // 1; Fence.cta_acqrel; W.gpu_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_NO_FENCE_ACQ_REL := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_NO_FENCE_ACQ_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_NO_FENCE_REL_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_NO_FENCE_REL_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.sys_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_SYSTEM_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.sys_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.gpu_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_DEVICE_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.gpu_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_BOTH_FENCE := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_ACQ := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_acq y // 1;  W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_1_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2; Fence.cta_acqrel; W.cta_rlx y=1 || R.cta_rlx y // 1;  W.cta_rel x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_ACQ := W.cta_rlx x=2 || R.cta_acq x // 2;  W.cta_rlx y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

deflitmus wwc_TB_012_SCOPE_BLOCK_FENCE_SCOPE_BLOCK_THREAD_2_FENCE_REL := W.cta_rlx x=2 || R.cta_rlx x // 2;  W.cta_rel y=1 || R.cta_rlx y // 1; Fence.cta_acqrel; W.cta_rlx x=1; Fence.sys_sc; R.sys_rlx x // 2
 where sys := {{T0, T1, T2}}

def allTests : List Litmus.Test := litmusTests!

end Litmus
end PTX_MCA
