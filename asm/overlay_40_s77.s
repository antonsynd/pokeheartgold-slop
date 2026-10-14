	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222DF60

	.text

	.text
	thumb_func_start ov40_0222DF60
ov40_0222DF60: ; 0x0222DF60
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _0222DFA8 ; =0x000008A4
	add r5, r0, #0
	sub r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222DFA4
	ldr r0, [r5, #0x48]
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r5, r6
	mov r1, #0xcc
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222DFAC ; =0x000F0D0C
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, r6
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
_0222DFA4:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222DFA8: .word 0x000008A4
_0222DFAC: .word 0x000F0D0C
	thumb_func_end ov40_0222DF60

