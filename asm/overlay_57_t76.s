	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223A07C

	.text

	.text
	thumb_func_start ov57_0223A07C
ov57_0223A07C: ; 0x0223A07C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	add r6, r0, #0
	add r5, r7, #0
	add r4, r7, #0
_0223A086:
	add r0, r6, #0
	add r1, r4, #0
	bl CapsuleGetSealI
	bl SealOnCapsuleGetID
	cmp r0, #0
	beq _0223A098
	add r5, r5, #1
_0223A098:
	add r4, r4, #1
	cmp r4, #8
	blt _0223A086
	cmp r5, #0
	beq _0223A0A4
	mov r7, #1
_0223A0A4:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov57_0223A07C

