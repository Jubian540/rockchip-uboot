#ifndef __GENERIC_ASM_OFFSETS_H__
#define __GENERIC_ASM_OFFSETS_H__
/*
 * DO NOT MODIFY.
 *
 * This file was generated by Kbuild
 *
 */

#define GENERATED_GBL_DATA_SIZE 448 /* (sizeof(struct global_data) + 15) & ~15	// */
#define GENERATED_BD_INFO_SIZE 304 /* (sizeof(struct bd_info) + 15) & ~15	// */
#define GD_SIZE 440 /* sizeof(struct global_data)	// */
#define GD_BD 0 /* offsetof(struct global_data, bd)	// */
#define GD_RELOCADDR 120 /* offsetof(struct global_data, relocaddr)	// */
#define GD_RELOC_OFF 160 /* offsetof(struct global_data, reloc_off)	// */
#define GD_START_ADDR_SP 152 /* offsetof(struct global_data, start_addr_sp)	// */
#define PM_CTX_SIZE 136 /* sizeof(struct pm_ctx)	// */
#define PM_CTX_PHYS 432 /* offsetof(struct global_data, pm_ctx_phys)	// */

#endif
