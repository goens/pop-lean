-- Author(s): Andrés Goens
-- See Copyright Notice in LICENSE

import Pop.Arch.Compound
namespace Compound
namespace Litmus

hint for MP_writes_tso := [Accept (R y) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1, Propagate Request 5 to Thread 1, Propagate Request 2 to Thread 0, Satisfy Request 2 with Request 5]

hint for dekkers_tso := [Accept (W y = 1) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (R y) at Thread 0, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1, Propagate Request 5 to Thread 1, Satisfy Request 5 with Request 1, Propagate Request 2 to Thread 0]

hint for dekkers_mix := [Accept (W y = 1) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (R y) at Thread 0, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1, Propagate Request 5 to Thread 1, Satisfy Request 5 with Request 1, Propagate Request 2 to Thread 0]

hint for MP_writes_tso_ptx_acq_cta := [Accept (R.cta_acq y) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1, Propagate Request 5 to Thread 1, Propagate Request 2 to Thread 0, Satisfy Request 2 with Request 5]

hint for dekkers_ptx := [Accept (W y = 1) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (R y) at Thread 0, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1, Propagate Request 5 to Thread 1, Satisfy Request 5 with Request 1, Propagate Request 2 to Thread 0]

hint for MP_writes_ptx_rel_cta := [Accept (R y) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W.cta_rel y = 1) at Thread 0, Propagate Request 5 to Thread 1, Propagate Request 2 to Thread 0, Satisfy Request 2 with Request 5, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1]

hint for MP_ptx := [Accept (R y) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1, Propagate Request 5 to Thread 1, Propagate Request 2 to Thread 0, Satisfy Request 2 with Request 5]

hint for MP_writes_ptx := [Accept (R y) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 5 to Thread 1, Propagate Request 2 to Thread 0, Satisfy Request 2 with Request 5, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1]

hint for dekkers_mix_only_ptx_fence := [Accept (W y = 1) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (Fence.sys_sc) at Thread 0, Accept (R y) at Thread 0, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1, Propagate Request 6 to Thread 1, Satisfy Request 6 with Request 1, Propagate Request 2 to Thread 0]

hint for MP_writes_ptx_rel_cta_fence := [Accept (R y) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (Fence.cta_rel) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 6 to Thread 1, Propagate Request 2 to Thread 0, Satisfy Request 2 with Request 6, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 0, Propagate Request 4 to Thread 1]

hint for MP_writes_tso_ptx_acq_cta_fence := [Accept (R y) at Thread 1, Accept (Fence.cta_acq) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 4 to Thread 0, Satisfy Request 4 with Request 0, Propagate Request 5 to Thread 1, Propagate Request 6 to Thread 1, Propagate Request 2 to Thread 0, Satisfy Request 2 with Request 6]

hint for dekkers_mix_only_tso_fence := [Accept (W y = 1) at Thread 1, Accept (Fence) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (R y) at Thread 0, Propagate Request 6 to Thread 1, Satisfy Request 6 with Request 1, Propagate Request 2 to Thread 0, Propagate Request 4 to Thread 0, Satisfy Request 4 with Request 0, Propagate Request 5 to Thread 1]

hint for dekkers_mix_only_cta_fence := [Accept (W y = 1) at Thread 1, Accept (Fence) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (Fence.cta_sc) at Thread 0, Accept (R y) at Thread 0, Propagate Request 7 to Thread 1, Satisfy Request 7 with Request 1, Propagate Request 2 to Thread 0, Propagate Request 4 to Thread 0, Satisfy Request 4 with Request 0, Propagate Request 5 to Thread 1]

hint for WRC_middle_ptx_acqrel := [Accept (R y) at Thread 2, Accept (R x) at Thread 2, Accept (R.sys_acq x) at Thread 1, Accept (W.sys_rel y = 1) at Thread 1, Accept (W x = 1) at Thread 0, Propagate Request 2 to Thread 0, Propagate Request 4 to Thread 2, Propagate Request 6 to Thread 1, Propagate Request 4 to Thread 0, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 2 to Thread 1, Satisfy Request 2 with Request 5, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 0, Propagate Request 6 to Thread 2, Satisfy Request 4 with Request 6]

hint for WRC_middle_tso_acq := [Accept (R.sys_acq y) at Thread 2, Accept (R x) at Thread 2, Accept (R x) at Thread 1, Accept (W y = 1) at Thread 1, Accept (W x = 1) at Thread 0, Propagate Request 2 to Thread 0, Propagate Request 6 to Thread 1, Propagate Request 4 to Thread 0, Satisfy Request 4 with Request 6, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 2 to Thread 1, Satisfy Request 2 with Request 5, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 0, Propagate Request 6 to Thread 2]

hint for WRC_middle_ptx_acqrel_cta := [Accept (R y) at Thread 2, Accept (R x) at Thread 2, Accept (R.cta_acq x) at Thread 1, Accept (W.cta_rel y = 1) at Thread 1, Accept (W x = 1) at Thread 0, Propagate Request 2 to Thread 0, Propagate Request 4 to Thread 2, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 2 to Thread 1, Satisfy Request 2 with Request 5, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 0, Propagate Request 6 to Thread 1, Propagate Request 4 to Thread 0, Propagate Request 6 to Thread 2, Satisfy Request 4 with Request 6]

hint for WRC_ptx_reader_acq := [Accept (R.sys_acq y) at Thread 2, Accept (R x) at Thread 2, Accept (R x) at Thread 1, Accept (W y = 1) at Thread 1, Accept (W x = 1) at Thread 0, Propagate Request 2 to Thread 0, Propagate Request 6 to Thread 1, Propagate Request 4 to Thread 0, Satisfy Request 4 with Request 6, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 2 to Thread 1, Satisfy Request 2 with Request 5, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 0, Propagate Request 6 to Thread 2]

hint for ISA2_right_ptx := [Accept (R z) at Thread 2, Accept (R x) at Thread 2, Accept (R y) at Thread 1, Accept (W z = 1) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 1, Satisfy Request 4 with Request 0, Propagate Request 7 to Thread 1, Propagate Request 7 to Thread 2, Propagate Request 8 to Thread 1, Propagate Request 8 to Thread 2, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Satisfy Request 5 with Request 8, Propagate Request 6 to Thread 0, Propagate Request 6 to Thread 2, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 6]

hint for WRC_ptx_reader_dep := [Accept (R y) at Thread 2, Accept (R x) at Thread 1, Accept (W y = 1) at Thread 1, Accept (W x = 1) at Thread 0, Propagate Request 2 to Thread 0, Propagate Request 5 to Thread 1, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 5, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 2, Propagate Request 2 to Thread 1, Satisfy Request 2 with Request 4, Accept (R x) at Thread 2, Propagate Request 6 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 6 to Thread 1, Satisfy Request 6 with Request 0]

hint for ISA2_right_ptx_acq_cta := [Accept (R.cta_acq z) at Thread 2, Accept (R x) at Thread 2, Accept (R y) at Thread 1, Accept (W z = 1) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 1, Satisfy Request 4 with Request 0, Propagate Request 7 to Thread 1, Propagate Request 7 to Thread 2, Propagate Request 8 to Thread 1, Propagate Request 8 to Thread 2, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Satisfy Request 5 with Request 8, Propagate Request 6 to Thread 0, Propagate Request 6 to Thread 2, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 6]

hint for WRC_middle_ptx_acqrel_cta_fence := [Accept (R y) at Thread 2, Accept (R x) at Thread 2, Accept (R x) at Thread 1, Accept (Fence.cta_acqrel) at Thread 1, Accept (W y = 1) at Thread 1, Accept (W x = 1) at Thread 0, Propagate Request 2 to Thread 0, Propagate Request 4 to Thread 2, Propagate Request 6 to Thread 0, Propagate Request 6 to Thread 2, Propagate Request 2 to Thread 1, Satisfy Request 2 with Request 6, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 0, Propagate Request 7 to Thread 1, Propagate Request 4 to Thread 0, Propagate Request 7 to Thread 2, Satisfy Request 4 with Request 7]

hint for WRC_middle_tso_dep := [Accept (R y) at Thread 2, Accept (R x) at Thread 1, Accept (W y = 1) at Thread 1, Accept (W x = 1) at Thread 0, Propagate Request 2 to Thread 0, Propagate Request 5 to Thread 1, Propagate Request 3 to Thread 0, Satisfy Request 3 with Request 5, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 2, Propagate Request 2 to Thread 1, Satisfy Request 2 with Request 4, Accept (R x) at Thread 2, Propagate Request 6 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 6 to Thread 1, Satisfy Request 6 with Request 0]

hint for ISA2_middle_ptx := [Accept (R z) at Thread 2, Accept (R x) at Thread 2, Accept (R y) at Thread 1, Accept (W z = 1) at Thread 1, Accept (W x = 1) at Thread 0, Accept (W y = 1) at Thread 0, Propagate Request 3 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 6 to Thread 0, Propagate Request 6 to Thread 2, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 6, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 1, Satisfy Request 4 with Request 0, Propagate Request 7 to Thread 1, Propagate Request 7 to Thread 2, Propagate Request 8 to Thread 1, Propagate Request 5 to Thread 0, Propagate Request 8 to Thread 2, Satisfy Request 5 with Request 8]

hint for IRIW_ptx := [Accept (R y) at Thread 2, Accept (R x) at Thread 2, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Propagate Request 3 to Thread 3, Satisfy Request 3 with Request 0, Accept (R x) at Thread 1, Accept (R y) at Thread 1, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 5 to Thread 3, Satisfy Request 5 with Request 1, Accept (W y = 1) at Thread 3, Accept (W x = 1) at Thread 0, Propagate Request 6 to Thread 0, Propagate Request 6 to Thread 1, Propagate Request 6 to Thread 2, Propagate Request 7 to Thread 1, Propagate Request 7 to Thread 2, Propagate Request 7 to Thread 3, Propagate Request 2 to Thread 0, Propagate Request 2 to Thread 1, Propagate Request 2 to Thread 3, Satisfy Request 2 with Request 6, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 2, Propagate Request 4 to Thread 3, Satisfy Request 4 with Request 7]

hint for IRIW_tso_left_ptx_right := [Accept (R y) at Thread 2, Accept (R x) at Thread 2, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Propagate Request 3 to Thread 3, Satisfy Request 3 with Request 0, Accept (R x) at Thread 1, Accept (R y) at Thread 1, Accept (W y = 1) at Thread 3, Accept (W x = 1) at Thread 0, Propagate Request 7 to Thread 1, Propagate Request 6 to Thread 2, Propagate Request 2 to Thread 3, Satisfy Request 2 with Request 6, Propagate Request 7 to Thread 2, Propagate Request 7 to Thread 3, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 2, Propagate Request 4 to Thread 3, Satisfy Request 4 with Request 7, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 5 to Thread 3, Satisfy Request 5 with Request 1, Propagate Request 6 to Thread 0, Propagate Request 6 to Thread 1]

hint for IRIW_ptx_reads_tso_writes := [Accept (R y) at Thread 2, Accept (R x) at Thread 2, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Propagate Request 3 to Thread 3, Satisfy Request 3 with Request 0, Accept (R x) at Thread 1, Accept (R y) at Thread 1, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 5 to Thread 3, Satisfy Request 5 with Request 1, Accept (W y = 1) at Thread 3, Accept (W x = 1) at Thread 0, Propagate Request 6 to Thread 0, Propagate Request 6 to Thread 1, Propagate Request 6 to Thread 2, Propagate Request 7 to Thread 1, Propagate Request 7 to Thread 2, Propagate Request 7 to Thread 3, Propagate Request 2 to Thread 0, Propagate Request 2 to Thread 1, Propagate Request 2 to Thread 3, Satisfy Request 2 with Request 6, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 2, Propagate Request 4 to Thread 3, Satisfy Request 4 with Request 7]

hint for IRIW_tso_one_read_ptx_writes := [Accept (W y = 1) at Thread 3, Accept (R y) at Thread 2, Accept (W x = 1) at Thread 0, Accept (R x) at Thread 1, Propagate Request 4 to Thread 1, Propagate Request 2 to Thread 2, Accept (R x) at Thread 2, Accept (R y) at Thread 1, Propagate Request 5 to Thread 0, Satisfy Request 5 with Request 4, Propagate Request 7 to Thread 0, Propagate Request 7 to Thread 2, Propagate Request 7 to Thread 3, Satisfy Request 7 with Request 1, Propagate Request 2 to Thread 0, Propagate Request 2 to Thread 1, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Propagate Request 3 to Thread 3, Satisfy Request 3 with Request 2, Propagate Request 6 to Thread 0, Propagate Request 6 to Thread 3, Propagate Request 6 to Thread 1, Satisfy Request 6 with Request 0, Propagate Request 4 to Thread 2, Propagate Request 4 to Thread 3]

hint for IRIW_tso_left_ptx_right_fenceacqrel := [Accept (W y = 1) at Thread 3, Accept (R y) at Thread 2, Accept (W x = 1) at Thread 0, Accept (R x) at Thread 1, Propagate Request 4 to Thread 1, Propagate Request 2 to Thread 2, Propagate Request 3 to Thread 3, Satisfy Request 3 with Request 2, Accept (Fence.sys_acqrel) at Thread 2, Accept (R y) at Thread 1, Accept (R x) at Thread 2, Propagate Request 8 to Thread 0, Propagate Request 8 to Thread 1, Propagate Request 8 to Thread 3, Satisfy Request 8 with Request 0, Propagate Request 4 to Thread 2, Propagate Request 4 to Thread 3, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 5 to Thread 3, Satisfy Request 5 with Request 4, Propagate Request 7 to Thread 0, Propagate Request 7 to Thread 2, Propagate Request 7 to Thread 3, Satisfy Request 7 with Request 1, Propagate Request 2 to Thread 0, Propagate Request 2 to Thread 1]

hint for IRIW_tso_fence_left_ptx_right_fenceacqrel := [Accept (W y = 1) at Thread 3, Accept (R y) at Thread 2, Accept (W x = 1) at Thread 0, Accept (R x) at Thread 1, Propagate Request 4 to Thread 1, Propagate Request 2 to Thread 2, Propagate Request 3 to Thread 3, Satisfy Request 3 with Request 2, Accept (Fence.sys_acqrel) at Thread 2, Accept (R x) at Thread 2, Propagate Request 7 to Thread 0, Propagate Request 7 to Thread 1, Propagate Request 7 to Thread 3, Satisfy Request 7 with Request 0, Accept (Fence) at Thread 1, Accept (R y) at Thread 1, Propagate Request 4 to Thread 2, Propagate Request 4 to Thread 3, Propagate Request 5 to Thread 0, Propagate Request 5 to Thread 2, Propagate Request 5 to Thread 3, Satisfy Request 5 with Request 4, Propagate Request 9 to Thread 0, Propagate Request 9 to Thread 2, Propagate Request 9 to Thread 3, Satisfy Request 9 with Request 1, Propagate Request 2 to Thread 0, Propagate Request 2 to Thread 1]

hint for WRC_middle_ptx_acqrel_fence := [Accept (R y) at Thread 2, Accept (R x) at Thread 2, Accept (R x) at Thread 1, Accept (Fence.sys_acqrel) at Thread 1, Accept (W y = 1) at Thread 1, Accept (W x = 1) at Thread 0, Propagate Request 7 to Thread 1, Propagate Request 4 to Thread 0, Satisfy Request 4 with Request 7, Propagate Request 6 to Thread 2, Propagate Request 6 to Thread 0, Propagate Request 2 to Thread 1, Propagate Request 2 to Thread 0, Satisfy Request 2 with Request 6, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 1, Satisfy Request 3 with Request 0, Propagate Request 7 to Thread 2]

hint for dekkers_tso_ptx_dont_care := [Accept (Fence.sys_sc) at Thread 2, Accept (W y = 1) at Thread 1, Accept (R x) at Thread 1, Accept (W x = 1) at Thread 0, Accept (R y) at Thread 0, Propagate Request 6 to Thread 1, Propagate Request 6 to Thread 2, Propagate Request 4 to Thread 0, Propagate Request 4 to Thread 2, Satisfy Request 4 with Request 0, Satisfy Request 6 with Request 1, Propagate Request 3 to Thread 0, Propagate Request 3 to Thread 2, Propagate Request 5 to Thread 1, Propagate Request 5 to Thread 2]

end Litmus
namespace Compound
