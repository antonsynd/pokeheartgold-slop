	.include "macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223FDC8

	.text

	.text
	thumb_func_start ov82_0223FDC8
ov82_0223FDC8: ; 0x0223FDC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #0x6d
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	str r5, [sp]
	str r2, [sp, #4]
	mov r1, #0x18
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #0xa
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	mov r3, #0xf
	bic r1, r3
	mov r3, #0xf
	and r3, r4
	orr r1, r3
	strb r1, [r0, #0x12]
	ldrb r3, [r0, #0x12]
	mov r1, #0xf0
	bic r3, r1
	strb r3, [r0, #0x12]
	strb r2, [r0, #0x13]
	add r0, r6, #0
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov82_0223FDC8

