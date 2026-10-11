	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222E7F0
	.extern ov40_0222DAB0

	.text

	.text
	thumb_func_start ov40_0222E7F0
ov40_0222E7F0: ; 0x0222E7F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0222E8BC ; =0x0000088C
	add r4, r1, #0
	ldr r0, [r4, r0]
	bl sub_02031620
	str r0, [sp, #0x10]
	ldr r0, _0222E8BC ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_0203162C
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	add r5, #0x18
	cmp r0, #0
	bne _0222E824
	cmp r6, #0
	bne _0222E824
	ldr r0, [r4, #0x48]
	mov r1, #0x7d
	bl NewString_ReadMsgData
	str r0, [sp, #0x14]
	b _0222E890
_0222E824:
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r7, r0, #0
	cmp r6, #0
	beq _0222E85C
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x48]
	mov r1, #0x17
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0
	add r3, r6, #0
	bl BufferCityName
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	b _0222E884
_0222E85C:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x48]
	mov r1, #0x16
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0
	bl BufferCountryName
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
_0222E884:
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #0
	bl MessageFormat_Delete
_0222E890:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E8C0 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x14]
	bl String_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E8BC: .word 0x0000088C
_0222E8C0: .word 0x000F0D00
	thumb_func_end ov40_0222E7F0

