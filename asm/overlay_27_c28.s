	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225B398
	.public ov27_0225B404
	.extern ov27_0225B360
	.extern ov27_0225C170
	.extern ov27_0225CF94
	.extern ov27_0225CFC8

	.text

	.text
	thumb_func_start ov27_0225B398
ov27_0225B398: ; 0x0225B398
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	str r1, [sp]
	cmp r1, #7
	blt _0225B3A6
	bl GF_AssertFail
_0225B3A6:
	ldr r0, _0225B3F0 ; =0x000004CC
	mov r4, #0
	add r5, r4, #0
	add r7, r6, r0
_0225B3AE:
	ldr r0, _0225B3F4 ; =0x0000051C
	ldr r0, [r6, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	lsl r1, r0, #3
	ldr r0, _0225B3F8 ; =ov27_0225CFC8
	add r0, r0, r1
	ldrb r1, [r4, r0]
	ldr r0, _0225B3FC ; =ov27_0225CF94
	lsl r2, r1, #2
	ldrh r0, [r0, r2]
	mov r2, #0
	cmp r1, #0xd
	beq _0225B3E4
	ldr r1, _0225B400 ; =0x0000FFFF
	cmp r0, r1
	beq _0225B3E4
	ldr r0, [sp]
	cmp r4, r0
	bne _0225B3D8
	mov r2, #0x10
_0225B3D8:
	lsl r0, r2, #1
	add r0, r7, r0
	add r1, r5, #0
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_0225B3E4:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #7
	blt _0225B3AE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225B3F0: .word 0x000004CC
_0225B3F4: .word 0x0000051C
_0225B3F8: .word ov27_0225CFC8
_0225B3FC: .word ov27_0225CF94
_0225B400: .word 0x0000FFFF
	thumb_func_end ov27_0225B398

	thumb_func_start ov27_0225B404
ov27_0225B404: ; 0x0225B404
	push {r3, r4, r5, lr}
	ldr r1, _0225B4A8 ; =gSystem
	add r5, r0, #0
	ldr r1, [r1, #0x48]
	mov r4, #0
	mov r2, #0x40
	mvn r4, r4
	ldr r0, [r5, #0x14]
	tst r2, r1
	beq _0225B41C
	mov r4, #0
	b _0225B438
_0225B41C:
	mov r2, #0x80
	tst r2, r1
	beq _0225B426
	mov r4, #1
	b _0225B438
_0225B426:
	mov r2, #0x20
	tst r2, r1
	beq _0225B430
	mov r4, #2
	b _0225B438
_0225B430:
	mov r2, #0x10
	tst r1, r2
	beq _0225B438
	mov r4, #3
_0225B438:
	cmp r4, #0
	blt _0225B448
	mov r2, #0x47
	lsl r2, r2, #4
	add r1, r4, #0
	add r2, r5, r2
	bl ov27_0225B360
_0225B448:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225B4A6
	ldr r1, [r5, #0x14]
	cmp r1, r0
	beq _0225B4A6
	str r0, [r5, #0x14]
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	cmp r4, #1
	bhi _0225B478
	ldr r0, [r5, #0x14]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	b _0225B490
_0225B478:
	sub r0, r4, #2
	cmp r0, #1
	bhi _0225B490
	ldr r0, [r5, #0x14]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
_0225B490:
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	bl ov27_0225B398
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	bl ov27_0225C170
	ldr r1, [r5, #0x10]
	add r1, #0xd3
	strb r0, [r1]
_0225B4A6:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225B4A8: .word gSystem
	thumb_func_end ov27_0225B404

