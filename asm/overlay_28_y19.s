	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225DB8C
	.extern ov28_0225D92C
	.extern ov28_0225D9BC
	.extern ov28_0225DA1C

	.text

	.text
	thumb_func_start ov28_0225DB8C
ov28_0225DB8C: ; 0x0225DB8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r2, r1, #0
	add r1, sp, #0x20
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	mov r0, #7
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #9
	ldr r1, _0225DBF8 ; =0x000001F3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r1, #0
	str r1, [sp, #0x1c]
	sub r0, #0x83
	sub r1, #0xa3
	add r0, r5, r0
	add r1, r5, r1
	mov r3, #4
	bl ov28_0225D92C
	mov r1, #0x17
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x20
	add r1, r5, r1
	add r2, sp, #0x24
	mov r3, #2
	bl ov28_0225D9BC
	mov r4, #0
	add r6, sp, #0x24
	add r7, sp, #0x20
_0225DBE2:
	add r0, r5, #0
	add r1, r4, #4
	add r2, r6, #0
	add r3, r7, #0
	bl ov28_0225DA1C
	add r4, r4, #1
	cmp r4, #4
	blo _0225DBE2
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225DBF8: .word 0x000001F3
	thumb_func_end ov28_0225DB8C

