	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E756C

	.text

	.text
	thumb_func_start ov108_021E756C
ov108_021E756C: ; 0x021E756C
	push {r4, r5, r6, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, _021E7648 ; =0x000004A4
	ldr r1, [r5]
	add r0, r5, r0
	bl sub_02013910
	mov r1, #0x3a
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02013948
	add r6, r0, #0
	ldr r0, _021E7648 ; =0x000004A4
	add r0, r5, r0
	bl GetWindowWidth
	mov r1, #0x31
	lsl r1, r1, #4
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r1, r4, #3
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	mov r2, #0x31
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E764C ; =0x000B0600
	lsl r2, r2, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _021E7648 ; =0x000004A4
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl AddTextPrinterParameterizedWithColor
	mov r1, #0xe7
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0x4c
	str r0, [sp, #0x10]
	ldr r0, _021E7648 ; =0x000004A4
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x18]
	mov r0, #0x35
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl SpriteManager_FindPlttResourceProxy
	str r0, [sp, #0x1c]
	mov r0, #3
	str r0, [sp, #0x30]
	mov r0, #0x80
	str r0, [sp, #0x34]
	mov r0, #0xc8
	mov r2, #1
	str r0, [sp, #0x28]
	mov r0, #0xac
	mov r3, #0xea
	lsl r3, r3, #2
	str r2, [sp, #0x38]
	str r0, [sp, #0x2c]
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #0x3c]
	add r0, r6, #0
	add r3, r5, r3
	bl sub_02021AC8
	mov r1, #0xeb
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0xc
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r1, [r5, r1]
	add r0, sp, #0x10
	bl TextOBJ_Create
	mov r1, #0xe9
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	mov r0, #0xe9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	bl TextOBJ_SetPaletteNum
	add sp, #0x40
	pop {r4, r5, r6, pc}
	nop
_021E7648: .word 0x000004A4
_021E764C: .word 0x000B0600
	thumb_func_end ov108_021E756C

