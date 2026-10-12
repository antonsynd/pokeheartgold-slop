	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F6310
	.public ov18_021F63DC
	.extern ov18_021F6230
	.extern ov18_021F6244
	.extern ov18_021FA304
	.extern ov18_021FA310

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F6310
ov18_021F6310: ; 0x021F6310
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021F63CC ; =0x00000684
	add r1, sp, #4
	add r6, r2, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	mov r0, #0x56
	str r0, [sp]
	ldr r2, _021F63D0 ; =ov18_021FA310
	add r0, r5, #0
	mov r1, #5
	mov r3, #0x40
	bl ov18_021F6230
	cmp r6, r0
	bhs _021F633C
	add r6, r0, #0
_021F633C:
	mov r0, #0x56
	str r0, [sp]
	ldr r2, _021F63D0 ; =ov18_021FA310
	add r0, r5, #0
	mov r1, #5
	mov r3, #0x40
	bl ov18_021F6244
	cmp r6, r0
	bls _021F6352
	add r6, r0, #0
_021F6352:
	ldr r0, _021F63CC ; =0x00000684
	add r2, sp, #4
	mov r1, #2
	ldrsh r1, [r2, r1]
	lsl r2, r6, #0x10
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r0, #0x56
	str r0, [sp]
	ldr r2, _021F63D0 ; =ov18_021FA310
	add r0, r5, #0
	mov r1, #5
	mov r3, #0x40
	bl ov18_021F6230
	add r7, r0, #0
	mov r0, #0x56
	str r0, [sp]
	ldr r2, _021F63D0 ; =ov18_021FA310
	add r0, r5, #0
	mov r1, #5
	mov r3, #0x40
	bl ov18_021F6244
	sub r1, r0, r7
	ldr r0, _021F63D4 ; =0x000018C4
	ldrsb r0, [r5, r0]
	sub r4, r0, #1
	lsl r0, r1, #8
	add r1, r4, #0
	bl _u32_div_f
	sub r1, r6, r7
	mov r3, #0
	lsl r2, r1, #8
	add r6, r3, #0
	add r7, r3, #0
_021F63A0:
	cmp r2, r6
	blo _021F63BA
	add r1, r7, r0
	cmp r2, r1
	bhs _021F63BA
	ldr r0, _021F63D8 ; =0x000018C5
	ldrsb r1, [r5, r0]
	cmp r1, r3
	beq _021F63C4
	add sp, #8
	strb r3, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F63BA:
	add r3, r3, #1
	add r6, r6, r0
	add r7, r7, r0
	cmp r3, r4
	bls _021F63A0
_021F63C4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F63CC: .word 0x00000684
_021F63D0: .word ov18_021FA310
_021F63D4: .word 0x000018C4
_021F63D8: .word 0x000018C5
	thumb_func_end ov18_021F6310

	thumb_func_start ov18_021F63DC
ov18_021F63DC: ; 0x021F63DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021F6498 ; =0x00000684
	add r1, sp, #4
	add r6, r2, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	mov r0, #0x56
	str r0, [sp]
	ldr r2, _021F649C ; =ov18_021FA304
	add r0, r5, #0
	mov r1, #5
	mov r3, #0x60
	bl ov18_021F6230
	cmp r6, r0
	bhs _021F6408
	add r6, r0, #0
_021F6408:
	mov r0, #0x56
	str r0, [sp]
	ldr r2, _021F649C ; =ov18_021FA304
	add r0, r5, #0
	mov r1, #5
	mov r3, #0x60
	bl ov18_021F6244
	cmp r6, r0
	bls _021F641E
	add r6, r0, #0
_021F641E:
	ldr r0, _021F6498 ; =0x00000684
	add r2, sp, #4
	mov r1, #2
	ldrsh r1, [r2, r1]
	lsl r2, r6, #0x10
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r0, #0x56
	str r0, [sp]
	ldr r2, _021F649C ; =ov18_021FA304
	add r0, r5, #0
	mov r1, #5
	mov r3, #0x60
	bl ov18_021F6230
	add r7, r0, #0
	mov r0, #0x56
	str r0, [sp]
	ldr r2, _021F649C ; =ov18_021FA304
	add r0, r5, #0
	mov r1, #5
	mov r3, #0x60
	bl ov18_021F6244
	sub r1, r0, r7
	mov r0, #0x19
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	sub r4, r0, #1
	lsl r0, r1, #8
	add r1, r4, #0
	bl _u32_div_f
	sub r1, r6, r7
	mov r3, #0
	lsl r2, r1, #8
	add r6, r3, #0
	add r7, r3, #0
_021F646E:
	cmp r2, r6
	blo _021F6488
	add r1, r7, r0
	cmp r2, r1
	bhs _021F6488
	ldr r0, _021F64A0 ; =0x000018CA
	ldrsb r1, [r5, r0]
	cmp r1, r3
	beq _021F6492
	add sp, #8
	strb r3, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F6488:
	add r3, r3, #1
	add r6, r6, r0
	add r7, r7, r0
	cmp r3, r4
	bls _021F646E
_021F6492:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F6498: .word 0x00000684
_021F649C: .word ov18_021FA304
_021F64A0: .word 0x000018CA
	thumb_func_end ov18_021F63DC

