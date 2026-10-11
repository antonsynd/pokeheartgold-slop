	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265858

    .text

	.text
	thumb_func_start ov49_02265858
ov49_02265858: ; 0x02265858
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02265888 ; =0x000106DC
	mov r6, #0
	add r4, r5, r0
	ldr r0, _0226588C ; =0x0001081C
	add r7, r5, r0
_02265866:
	ldr r0, _02265888 ; =0x000106DC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0226587C
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020180F8
	ldr r0, _02265888 ; =0x000106DC
	mov r1, #0
	str r1, [r5, r0]
_0226587C:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #0x10
	blt _02265866
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02265888: .word 0x000106DC
_0226588C: .word 0x0001081C
	thumb_func_end ov49_02265858

