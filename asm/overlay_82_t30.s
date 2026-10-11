	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223F6E8
	.extern ov82_0223F74C
	.extern ov82_0223F770
	.extern ov82_0223F808

	.text

	.text
	thumb_func_start ov82_0223F6E8
ov82_0223F6E8: ; 0x0223F6E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	add r7, r2, #0
	bl ov80_0223792C
	cmp r0, #0
	bne _0223F6FE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223F6FE:
	cmp r4, #4
	beq _0223F70C
	cmp r4, #5
	beq _0223F718
	cmp r4, #6
	beq _0223F726
	b _0223F732
_0223F70C:
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0x27
	bl ov82_0223F74C
	b _0223F732
_0223F718:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r6, #0x28
	bl ov82_0223F770
	b _0223F732
_0223F726:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r6, #0x29
	bl ov82_0223F808
_0223F732:
	mov r1, #0x89
	lsl r1, r1, #2
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #0x2c
	bl sub_02037030
	cmp r0, #1
	bne _0223F748
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223F748:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov82_0223F6E8

