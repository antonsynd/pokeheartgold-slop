	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ECEA4

	.text

	.text
	thumb_func_start ov103_021ECEA4
ov103_021ECEA4: ; 0x021ECEA4
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, [r0, #0xc]
	ldr r2, _021ECEE8 ; =0x000003A6
	ldr r1, [r1]
	mov r4, #0xa
	str r1, [sp]
	mov r1, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r4, [sp, #0xc]
	mov r2, #0x19
	add r3, sp, #0
	strb r2, [r3, #0x10]
	strb r4, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf
	bic r4, r2
	strb r4, [r3, #0x12]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf0
	bic r4, r2
	strb r4, [r3, #0x12]
	strb r1, [r3, #0x13]
	ldr r1, [r0, #0xc]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021ECEE8: .word 0x000003A6
	thumb_func_end ov103_021ECEA4

