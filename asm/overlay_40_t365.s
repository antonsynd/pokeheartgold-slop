	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223DD68

	.text

	.text
	thumb_func_start ov40_0223DD68
ov40_0223DD68: ; 0x0223DD68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r7, _0223DDDC ; =0x00000654
	add r6, r1, #0
	add r0, r4, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _0223DDE0 ; =0x0000FFFF
	cmp r6, r0
	bne _0223DD94
	ldr r0, [r5, #0x48]
	mov r1, #0x7d
	bl NewString_ReadMsgData
	add r5, r0, #0
	b _0223DDB0
_0223DD94:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x6d
	add r2, sp, #0x10
	bl GetSpeciesNameIntoArray
	add r0, r5, #0
	add r1, sp, #0x10
	bl CopyU16ArrayToString
_0223DDB0:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223DDE4 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl String_Delete
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DDDC: .word 0x00000654
_0223DDE0: .word 0x0000FFFF
_0223DDE4: .word 0x000F0D00
	thumb_func_end ov40_0223DD68

