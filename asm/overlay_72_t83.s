	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223A520
	.public ov72_0223A588
	.extern ov72_022386F4
	.extern ov72_0223B744

	.text

	.text
	thumb_func_start ov72_0223A520
ov72_0223A520: ; 0x0223A520
	push {r4, lr}
	ldr r3, _0223A580 ; =0x0000130C
	mov r4, #0
	strb r1, [r0, r3]
	add r1, r3, #1
	strb r2, [r0, r1]
	add r1, r3, #2
	strb r4, [r0, r1]
	add r1, r3, #3
	strb r4, [r0, r1]
	cmp r2, #0x64
	beq _0223A544
	add r1, r3, #4
	mov r2, #1
	strh r2, [r0, r1]
	add r3, #0x5c
	str r2, [r0, r3]
	b _0223A54C
_0223A544:
	add r1, r3, #4
	strh r4, [r0, r1]
	add r3, #0x5c
	str r4, [r0, r3]
_0223A54C:
	ldr r3, _0223A584 ; =0x00001312
	mov r1, #0
	strb r1, [r0, r3]
	sub r4, r1, #1
	add r2, r3, #2
	strb r4, [r0, r2]
	add r2, r3, #3
	strb r4, [r0, r2]
	add r2, r3, #4
	strb r4, [r0, r2]
	add r2, r3, #0
	add r2, #0x52
	strh r1, [r0, r2]
	mov r2, #1
	add r3, #0x54
	strh r2, [r0, r3]
	mov r2, #0xe
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _0223A57A
	bl ov72_022386F4
_0223A57A:
	mov r0, #1
	pop {r4, pc}
	nop
_0223A580: .word 0x0000130C
_0223A584: .word 0x00001312
	thumb_func_end ov72_0223A520

	thumb_func_start ov72_0223A588
ov72_0223A588: ; 0x0223A588
	push {r4, lr}
	ldr r1, _0223A5A8 ; =0x00001312
	add r4, r0, #0
	ldrb r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _0223A5AC ; =ov72_0223B744
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _0223A5A2
	ldr r0, _0223A5B0 ; =0x0000130E
	ldrsb r0, [r4, r0]
	pop {r4, pc}
_0223A5A2:
	mov r0, #0
	pop {r4, pc}
	nop
_0223A5A8: .word 0x00001312
_0223A5AC: .word ov72_0223B744
_0223A5B0: .word 0x0000130E
	thumb_func_end ov72_0223A588

