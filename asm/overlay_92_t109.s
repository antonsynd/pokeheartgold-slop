	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_022621A4
	.public ov92_02262548
	.public ov92_022628F0
	.public ov92_02262CEC
	.extern ov92_02261E80
	.extern ov92_02261E88
	.extern ov92_02261F60
	.extern ov92_02262018
	.extern ov92_022620D0
	.extern ov92_02263E0C
	.extern ov92_02263E1C
	.extern ov92_02263E2C
	.extern ov92_02263E4C

	.text

	.text
	thumb_func_start ov92_022621A4
ov92_022621A4: ; 0x022621A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _022621FC ; =ov92_02263E1C
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _022621CE
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _022621D8
_022621CE:
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_022621D8:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #4
	bls _022621E4
	b _0226253E
_022621E4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022621F0: ; jump table
	.short _02262200 - _022621F0 - 2 ; case 0
	.short _02262338 - _022621F0 - 2 ; case 1
	.short _022623BA - _022621F0 - 2 ; case 2
	.short _02262436 - _022621F0 - 2 ; case 3
	.short _022624B2 - _022621F0 - 2 ; case 4
	nop
_022621FC: .word ov92_02263E1C
_02262200:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _02262308
	add r5, r4, #0
_0226220E:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r3, #1
	ldr r0, [r5]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
	ldrh r0, [r5, #8]
	bl GF_SinDeg
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl GF_CosDeg
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl GF_SinDeg
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl GF_CosDeg
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _0226220E
_02262308:
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262338:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov92_02261E88
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov92_02261F60
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov92_02262018
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _0226240C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _0226240C
	cmp r0, #0
	beq _0226240C
	cmp r2, #0
	beq _0226240C
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022623BA:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov92_022620D0
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov92_02261E88
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov92_02262018
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _0226240C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _0226240C
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _0226240C
	cmp r0, #0
	bne _0226240E
_0226240C:
	b _02262544
_0226240E:
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262436:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov92_02261F60
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov92_02261E88
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov92_02261E88
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02262544
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02262544
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02262544
	cmp r0, #0
	beq _02262544
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022624B2:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov92_022620D0
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov92_02261E88
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02262544
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02262544
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02262544
	cmp r0, #0
	beq _02262544
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _0226252A
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_0226252A:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_0226253E:
	add r0, r5, #0
	bl SysTask_Destroy
_02262544:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov92_022621A4

	thumb_func_start ov92_02262548
ov92_02262548: ; 0x02262548
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _022625A0 ; =ov92_02263E0C
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02262572
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _0226257C
_02262572:
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0226257C:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #4
	bls _02262588
	b _022628E4
_02262588:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02262594: ; jump table
	.short _022625A4 - _02262594 - 2 ; case 0
	.short _022626DC - _02262594 - 2 ; case 1
	.short _0226275E - _02262594 - 2 ; case 2
	.short _022627DC - _02262594 - 2 ; case 3
	.short _02262858 - _02262594 - 2 ; case 4
	nop
_022625A0: .word ov92_02263E0C
_022625A4:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _022626AC
	add r5, r4, #0
_022625B2:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r3, #1
	ldr r0, [r5]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
	ldrh r0, [r5, #8]
	bl GF_SinDeg
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl GF_CosDeg
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl GF_SinDeg
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl GF_CosDeg
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _022625B2
_022626AC:
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022626DC:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov92_02261E88
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov92_02261F60
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov92_02262018
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _022627B2
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022627B2
	cmp r0, #0
	beq _022627B2
	cmp r2, #0
	beq _022627B2
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226275E:
	mov r0, #1
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov92_022620D0
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov92_02261E88
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov92_02262018
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022627B2
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022627B2
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022627B2
	cmp r0, #0
	bne _022627B4
_022627B2:
	b _022628EA
_022627B4:
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022627DC:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov92_02261F60
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov92_02261E88
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov92_02261E88
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022628EA
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022628EA
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022628EA
	cmp r0, #0
	beq _022628EA
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262858:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov92_022620D0
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov92_02261E88
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022628EA
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022628EA
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022628EA
	cmp r0, #0
	beq _022628EA
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _022628D0
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022628D0:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022628E4:
	add r0, r5, #0
	bl SysTask_Destroy
_022628EA:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov92_02262548

	thumb_func_start ov92_022628F0
ov92_022628F0: ; 0x022628F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _0226294C ; =ov92_02263E2C
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0226291A
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _02262924
_0226291A:
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02262924:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #6
	bls _02262930
	b _02262CE2
_02262930:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226293C: ; jump table
	.short _02262950 - _0226293C - 2 ; case 0
	.short _02262A88 - _0226293C - 2 ; case 1
	.short _02262B0A - _0226293C - 2 ; case 2
	.short _02262B84 - _0226293C - 2 ; case 3
	.short _02262BB0 - _0226293C - 2 ; case 4
	.short _02262C2C - _0226293C - 2 ; case 5
	.short _02262C96 - _0226293C - 2 ; case 6
	nop
_0226294C: .word ov92_02263E2C
_02262950:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _02262A58
	add r5, r4, #0
_0226295E:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r3, #1
	ldr r0, [r5]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
	ldrh r0, [r5, #8]
	bl GF_SinDeg
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl GF_CosDeg
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl GF_SinDeg
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl GF_CosDeg
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _0226295E
_02262A58:
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262A88:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov92_02261E88
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov92_02261F60
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov92_02262018
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _02262B9C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02262B9C
	cmp r0, #0
	beq _02262B9C
	cmp r2, #0
	beq _02262B9C
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262B0A:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov92_022620D0
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov92_02261E88
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov92_02262018
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02262B9C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02262B9C
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02262B9C
	cmp r0, #0
	beq _02262B9C
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262B84:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xf0
	add r3, r2, #0
	bl ov92_022620D0
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _02262B9E
_02262B9C:
	b _02262CE8
_02262B9E:
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262BB0:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov92_02261F60
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov92_02261E88
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov92_02261E88
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02262CE8
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02262CE8
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02262CE8
	cmp r0, #0
	beq _02262CE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262C2C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov92_022620D0
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov92_02261E88
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02262CE8
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02262CE8
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02262CE8
	cmp r0, #0
	beq _02262CE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262C96:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xa0
	add r3, r2, #0
	bl ov92_022620D0
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02262CE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _02262CCE
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02262CCE:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02262CE2:
	add r0, r5, #0
	bl SysTask_Destroy
_02262CE8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov92_022628F0

	thumb_func_start ov92_02262CEC
ov92_02262CEC: ; 0x02262CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _02262D48 ; =ov92_02263E4C
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02262D16
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _02262D20
_02262D16:
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02262D20:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #6
	bls _02262D2C
	b _022630DE
_02262D2C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02262D38: ; jump table
	.short _02262D4C - _02262D38 - 2 ; case 0
	.short _02262E84 - _02262D38 - 2 ; case 1
	.short _02262F06 - _02262D38 - 2 ; case 2
	.short _02262F80 - _02262D38 - 2 ; case 3
	.short _02262FAC - _02262D38 - 2 ; case 4
	.short _02263028 - _02262D38 - 2 ; case 5
	.short _02263092 - _02262D38 - 2 ; case 6
	nop
_02262D48: .word ov92_02263E4C
_02262D4C:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _02262E54
	add r5, r4, #0
_02262D5A:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r3, #1
	ldr r0, [r5]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
	ldrh r0, [r5, #8]
	bl GF_SinDeg
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl GF_CosDeg
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl GF_SinDeg
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl GF_CosDeg
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _02262D5A
_02262E54:
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262E84:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov92_02261E88
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov92_02261F60
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov92_02262018
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _02262F98
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02262F98
	cmp r0, #0
	beq _02262F98
	cmp r2, #0
	beq _02262F98
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262F06:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov92_022620D0
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov92_02261E88
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov92_02262018
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02262F98
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02262F98
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02262F98
	cmp r0, #0
	beq _02262F98
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262F80:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xf0
	add r3, r2, #0
	bl ov92_022620D0
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _02262F9A
_02262F98:
	b _022630E4
_02262F9A:
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02262FAC:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov92_02261F60
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov92_02261E88
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov92_02261E88
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022630E4
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022630E4
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022630E4
	cmp r0, #0
	beq _022630E4
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02263028:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov92_022620D0
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov92_02261E88
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022630E4
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022630E4
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022630E4
	cmp r0, #0
	beq _022630E4
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0xf0
	bl ov92_02261E80
	add r0, r4, #0
	bl ov92_02261E80
	add r0, r4, #0
	add r0, #0x50
	bl ov92_02261E80
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02263092:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xa0
	add r3, r2, #0
	bl ov92_022620D0
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _022630E4
	add r0, r4, #0
	add r0, #0xa0
	bl ov92_02261E80
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #8
	beq _022630CA
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022630CA:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022630DE:
	add r0, r5, #0
	bl SysTask_Destroy
_022630E4:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov92_02262CEC

