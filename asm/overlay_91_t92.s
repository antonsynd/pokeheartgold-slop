	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225E45C
	.extern ov91_0225D600
	.extern ov91_0225D694
	.extern ov91_0225DE8C
	.extern ov91_0225DFB0
	.extern ov91_0225E3F4
	.extern ov91_0225E728
	.extern ov91_0225E7C4
	.extern ov91_0225E7E8
	.extern ov91_0225E990
	.extern ov91_0225E9C0
	.extern ov91_0225E9E4
	.extern ov91_0225EA54
	.extern ov91_02261808
	.extern ov91_02261890
	.extern ov91_022618B0

	.text

	.text
	thumb_func_start ov91_0225E45C
ov91_0225E45C: ; 0x0225E45C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	ldrb r7, [r4]
	add r5, r0, #0
	cmp r7, #1
	beq _0225E470
	cmp r7, #2
	beq _0225E470
	b _0225E5FA
_0225E470:
	ldr r0, [r4, #0x30]
	add r1, sp, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov91_0225E728
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225E496
	ldr r0, _0225E600 ; =0x000019CC
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x2c
	add r2, sp, #0x14
	add r3, sp, #8
	bl ov91_0225DE8C
	add r6, r0, #0
	b _0225E498
_0225E496:
	mov r6, #0
_0225E498:
	add r0, r4, #0
	add r1, sp, #0x14
	bl ov91_0225EA54
	cmp r6, #3
	beq _0225E4A8
	cmp r6, #1
	bne _0225E4B0
_0225E4A8:
	add r0, r4, #0
	add r1, sp, #8
	bl ov91_0225EA54
_0225E4B0:
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	cmp r6, #1
	bne _0225E544
	add r0, r5, #0
	bl ov91_0225D600
	ldr r1, [r5, #0x18]
	add r1, r1, r0
	ldr r0, _0225E604 ; =0x0001869F
	str r1, [r5, #0x18]
	cmp r1, r0
	ble _0225E4CE
	str r0, [r5, #0x18]
_0225E4CE:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0225E4DA
	cmp r0, #1
	beq _0225E4E8
	b _0225E4F6
_0225E4DA:
	ldr r0, _0225E608 ; =0x00000582
	bl PlaySE
	ldr r0, _0225E60C ; =0x00000583
	bl PlaySE
	b _0225E502
_0225E4E8:
	ldr r0, _0225E608 ; =0x00000582
	bl PlaySE
	ldr r0, _0225E610 ; =0x00000584
	bl PlaySE
	b _0225E502
_0225E4F6:
	ldr r0, _0225E608 ; =0x00000582
	bl PlaySE
	ldr r0, _0225E614 ; =0x00000585
	bl PlaySE
_0225E502:
	add r0, r4, #0
	add r1, r5, #0
	bl ov91_0225E9E4
	ldr r0, _0225E618 ; =0x00001E38
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5]
	add r0, r5, r0
	bl ov91_0225D694
	ldr r0, [r5, #0x1c]
	cmp r0, #0x63
	bge _0225E522
	add r0, r0, #1
	str r0, [r5, #0x1c]
_0225E522:
	ldr r2, [r5, #0x1c]
	ldr r0, _0225E61C ; =0x0000862C
	cmp r2, #3
	ldr r1, _0225E620 ; =0x00001AB4
	bne _0225E538
	add r0, r5, r0
	add r1, r5, r1
	bl ov91_02261808
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0225E538:
	add r0, r5, r0
	add r1, r5, r1
	bl ov91_022618B0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0225E544:
	ldr r0, _0225E600 ; =0x000019CC
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x2c
	mov r6, #0
	bl ov91_0225DFB0
	cmp r0, #1
	bne _0225E56E
	mov r6, #1
	cmp r7, #1
	bne _0225E562
	ldr r0, _0225E624 ; =0x00000722
	bl PlaySE
_0225E562:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov91_0225E7C4
	b _0225E5E6
_0225E56E:
	ldr r1, [r4, #0x30]
	ldr r0, _0225E628 ; =0xFFFCE000
	cmp r1, r0
	bgt _0225E5BE
	add r0, r4, #0
	bl ov91_0225E990
	cmp r0, #0
	bne _0225E5A4
	ldr r1, _0225E628 ; =0xFFFCE000
	ldr r0, [sp, #4]
	mov r6, #1
	cmp r0, r1
	bgt _0225E598
	ldr r3, [r5, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov91_0225E3F4
	b _0225E5E6
_0225E598:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov91_0225E7C4
	b _0225E5E6
_0225E5A4:
	mov r0, #1
	ldr r1, [r4, #0x30]
	lsl r0, r0, #0xa
	cmp r1, r0
	bgt _0225E5E6
	ldr r3, [r5, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r6, #1
	bl ov91_0225E3F4
	b _0225E5E6
_0225E5BE:
	add r0, r4, #0
	bl ov91_0225E9C0
	cmp r0, #1
	bne _0225E5E6
	add r0, r4, #0
	add r0, #0x2c
	mov r6, #1
	add r1, sp, #0x14
	add r2, r0, #0
	bl VEC_Subtract
	mov r0, #0
	add r2, r6, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	lsl r3, r2, #0xa
	bl ov91_0225E7E8
_0225E5E6:
	cmp r6, #1
	bne _0225E5FA
	cmp r7, #1
	bne _0225E5FA
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, _0225E61C ; =0x0000862C
	add r0, r5, r0
	bl ov91_02261890
_0225E5FA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E600: .word 0x000019CC
_0225E604: .word 0x0001869F
_0225E608: .word 0x00000582
_0225E60C: .word 0x00000583
_0225E610: .word 0x00000584
_0225E614: .word 0x00000585
_0225E618: .word 0x00001E38
_0225E61C: .word 0x0000862C
_0225E620: .word 0x00001AB4
_0225E624: .word 0x00000722
_0225E628: .word 0xFFFCE000
	thumb_func_end ov91_0225E45C

