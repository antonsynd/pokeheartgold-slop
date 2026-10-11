	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8F7C
	.public ov102_021EBBD0

	.text

	thumb_func_start ov102_021EBBD0
ov102_021EBBD0: ; 0x021EBBD0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov102_021E8F7C
	cmp r0, #0
	bne _021EBBE4
	mov r3, #3
	mvn r3, r3
	b _021EBBE6
_021EBBE4:
	mov r3, #0xfc
_021EBBE6:
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #0
	bl BgSetPosTextAndCommit
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBBD0

