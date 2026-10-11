	.include "asm/macros.inc"
	.include "overlay_46.inc"
	.include "global.inc"
	.public ov46_02259550

	.text

	.text
	thumb_func_start ov46_02259550
ov46_02259550: ; 0x02259550
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x77
	add r4, r1, #0
	bl YesNoPrompt_Create
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #0xc]
	str r5, [sp]
	str r4, [sp, #8]
	mov r1, #0x19
	add r2, sp, #0
	strb r1, [r2, #0x10]
	mov r1, #0xa
	strb r1, [r2, #0x11]
	ldrb r3, [r2, #0x12]
	mov r1, #0xf
	add r6, r0, #0
	bic r3, r1
	strb r3, [r2, #0x12]
	ldrb r3, [r2, #0x12]
	mov r1, #0xf0
	bic r3, r1
	strb r3, [r2, #0x12]
	mov r1, #0
	strb r1, [r2, #0x13]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add r0, r6, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov46_02259550

