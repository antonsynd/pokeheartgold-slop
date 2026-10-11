	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_022592A8
	.public ov90_022592C4
	.public ov90_02259350

	.text

	thumb_func_start ov90_022592A8
ov90_022592A8: ; 0x022592A8
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, _022592C0 ; =0x000F0E00
	str r4, [sp, #4]
	bl ov90_02259350
	add sp, #8
	pop {r4, pc}
	nop
_022592C0: .word 0x000F0E00
	thumb_func_end ov90_022592A8

	thumb_func_start ov90_022592C4
ov90_022592C4: ; 0x022592C4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [r5]
	ldr r2, [r5, #0xc]
	add r4, r3, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [r5, #8]
	add r2, r0, #0
	bl FontID_String_GetWidth
	sub r3, r4, r0
	bpl _022592F0
	mov r3, #0
_022592F0:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02259310 ; =0x000F0E00
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02259310: .word 0x000F0E00
	thumb_func_end ov90_022592C4

