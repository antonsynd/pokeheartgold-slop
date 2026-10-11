	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0224093C

	.text

	thumb_func_start ov81_0224093C
ov81_0224093C: ; 0x0224093C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r2, [sp, #0x10]
	add r6, r3, #0
	bl sub_0203769C
	mov r1, #1
	sub r0, r1, r0
	bl sub_02034818
	add r7, r0, #0
	mov r0, #8
	mov r1, #0x64
	bl String_New
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r7, #0
	add r1, r4, #0
	bl PlayerName_FlatToString
	add r0, r7, #0
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _0224097C
	ldr r1, _022409AC ; =0x00070800
	b _02240980
_0224097C:
	mov r1, #0xc1
	lsl r1, r1, #0xa
_02240980:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022409AC: .word 0x00070800
	thumb_func_end ov81_0224093C

