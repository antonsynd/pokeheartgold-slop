	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EB0C0
	.extern ov102_021EA268

	.text

	.text
	thumb_func_start ov102_021EB0C0
ov102_021EB0C0: ; 0x021EB0C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov102_021EA268
	add r6, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #0
	ldr r2, _021EB12C ; =0x000001EE
	str r6, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5, r2]
	mov r1, #0x19
	mov r3, #0xf
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #0xc
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	bic r1, r3
	add r3, r2, #2
	ldr r3, [r5, r3]
	ldr r3, [r3]
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
	mov r3, #0xf
	and r3, r6
	orr r1, r3
	strb r1, [r0, #0x12]
	ldrb r1, [r0, #0x12]
	mov r3, #0xf0
	bic r1, r3
	lsl r3, r4, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	orr r1, r3
	strb r1, [r0, #0x12]
	sub r0, r2, #6
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EB12C: .word 0x000001EE
	thumb_func_end ov102_021EB0C0

