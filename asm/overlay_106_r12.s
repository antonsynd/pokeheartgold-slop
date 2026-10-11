#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5D70

	.text

	.text
	thumb_func_start ov106_021E5D70
ov106_021E5D70: ; 0x021E5D70
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x99
	bl Camera_New
	str r0, [r4, #0x18]
	mov r0, #0x99
	bl GF3dRender_InitSimpleManager
	ldr r2, _021E5DF0 ; =0x04000060
	ldr r0, _021E5DF4 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r1, #0
	ldr r2, _021E5DF8 ; =0x00007FFF
	str r1, [sp]
	mov r0, #0x1f
	mov r3, #0x3f
	bl G3X_SetClearColor
	ldr r2, [r4]
	ldrh r0, [r2, #0x24]
	ldrh r1, [r2, #0x26]
	ldr r2, [r2, #0x2c]
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r2, [r4]
	ldrh r0, [r2, #0x28]
	ldrh r1, [r2, #0x2a]
	ldr r2, [r2, #0x30]
	bl NNS_G3dGlbMaterialColorSpecEmi
	ldr r3, [r4]
	ldr r0, [r3, #0x44]
	str r0, [sp]
	ldr r0, [r3, #0x48]
	str r0, [sp, #4]
	ldr r0, [r3, #0x34]
	ldr r1, [r3, #0x38]
	ldr r2, [r3, #0x3c]
	ldr r3, [r3, #0x40]
	bl NNS_G3dGlbPolygonAttr
	mov r0, #0
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #8
	pop {r4, pc}
	nop
_021E5DF0: .word 0x04000060
_021E5DF4: .word 0xFFFFCFFF
_021E5DF8: .word 0x00007FFF
	thumb_func_end ov106_021E5D70

