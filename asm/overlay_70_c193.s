#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223CD28
	.public ov70_0223CD44
	.extern ov70_0223CE44
	.extern ov70_0223CF74
	.extern ov70_0223D058
	.extern ov70_0223D26C
	.extern ov70_0223D3BC
	.extern ov70_0223E264
	.extern ov70_02241358
	.extern ov70_02245124

	.text

	.text
	thumb_func_start ov70_0223CD28
ov70_0223CD28: ; 0x0223CD28
	push {r3, lr}
	add r2, r0, #0
	ldr r0, _0223CD40 ; =0x04000050
	beq _0223CD38
	mov r1, #0xa
	bl G2x_SetBlendBrightness_
	pop {r3, pc}
_0223CD38:
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	nop
_0223CD40: .word 0x04000050
	thumb_func_end ov70_0223CD28

	thumb_func_start ov70_0223CD44
ov70_0223CD44: ; 0x0223CD44
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov70_0223D3BC
	ldr r2, _0223CDCC ; =0x04000304
	ldr r0, _0223CDD0 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, [r4, #4]
	bl ov70_0223CE44
	add r0, r4, #0
	bl ov70_0223CF74
	add r0, r4, #0
	bl ov70_0223D26C
	add r0, r4, #0
	bl ov70_0223D058
	add r0, r4, #0
	bl ov70_02241358
	ldr r0, _0223CDD4 ; =0x0400106C
	bl GXx_GetMasterBrightness_
	cmp r0, #0
	bne _0223CD98
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	b _0223CDAE
_0223CD98:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
_0223CDAE:
	mov r1, #0x12
	lsl r1, r1, #4
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov70_0223E264
	add r0, r4, #0
	bl ov70_02245124
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223CDCC: .word 0x04000304
_0223CDD0: .word 0xFFFF7FFF
_0223CDD4: .word 0x0400106C
	thumb_func_end ov70_0223CD44

