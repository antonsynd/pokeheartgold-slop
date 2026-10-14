	.include "macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E5BD8

	.text

	.text
	thumb_func_start ov99_021E5BD8
ov99_021E5BD8: ; 0x021E5BD8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _021E5BE8
	bl GF_AssertFail
_021E5BE8:
	cmp r6, #3
	bne _021E5C12
	mov r0, #0x2c
	add r3, r4, #0
	ldr r1, [r5]
	mul r3, r0
	add r0, r1, r3
	ldrh r2, [r0, #6]
	ldrh r1, [r1, r3]
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldrh r1, [r0, #2]
	ldrh r0, [r0, #4]
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
_021E5C12:
	mov r0, #0x2c
	ldr r2, [r5]
	mul r0, r4
	lsl r1, r6, #1
	add r0, r2, r0
	ldrh r0, [r1, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov99_021E5BD8

