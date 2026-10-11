	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02261FC8

	.text

	.text
	thumb_func_start ov93_02261FC8
ov93_02261FC8: ; 0x02261FC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r7, #0
	add r5, r0, #0
_02261FD2:
	ldr r0, [sp]
	add r1, r0, r7
	mov r0, #6
	lsl r0, r0, #6
	ldrb r1, [r1, r0]
	cmp r1, #0x40
	bge _02261FEA
	mov r0, #0x40
	sub r6, r0, r1
	add r4, r6, #0
	sub r4, #0x50
	b _02262004
_02261FEA:
	cmp r1, #0x80
	bge _02261FFA
	mov r0, #0xa0
	sub r4, r0, r1
	sub r4, #0x10
	add r6, r4, #0
	sub r6, #0x50
	b _02262004
_02261FFA:
	sub r1, #0xa0
	mov r0, #0x40
	sub r6, r0, r1
	add r4, r6, #0
	sub r4, #0x50
_02262004:
	ldr r0, [r5, #4]
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02013794
	mov r2, #0xa8
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	sub r2, r2, r6
	bl sub_020136B4
	mov r2, #0xa8
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #8]
	sub r2, r2, r4
	bl sub_020136B4
	add r7, r7, #1
	add r5, #0x28
	cmp r7, #6
	blt _02261FD2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov93_02261FC8

