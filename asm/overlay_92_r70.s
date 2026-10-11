	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225F530
	.public ov92_0225F878
	.public ov92_0225F8B0
	.extern ov92_0225D9A8
	.extern ov92_0225D9B4
	.extern ov92_0225DA2C
	.extern ov92_02260428
	.extern ov92_022630E8
	.extern ov92_02263C34
	.extern ov92_02263CD0
	.extern ov92_02263CD4

	.text

	.text
	thumb_func_start ov92_0225F530
ov92_0225F530: ; 0x0225F530
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	ldr r6, [r4, #0x34]
	ldr r5, [r4, #0x38]
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225F550
	ldr r2, [r4, #0x3c]
	add r0, r2, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225F59A
_0225F550:
	add r0, r6, #0
	bl ov92_0225DA2C
	add r0, r5, #0
	bl ov92_0225DA2C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020180F8
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl SysTask_Destroy
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0225F59A:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	sub r3, r1, #1
	bmi _0225F5A6
	cmp r3, #4
	ble _0225F5A8
_0225F5A6:
	mov r3, #0
_0225F5A8:
	ldr r0, [r4]
	cmp r0, #5
	bls _0225F5B0
	b _0225F81E
_0225F5B0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F5BC: ; jump table
	.short _0225F5C8 - _0225F5BC - 2 ; case 0
	.short _0225F5E8 - _0225F5BC - 2 ; case 1
	.short _0225F69C - _0225F5BC - 2 ; case 2
	.short _0225F6BC - _0225F5BC - 2 ; case 3
	.short _0225F798 - _0225F5BC - 2 ; case 4
	.short _0225F7C4 - _0225F5BC - 2 ; case 5
_0225F5C8:
	ldr r1, [r2]
	ldr r2, _0225F868 ; =ov92_02263CD0
	lsl r3, r3, #3
	ldr r2, [r2, r3]
	add r0, r6, #0
	bl ov92_0225D9A8
	ldr r1, [r4, #0x40]
	add r0, r6, #0
	bl ov92_0225D9B4
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F5E8:
	mov r0, #0x71
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r6, #0
	ldr r2, [r2]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x27
	bl sub_020180BC
	add r1, r6, #0
	ldr r2, [r4, #0x3c]
	mov r0, #0x71
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r2, [r2]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x28
	bl sub_020180BC
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x88
	bl sub_020181D4
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x9c
	bl sub_020181D4
	add r0, r6, #0
	add r0, #0x88
	mov r1, #0
	bl sub_02018198
	add r0, r6, #0
	add r0, #0x9c
	mov r1, #0
	bl sub_02018198
	add r0, r6, #0
	mov r1, #0
	bl sub_020182A0
	mov r0, #0x7b
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	sub r0, #0x5c
	add r0, r6, r0
	bl ov92_022630E8
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r6, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225F86C ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225F86C ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r6, #0
	add r2, r1, #0
	bl ov92_02260428
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F69C:
	ldr r1, [r2]
	ldr r2, _0225F870 ; =ov92_02263CD4
	lsl r3, r3, #3
	ldr r2, [r2, r3]
	add r0, r5, #0
	bl ov92_0225D9A8
	ldr r1, [r4, #0x40]
	add r0, r5, #0
	bl ov92_0225D9B4
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F6BC:
	mov r0, #0x71
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	ldr r2, [r2]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x29
	bl sub_020180BC
	add r1, r5, #0
	ldr r2, [r4, #0x3c]
	mov r0, #0x71
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [r2]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x2a
	bl sub_020180BC
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x88
	bl sub_020181D4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x9c
	bl sub_020181D4
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0
	bl sub_02018198
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0
	bl sub_02018198
	add r0, r5, #0
	mov r1, #1
	bl sub_020182A0
	mov r0, #0x7b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x5c
	add r0, r5, r0
	bl ov92_022630E8
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225F86C ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225F86C ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	add r2, r1, #0
	bl ov92_02260428
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0225F78E
	mov r1, #0
	ldr r2, _0225F874 ; =0xFFFF8000
	add r0, r6, #0
	add r3, r1, #0
	bl sub_020182A8
	mov r1, #0
	ldr r2, _0225F874 ; =0xFFFF8000
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020182A8
	mov r0, #0x79
	ldr r1, _0225F874 ; =0xFFFF8000
	lsl r0, r0, #2
	str r1, [r6, r0]
	str r1, [r5, r0]
_0225F78E:
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F798:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0225F864
	add r0, r6, #0
	mov r1, #1
	bl sub_020182A0
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
	mov r0, #0x7b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F7C4:
	cmp r1, #0
	bne _0225F7CE
	mov r0, #0xff
	str r0, [r4]
	b _0225F814
_0225F7CE:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _0225F814
	add r0, r6, #0
	bl ov92_0225DA2C
	add r0, r5, #0
	bl ov92_0225DA2C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020180F8
	mov r0, #0
	str r0, [r4]
_0225F814:
	ldr r0, [r4, #0x2c]
	add sp, #0xc
	ldr r0, [r0]
	str r0, [r4, #0x28]
	pop {r4, r5, r6, r7, pc}
_0225F81E:
	add r0, r6, #0
	bl ov92_0225DA2C
	add r0, r5, #0
	bl ov92_0225DA2C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020180F8
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl SysTask_Destroy
_0225F864:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225F868: .word ov92_02263CD0
_0225F86C: .word 0x3F4CCCCD
_0225F870: .word ov92_02263CD4
_0225F874: .word 0xFFFF8000
	thumb_func_end ov92_0225F530

	thumb_func_start ov92_0225F878
ov92_0225F878: ; 0x0225F878
	push {r3, r4}
	sub sp, #8
	ldr r3, _0225F8A8 ; =ov92_02263C34
	add r2, sp, #0
	ldrh r4, [r3, #0x10]
	add r1, sp, #0
	strh r4, [r2]
	ldrh r4, [r3, #0x12]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0x14]
	ldrh r3, [r3, #0x16]
	strh r4, [r2, #4]
	strh r3, [r2, #6]
	ldr r3, _0225F8AC ; =0x00002AF0
	sub r2, r3, #4
	ldr r2, [r0, r2]
	ldr r4, [r0, r3]
	lsl r2, r2, #1
	ldrh r1, [r1, r2]
	add r1, r4, r1
	str r1, [r0, r3]
	add sp, #8
	pop {r3, r4}
	bx lr
	.balign 4, 0
_0225F8A8: .word ov92_02263C34
_0225F8AC: .word 0x00002AF0
	thumb_func_end ov92_0225F878

	thumb_func_start ov92_0225F8B0
ov92_0225F8B0: ; 0x0225F8B0
	push {r3, r4}
	sub sp, #8
	ldr r3, _0225F8E4 ; =ov92_02263C34
	add r1, sp, #0
	ldrh r4, [r3, #0x18]
	add r2, sp, #0
	strh r4, [r1]
	ldrh r4, [r3, #0x1a]
	strh r4, [r1, #2]
	ldrh r4, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	strh r4, [r1, #4]
	ldr r4, _0225F8E8 ; =0x00002AF0
	strh r3, [r1, #6]
	sub r3, r4, #4
	ldr r3, [r0, r3]
	ldr r1, [r0, r4]
	sub r3, r3, #1
	lsl r3, r3, #1
	ldrh r2, [r2, r3]
	add r1, r1, r2
	str r1, [r0, r4]
	add sp, #8
	pop {r3, r4}
	bx lr
	nop
_0225F8E4: .word ov92_02263C34
_0225F8E8: .word 0x00002AF0
	thumb_func_end ov92_0225F8B0

