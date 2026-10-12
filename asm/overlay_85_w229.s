	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E9EC0
	.extern ov85_021EA010

	.text

	.text
	thumb_func_start ov85_021E9EC0
ov85_021E9EC0: ; 0x021E9EC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r3, [sp, #0x14]
	add r6, r0, #0
	str r2, [sp, #0x10]
	bl sub_0203769C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl ov85_021EA010
	cmp r0, #0
	bne _021E9EE0
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E9EE0:
	add r0, r6, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r7, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
	add r4, r7, #0
	mov r5, #1
_021E9EF2:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021E9FAC
	bl PlayerProfile_GetTrainerID_VisibleHalf
	str r0, [sp, #0x24]
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [r4, #0x3c]
	bl PlayerName_FlatToString
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x24]
	ldr r0, [r0, #0x34]
	mov r1, #0
	mov r3, #5
	bl BufferIntegerAsString
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0x34]
	ldr r1, [r1, #0x38]
	mov r2, #1
	mov r3, #0x66
	bl ReadMsgData_ExpandPlaceholders
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	str r5, [sp]
	bne _021E9F74
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E9FC8 ; =0x00020300
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x3c]
	add r0, r6, #0
	mov r3, #5
	bl AddTextPrinterParameterizedWithColor
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E9FC8 ; =0x00020300
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x46
	bl AddTextPrinterParameterizedWithColor
	b _021E9FA6
_021E9F74:
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x3c]
	add r0, r6, #0
	mov r3, #5
	bl AddTextPrinterParameterizedWithColor
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x46
	bl AddTextPrinterParameterizedWithColor
_021E9FA6:
	ldr r0, [sp, #0x18]
	bl String_Delete
_021E9FAC:
	ldr r0, [sp, #0x20]
	add r7, #8
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x12
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _021E9EF2
	add r0, r6, #0
	bl CopyWindowToVram
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9FC8: .word 0x00020300
	thumb_func_end ov85_021E9EC0

