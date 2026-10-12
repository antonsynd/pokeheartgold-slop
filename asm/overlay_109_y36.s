	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E68D4

	.text

	.text
	thumb_func_start ov109_021E68D4
ov109_021E68D4: ; 0x021E68D4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E6916
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Inv
	str r0, [sp, #0x10]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl FX_Inv
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp]
	ldr r0, [r4, #0x14]
	mov r1, #2
	add r2, sp, #4
	mov r3, #0x80
	bl SetBgAffine
	ldrb r1, [r4, #0x18]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x18]
_021E6916:
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov109_021E68D4

