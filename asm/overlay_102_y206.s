	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBF38
	.public ov102_021EBFA0
	.extern ov102_021E8FD8
	.extern ov102_021EC090
	.extern ov102_021EC13C
	.extern ov102_021EC298

	.text

	.text
	thumb_func_start ov102_021EBF38
ov102_021EBF38: ; 0x021EBF38
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021EBF6A
	mov r0, #0xe
	lsl r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r0, [r4, #0x30]
	mov r1, #0x10
	bl Sprite_SetAnimCtrlSeq
	add sp, #0xc
	pop {r3, r4, pc}
_021EBF6A:
	add r2, r1, #0
	mov r0, #1
	and r2, r0
	mov r0, #0x70
	mul r0, r2
	add r0, #0x48
	lsl r0, r0, #0xc
	str r0, [sp]
	lsr r1, r1, #1
	mov r0, #0x18
	mul r0, r1
	add r0, #0x38
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r0, [r4, #0x30]
	mov r1, #8
	bl Sprite_SetAnimCtrlSeq
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBF38

	thumb_func_start ov102_021EBFA0
ov102_021EBFA0: ; 0x021EBFA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r6, r0, #0
	bl ov102_021EC090
	lsl r0, r4, #1
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x90
	ldr r7, [r0]
	ldr r0, [sp, #8]
	add r0, r7, r0
	str r0, [sp, #0x14]
	mov r0, #0x18
	mul r0, r4
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	add r1, r0, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x18]
	cmp r4, #0
	bge _021EBFE4
	ldr r0, [sp, #8]
	add r5, r1, #0
	neg r0, r0
	ldr r7, [sp, #0x14]
	str r0, [sp, #0x10]
	str r0, [sp, #8]
	b _021EC004
_021EBFE4:
	add r0, #0x78
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #8]
	add r7, #0xa
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	bl ov102_021E8FD8
	ldr r1, [sp, #8]
	add r1, r1, r7
	cmp r1, r0
	bls _021EC004
	ldr r0, [sp, #0x10]
	sub r0, r0, #1
	str r0, [sp, #0x10]
_021EC004:
	ldr r0, [sp, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _021EC02A
_021EC00C:
	add r0, r6, #0
	add r1, r7, r4
	add r2, r5, #0
	bl ov102_021EC13C
	mov r0, #1
	tst r0, r4
	beq _021EC022
	add r5, #0x18
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
_021EC022:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _021EC00C
_021EC02A:
	add r1, r6, #0
	ldr r0, [sp, #0x18]
	add r1, #0x8c
	str r0, [r1]
	add r1, r6, #0
	ldr r0, [sp, #0x14]
	add r1, #0x90
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x10
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r3, #1
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [r6, #0xc]
	add r0, #0x60
	bl ov102_021EC298
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov102_021EBFA0

