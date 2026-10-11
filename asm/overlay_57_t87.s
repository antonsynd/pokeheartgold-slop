	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B32C
	.public ov57_0223B3A4
	.extern ov57_022394D8
	.extern ov57_02239728
	.extern ov57_0223B504

	.text

	.text
	thumb_func_start ov57_0223B32C
ov57_0223B32C: ; 0x0223B32C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	sub r0, r0, #4
	ldr r3, [r4, r0]
	cmp r3, r2
	bne _0223B340
	mov r1, #0
_0223B340:
	cmp r1, #0
	beq _0223B36E
	add r0, r4, #0
	add r1, r3, #0
	bl ov57_022394D8
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov57_0223B504
	add r4, #0xec
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xb
	mov r3, #1
	bl ov57_02239728
	ldr r0, _0223B39C ; =0x000005DC
	bl PlaySE
	mov r0, #2
	pop {r4, pc}
_0223B36E:
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xc7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnim
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov57_0223B504
	ldr r0, _0223B3A0 ; =0x000005DD
	bl PlaySE
	mov r0, #3
	pop {r4, pc}
	nop
_0223B39C: .word 0x000005DC
_0223B3A0: .word 0x000005DD
	thumb_func_end ov57_0223B32C

	thumb_func_start ov57_0223B3A4
ov57_0223B3A4: ; 0x0223B3A4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0xc
	beq _0223B3B2
	cmp r1, #0xd
	beq _0223B3BA
	b _0223B3C2
_0223B3B2:
	mov r1, #0
	bl ov57_0223B32C
	pop {r4, pc}
_0223B3BA:
	mov r1, #1
	bl ov57_0223B32C
	pop {r4, pc}
_0223B3C2:
	mov r2, #0x3f
	lsl r2, r2, #4
	str r1, [r4, r2]
	mov r1, #1
	mov r2, #0
	bl ov57_0223B504
	ldr r0, _0223B3F0 ; =0x0000040C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B3E0
	ldr r0, _0223B3F4 ; =0x000005DC
	bl PlaySE
	b _0223B3EA
_0223B3E0:
	add r0, r4, #0
	mov r1, #1
	bl ov57_0223B32C
	pop {r4, pc}
_0223B3EA:
	mov r0, #1
	pop {r4, pc}
	nop
_0223B3F0: .word 0x0000040C
_0223B3F4: .word 0x000005DC
	thumb_func_end ov57_0223B3A4

