	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02243E30
	.extern ov83_0224442C

    .text

	.text
	thumb_func_start ov83_02243E30
ov83_02243E30: ; 0x02243E30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02243F80 ; =0x00000604
	str r0, [sp]
	add r0, r0, r1
	bl ov83_02247858
	ldr r1, _02243F84 ; =0x000005F4
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl ov83_02247CC4
	mov r1, #0x5f
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov83_02247A18
	ldr r1, _02243F88 ; =0x00000508
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl ov83_0224753C
	ldr r1, _02243F8C ; =0x0000050C
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl ov83_0224753C
	mov r1, #0x15
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bl ov83_0224753C
	ldr r1, _02243F90 ; =0x00000544
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl ov83_0224753C
	mov r0, #0
	mov r6, #0x52
	ldr r7, [sp]
	str r0, [sp, #4]
	lsl r6, r6, #4
_02243E88:
	mov r4, #0
	add r5, r7, #0
_02243E8C:
	ldr r0, [r5, r6]
	bl ov83_0224753C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02243E8C
	ldr r0, [sp, #4]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02243E88
	ldr r0, [sp]
	mov r1, #1
	ldrb r0, [r0, #9]
	bl ov80_02237B58
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _02243EDC
	mov r7, #0x51
	ldr r4, [sp]
	lsl r7, r7, #4
_02243EBE:
	ldr r0, _02243F94 ; =0x000004F4
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _02243F98 ; =0x000004E4
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, [r4, r7]
	bl ov83_0224753C
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _02243EBE
_02243EDC:
	bl sub_0203A914
	mov r1, #0x2b
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #2
	bl PaletteData_FreeBuffers
	mov r1, #0x2b
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	bl PaletteData_FreeBuffers
	mov r1, #0x2b
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl PaletteData_Free
	mov r1, #0x2b
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r1, #4
	str r2, [r0, r1]
	add r1, #0x18
	add r0, r0, r1
	bl ov83_022471FC
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	bl DestroyMsgData
	ldr r0, [sp]
	ldr r0, [r0, #0x24]
	bl MessageFormat_Delete
	ldr r0, [sp]
	ldr r0, [r0, #0x28]
	bl String_Delete
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl String_Delete
	mov r1, #0xad
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl MessagePrinter_Delete
	mov r0, #4
	bl FontID_Release
	ldr r4, [sp]
	mov r5, #0
_02243F50:
	ldr r0, [r4, #0x30]
	bl String_Delete
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02243F50
	ldr r0, [sp]
	mov r1, #1
	add r0, #0x50
	bl ov83_0224791C
	ldr r0, [sp]
	ldr r0, [r0, #0x4c]
	bl ov83_0224442C
	mov r1, #0x56
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl NARC_Delete
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02243F80: .word 0x00000604
_02243F84: .word 0x000005F4
_02243F88: .word 0x00000508
_02243F8C: .word 0x0000050C
_02243F90: .word 0x00000544
_02243F94: .word 0x000004F4
_02243F98: .word 0x000004E4
	thumb_func_end ov83_02243E30

