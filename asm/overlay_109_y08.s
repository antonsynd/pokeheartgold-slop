	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E5BAC

	.text

	.text
	thumb_func_start ov109_021E5BAC
ov109_021E5BAC: ; 0x021E5BAC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E5BBE
	cmp r0, #1
	beq _021E5BDC
	b _021E5BEE
_021E5BBE:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021E5BEE
_021E5BDC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5BEE
	mov r0, #0
	str r0, [r4, #4]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E5BEE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov109_021E5BAC

