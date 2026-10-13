	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E874C
	.extern ov102_021E8FD8

	.text

	.text
	thumb_func_start ov102_021E874C
ov102_021E874C: ; 0x021E874C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	add r0, r1, #0
	bl ov102_021E8FD8
	strh r0, [r4, #4]
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, _021E8788 ; =0x0000FFFF
	strh r1, [r4, #0xc]
	strh r0, [r4, #0xe]
	ldrh r2, [r4, #4]
	cmp r2, #0xa
	bls _021E8784
	add r1, r2, #0
	sub r1, #0xa
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #1
	and r0, r2
	add r0, r1, r0
	strh r0, [r4, #2]
	pop {r4, pc}
_021E8784:
	strh r1, [r4, #2]
	pop {r4, pc}
	.balign 4, 0
_021E8788: .word 0x0000FFFF
	thumb_func_end ov102_021E874C

