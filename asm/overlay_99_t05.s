	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E5B90

	.text

	.text
	thumb_func_start ov99_021E5B90
ov99_021E5B90: ; 0x021E5B90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _021E5B9E
	bl GF_AssertFail
_021E5B9E:
	cmp r4, #5
	blt _021E5BA6
	bl GF_AssertFail
_021E5BA6:
	mov r0, #0x2c
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldrh r0, [r0, #6]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov99_021E5B90

