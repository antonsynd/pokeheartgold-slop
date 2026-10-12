	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7450
	.public ov99_021E7508
	.public ov99_021E7598
	.public ov99_021E76D8
	.extern ov99_021E7158
	.extern ov99_021E71E4
	.extern ov99_021E7208
	.extern ov99_021E723C
	.extern ov99_021E73E0
	.extern ov99_021E7428
	.extern ov99_021E7794
	.extern ov99_021E77D8

	.text

	.text
	thumb_func_start ov99_021E7450
ov99_021E7450: ; 0x021E7450
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ov99_021E7158
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	add r0, r5, #0
	mov r1, #0
	bl ov99_021E7428
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	ble _021E74F2
_021E747E:
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #0xd
	lsr r1, r0, #0x1b
	mov r0, #0x1e
	mul r0, r1
	add r0, r4, r0
	lsl r0, r0, #1
	add r0, r5, r0
	ldrh r6, [r0, #0x14]
	ldr r1, [sp, #8]
	ldr r0, _021E74F8 ; =0xFFFFFE00
	and r1, r0
	lsr r0, r0, #0x17
	and r0, r6
	orr r0, r1
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl ov99_021E71E4
	lsl r0, r0, #0x1b
	ldr r2, [sp, #8]
	ldr r1, _021E74FC ; =0xFFFFC1FF
	lsr r0, r0, #0x12
	and r1, r2
	orr r0, r1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x14
	lsl r0, r0, #2
	add r7, r5, r0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E7500 ; =0x00000404
	ldr r1, _021E7504 ; =0x00000408
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	add r2, sp, #8
	mov r3, #1
	bl ov98_0221E970
	ldr r0, _021E7504 ; =0x00000408
	mov r1, #1
	ldr r0, [r7, r0]
	bl ManagedSprite_SetDrawFlag
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl ov99_021E73E0
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021E747E
_021E74F2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E74F8: .word 0xFFFFFE00
_021E74FC: .word 0xFFFFC1FF
_021E7500: .word 0x00000404
_021E7504: .word 0x00000408
	thumb_func_end ov99_021E7450

	thumb_func_start ov99_021E7508
ov99_021E7508: ; 0x021E7508
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r1, #0
	lsl r0, r2, #0x1b
	lsr r0, r0, #0x1b
	beq _021E7522
	lsl r2, r2, #0xd
	lsr r2, r2, #0x1b
	beq _021E7522
	mov r1, #1
_021E7522:
	cmp r0, #0
	beq _021E7538
	mov r2, #0xfd
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	lsl r2, r2, #0xd
	lsr r2, r2, #0x1b
	cmp r2, r0
	bhs _021E7538
	mov r5, #1
	b _021E753A
_021E7538:
	mov r5, #0
_021E753A:
	ldr r0, _021E7594 ; =0x0000040C
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ManagedSprite_SetDrawFlag
	mov r1, #1
	lsl r1, r1, #0xa
	ldr r0, [r4, r1]
	sub r1, #0xc
	ldr r1, [r4, r1]
	mov r2, #2
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1b
	add r1, r1, #1
	mov r3, #0
	bl ov98_0221EDA4
	mov r1, #1
	lsl r1, r1, #0xa
	ldr r0, [r4, r1]
	sub r1, #0xc
	ldr r1, [r4, r1]
	mov r2, #2
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	add r1, r1, #1
	mov r3, #1
	bl ov98_0221EDA4
	mov r3, #0
	mov r0, #1
	str r3, [sp]
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	mov r1, #3
	mov r2, #0x81
	bl ov98_0221ED48
	pop {r3, r4, r5, pc}
	nop
_021E7594: .word 0x0000040C
	thumb_func_end ov99_021E7508

	thumb_func_start ov99_021E7598
ov99_021E7598: ; 0x021E7598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	beq _021E75AE
	mov r0, #1
	b _021E75B2
_021E75AE:
	mov r0, #0
	mvn r0, r0
_021E75B2:
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0xfe
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bne _021E75E6
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	add r4, r0, #0
	add r0, r5, #0
	bl ov99_021E7508
	cmp r4, #0x1e
	bne _021E75DE
	add r0, r5, #0
	bl ov99_021E77D8
	b _021E7636
_021E75DE:
	add r0, r5, #0
	bl ov99_021E7794
	b _021E7636
_021E75E6:
	cmp r1, #4
	bne _021E7636
	add r0, r5, #0
	bl ov99_021E7450
	mov r6, #0
	add r4, r5, #0
_021E75F4:
	mov r0, #0xfe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, sp, #4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r7, r1, #0
	ldr r0, [sp]
	add r1, sp, #4
	mul r7, r0
	ldr r0, _021E76D4 ; =0x00000458
	add r1, #2
	ldr r0, [r4, r0]
	bl ManagedSprite_GetPositionXY
	ldr r0, _021E76D4 ; =0x00000458
	add r2, sp, #4
	mov r1, #2
	ldrsh r2, [r2, r1]
	lsl r1, r7, #1
	add r3, sp, #4
	sub r1, r2, r1
	mov r2, #0
	lsl r1, r1, #0x10
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x1e
	blt _021E75F4
_021E7636:
	mov r0, #0xfe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	bhs _021E7680
	ldr r0, [sp]
	mov r1, #2
	neg r4, r0
	ldr r0, [r5]
	mov r2, #1
	add r3, r4, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5]
	mov r1, #3
	mov r2, #1
	add r3, r4, #0
	bl ScheduleSetBgPosText
	ldr r0, [sp]
	mov r6, #0
	lsl r0, r0, #0x10
	add r4, r5, #0
	asr r7, r0, #0x10
_021E766A:
	ldr r0, _021E76D4 ; =0x00000458
	add r1, r7, #0
	ldr r0, [r4, r0]
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x1e
	blt _021E766A
	b _021E76B4
_021E7680:
	mov r2, #0
	ldr r0, [r5]
	mov r1, #2
	add r3, r2, #0
	bl ScheduleSetBgPosText
	mov r2, #0
	ldr r0, [r5]
	mov r1, #3
	add r3, r2, #0
	bl ScheduleSetBgPosText
	mov r1, #0xfe
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #0xff
	bic r2, r0
	str r2, [r5, r1]
	add r1, #0x10
	ldr r0, [r5, r1]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E76B4:
	mov r2, #0xfe
	lsl r2, r2, #2
	ldr r3, [r5, r2]
	mov r1, #0xff
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r5, r2]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E76D4: .word 0x00000458
	thumb_func_end ov99_021E7598

	thumb_func_start ov99_021E76D8
ov99_021E76D8: ; 0x021E76D8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r3, sp, #4
	mov r2, #0
	str r2, [r3]
	str r2, [r3, #4]
	str r2, [r3, #8]
	ldr r2, [sp, #4]
	ldr r3, _021E7744 ; =0xFFFFFE00
	add r4, r1, #0
	and r2, r3
	lsr r3, r3, #0x17
	and r3, r4
	orr r2, r3
	str r2, [sp, #4]
	add r5, r0, #0
	bl ov99_021E71E4
	lsl r0, r0, #0x1b
	ldr r2, [sp, #4]
	ldr r1, _021E7748 ; =0xFFFFC1FF
	lsr r0, r0, #0x12
	and r1, r2
	orr r0, r1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov99_021E7208
	lsl r0, r0, #0x1e
	ldr r2, [sp, #4]
	ldr r1, _021E774C ; =0xFFFF3FFF
	lsr r0, r0, #0x10
	and r1, r2
	orr r0, r1
	str r0, [sp, #4]
	ldr r0, _021E7750 ; =0x00000147
	cmp r4, r0
	bne _021E772E
	add r0, r5, #0
	bl ov99_021E723C
	str r0, [sp, #8]
_021E772E:
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, _021E7754 ; =0x00000414
	add r1, sp, #4
	ldr r0, [r5, r0]
	add r3, r2, #0
	bl ov98_0221E7E8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7744: .word 0xFFFFFE00
_021E7748: .word 0xFFFFC1FF
_021E774C: .word 0xFFFF3FFF
_021E7750: .word 0x00000147
_021E7754: .word 0x00000414
	thumb_func_end ov99_021E76D8

