	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E6AF4

	.text

	.text
	thumb_func_start ov87_021E6AF4
ov87_021E6AF4: ; 0x021E6AF4
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #0x58]
	mov r3, #0xe
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	lsl r3, r3, #6
	mov r1, #9
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x18
	add r1, sp, #0
	strb r2, [r1, #0x10]
	mov r2, #8
	strb r2, [r1, #0x11]
	mov r2, #0
	strb r2, [r1, #0x13]
	add r3, #0x10
	ldr r0, [r0, r3]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {pc}
	.balign 4, 0
	thumb_func_end ov87_021E6AF4

