	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222ADB8

	.text

	.text
	thumb_func_start ov43_0222ADB8
ov43_0222ADB8: ; 0x0222ADB8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r1, #0x19
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0xd
	str r0, [sp, #0x10]
	add r0, sp, #4
	strb r1, [r0, #0x10]
	mov r1, #9
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	mov r2, #0xf
	bic r1, r2
	ldr r2, [r5]
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #0xf
	and r2, r3
	orr r1, r2
	strb r1, [r0, #0x12]
	ldrb r1, [r0, #0x12]
	mov r2, #0xf0
	bic r1, r2
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r0, #0x12]
	mov r1, #0
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x60]
	add r1, sp, #4
	bl YesNoPrompt_InitFromTemplate
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #8
	mov r2, #0
	mov r3, #0x3d
	bl StartBrightnessTransition
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov43_0222ADB8

