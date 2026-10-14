	.include "macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E5B38
	.extern ov86_021E60B8
	.extern ov86_021E71FC
	.extern ov86_021E720C

	.text

	.text
	thumb_func_start ov86_021E5B38
ov86_021E5B38: ; 0x021E5B38
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #4]
	cmp r1, #0
	beq _021E5B4E
	cmp r1, #1
	beq _021E5B6C
	cmp r1, #2
	beq _021E5B8C
	b _021E5B9A
_021E5B4E:
	bl ov86_021E71FC
	cmp r0, #1
	bne _021E5B5E
	add r0, r4, #0
	bl ov86_021E720C
	b _021E5B64
_021E5B5E:
	add r0, r4, #0
	bl ov86_021E60B8
_021E5B64:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _021E5B9A
_021E5B6C:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x79
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _021E5B9A
_021E5B8C:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021E5B9A
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E5B9A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov86_021E5B38

