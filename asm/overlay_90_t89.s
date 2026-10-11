	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225B340

	.text

	.text
	thumb_func_start ov90_0225B340
ov90_0225B340: ; 0x0225B340
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	add r7, r3, #0
	bl memset
	ldr r0, [r4]
	str r0, [r5, #8]
	mov r0, #4
	str r0, [r5, #0xc]
	mov r0, #0x8b
	str r0, [r5, #0x10]
	mov r0, #2
	str r0, [r5, #0x14]
	mov r0, #0x18
	strb r0, [r5, #0x18]
	mov r0, #8
	strb r0, [r5, #0x19]
	mov r0, #0
	strb r0, [r5, #0x1b]
	add r0, r7, #0
	bl YesNoPrompt_Create
	str r0, [r5, #4]
	strb r6, [r5, #1]
	mov r0, #1
	strb r0, [r5, #0x1d]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov90_0225B340

