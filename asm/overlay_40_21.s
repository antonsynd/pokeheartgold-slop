	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D66C

	.text

	thumb_func_start ov40_0222D66C
ov40_0222D66C: ; 0x0222D66C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r2, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, sp, #0x10
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r1, sp, #0x10
	mov r2, #0x14
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222D6CC ; =0x000E0D00
	add r2, r6, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, sp, #0x10
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	add r2, sp, #0x10
	mov r3, #0x6d
	bl TextOBJ_CopyFromBGWindow
	add r0, r6, #0
	bl String_Delete
	add r0, sp, #0x10
	bl RemoveWindow
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_0222D6CC: .word 0x000E0D00
	thumb_func_end ov40_0222D66C

