import Pop.Arch.PTX_MCA
namespace PTX_MCA
namespace Litmus

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2}, {T3}}

deflitmus iriw_TB_0_1_2_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2}, {T3}}

deflitmus iriw_TB_01_2_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1}, {T3}}

deflitmus iriw_TB_02_1_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1}, {T2}}

deflitmus iriw_TB_03_1_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2}, {T3}}

deflitmus iriw_TB_0_12_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_012_3_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_012_3_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T1, T2}, {T3}}

deflitmus iriw_TB_012_3_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_03_12_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_03_12_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T3}, {T1, T2}}

deflitmus iriw_TB_03_12_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T3}, {T2}}

deflitmus iriw_TB_0_2_13_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_02_13_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_02_13_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T2}, {T1, T3}}

deflitmus iriw_TB_02_13_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_013_2_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_013_2_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T1, T3}, {T2}}

deflitmus iriw_TB_013_2_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0}, {T1}, {T2, T3}}

deflitmus iriw_TB_0_1_23_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_01_23_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_01_23_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T1}, {T2, T3}}

deflitmus iriw_TB_01_23_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_023_1_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_023_1_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T2, T3}, {T1}}

deflitmus iriw_TB_023_1_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_0_123_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_0_123_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0}, {T1, T2, T3}}

deflitmus iriw_TB_0_123_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

deflitmus iriw_TB_0123_SCOPE_SYSTEM_NO_FENCE_ACQUIRE := W.sys_rlx x=1 || R.sys_acq x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_acq y // 1; R.sys_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_SYSTEM_NO_FENCE_RELAXED := W.sys_rlx x=1 || R.sys_rlx x // 1; R.sys_rlx y // 0 || W.sys_rlx y=1 || R.sys_rlx y // 1; R.sys_rlx x // 0
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

deflitmus iriw_TB_0123_SCOPE_DEVICE_NO_FENCE_ACQUIRE := W.gpu_rlx x=1 || R.gpu_acq x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_acq y // 1; R.gpu_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_DEVICE_NO_FENCE_RELAXED := W.gpu_rlx x=1 || R.gpu_rlx x // 1; R.gpu_rlx y // 0 || W.gpu_rlx y=1 || R.gpu_rlx y // 1; R.gpu_rlx x // 0
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

deflitmus iriw_TB_0123_SCOPE_BLOCK_NO_FENCE_ACQUIRE := W.cta_rlx x=1 || R.cta_acq x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_acq y // 1; R.cta_rlx x // 0
 where sys := {{T0, T1, T2, T3}}

deflitmus iriw_TB_0123_SCOPE_BLOCK_NO_FENCE_RELAXED := W.cta_rlx x=1 || R.cta_rlx x // 1; R.cta_rlx y // 0 || W.cta_rlx y=1 || R.cta_rlx y // 1; R.cta_rlx x // 0
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

def allTests : List Litmus.Test := litmusTests!

end Litmus
end PTX_MCA
