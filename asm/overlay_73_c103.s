#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E82D4
	.extern ov73_021E82A8
	.extern ov73_021EA684

	.text

	.text
	thumb_func_start ov73_021E82D4
ov73_021E82D4: ; 0x021E82D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _021E8384 ; =0x00000D24
	str r1, [sp, #0x10]
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r2, #0x40
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r5, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl CreateSpriteResourcesHeader
	ldr r2, _021E8388 ; =0x00000D64
	add r0, sp, #0x2c
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #1
	bl ov73_021E82A8
	mov r7, #0xdd
	ldr r4, _021E838C ; =ov73_021EA684
	mov r6, #0
	lsl r7, r7, #4
_021E832A:
	ldrh r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0xdd
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0xdd
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, r7]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _021E832A
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	bl sub_0203A880
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E8384: .word 0x00000D24
_021E8388: .word 0x00000D64
_021E838C: .word ov73_021EA684
	thumb_func_end ov73_021E82D4

