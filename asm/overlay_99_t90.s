	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E9430

	.text

	.text
	thumb_func_start ov99_021E9430
ov99_021E9430: ; 0x021E9430
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xa
	blo _021E9440
	bl GF_AssertFail
_021E9440:
	cmp r6, #0
	beq _021E9450
	ldr r0, [r5]
	ldr r1, [r0, #4]
	mov r0, #0xa4
	mul r0, r4
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_021E9450:
	add r1, r5, #4
	mov r0, #0x2c
	mul r0, r4
	add r0, r1, r0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov99_021E9430

