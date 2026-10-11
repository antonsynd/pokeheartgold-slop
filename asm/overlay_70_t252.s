#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223FB60
	.extern ov70_02239C6C
	.extern ov70_02239CF8

	.text

	.text
	thumb_func_start ov70_0223FB60
ov70_0223FB60: ; 0x0223FB60
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #4]
	mov r0, #0x60
	mov r1, #0
	str r0, [sp]
	mov r0, #0x3d
	str r0, [sp, #4]
	mov r0, #0x64
	add r2, r1, #0
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPal
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3d
	bl LoadFontPal1
	ldr r0, [r5]
	ldr r0, [r0, #0x24]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3d
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl LoadUserFrameGfx2
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3d
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl LoadUserFrameGfx1
	ldr r0, _0223FBF0 ; =0x000011DC
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _0223FBD8
	mov r0, #4
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #5
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
_0223FBD8:
	ldr r0, [r5, #0x20]
	cmp r0, #9
	bne _0223FBEA
	add r0, r5, #0
	bl ov70_02239C6C
	add r0, r5, #0
	bl ov70_02239CF8
_0223FBEA:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223FBF0: .word 0x000011DC
	thumb_func_end ov70_0223FB60

