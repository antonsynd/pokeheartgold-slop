	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022386D0
	.public ov59_02238768
	.public ov59_022387D0
	.public ov59_022388C4
	.public ov59_0223892C
	.public ov59_02238C24
	.public ov59_02238C40

	.text

	thumb_func_start ov59_022386D0
ov59_022386D0: ; 0x022386D0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r1, #0
	bl ov59_022387D0
	add r0, r4, #0
	bl ov59_022388C4
	ldr r0, [r4, #0x5c]
	ldr r2, [r4, #0x64]
	mov r1, #0
	bl ReadMsgDataIntoString
	mov r0, #0
	ldr r1, [r4, #0x64]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r5, #0x50
	sub r5, r5, r3
	lsr r3, r5, #0x1f
	add r3, r5, r3
	ldr r0, _02238764 ; =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r2, [r4, #0x64]
	add r0, r4, r0
	asr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	mov r5, #0
_0223871E:
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov59_0223892C
	add r5, r5, #1
	cmp r5, #7
	blt _0223871E
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _02238758
	cmp r0, #1
	beq _02238742
	cmp r0, #2
	beq _0223874C
	b _02238758
_02238742:
	add r0, r4, #0
	bl ov59_02238C24
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0223874C:
	add r0, r4, #0
	mov r1, #0xa
	bl ov59_02238C40
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02238758:
	add r0, r4, #0
	mov r1, #0
	bl ov59_02238C40
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02238764: .word 0x000F0200
	thumb_func_end ov59_022386D0

	thumb_func_start ov59_02238768
ov59_02238768: ; 0x02238768
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_02031C08
	strb r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	bl sub_02031CE8
	strb r0, [r5, #0x14]
	add r2, r5, #0
	ldr r0, [r5, #0x10]
	mov r1, #8
	add r2, #0x22
	bl sub_02031CEC
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	strb r0, [r5, #0x16]
	add r0, r5, #0
	add r0, #0x22
	bl sub_02031FE8
	strb r0, [r5, #0x17]
	add r0, r5, #0
	add r0, #0x22
	bl sub_02031D80
	strb r0, [r5, #0x15]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x22
	add r1, #0x2a
	bl sub_02031DA0
	ldr r0, [r5, #0x10]
	bl sub_02031CA0
	strb r0, [r5, #0x19]
	mov r4, #0
_022387BA:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl ApricornBox_CountApricorn
	add r1, r5, r4
	add r4, r4, #1
	strb r0, [r1, #0x1a]
	cmp r4, #7
	blt _022387BA
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov59_02238768

