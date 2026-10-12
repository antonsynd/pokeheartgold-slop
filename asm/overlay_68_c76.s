	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E7A18
	.extern ov68_021E66A0

	.text

	.text
	thumb_func_start ov68_021E7A18
ov68_021E7A18: ; 0x021E7A18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
	mov r4, #4
_021E7A24:
	cmp r6, r7
	bne _021E7A44
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #8
	lsl r2, r4, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl ov68_021E66A0
	b _021E7A82
_021E7A44:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r6, r0
	blo _021E7A6A
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	lsl r2, r4, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl ov68_021E66A0
	b _021E7A82
_021E7A6A:
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r2, r4, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl ov68_021E66A0
_021E7A82:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blo _021E7A24
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov68_021E7A18

