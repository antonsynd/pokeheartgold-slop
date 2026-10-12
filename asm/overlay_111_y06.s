	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E5C54

	.text

	.text
	thumb_func_start ov111_021E5C54
ov111_021E5C54: ; 0x021E5C54
	push {r3, r4, lr}
	sub sp, #0x14
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	ldr r2, [r0, #8]
	add r3, sp, #0
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r2, #0xc8
	str r2, [sp, #8]
	mov r2, #6
	str r2, [sp, #0xc]
	mov r2, #0x19
	strb r2, [r3, #0x10]
	mov r2, #0xa
	strb r2, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf0
	bic r4, r2
	strb r4, [r3, #0x12]
	ldr r0, [r0, #0x18]
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov111_021E5C54

