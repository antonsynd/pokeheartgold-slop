	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6078
	.public ov68_021E60D8
	.extern ov68_021E7BC8
	.extern ov68_021E7D3C
	.extern ov68_021E7D40

	.text

	.text
	thumb_func_start ov68_021E6078
ov68_021E6078: ; 0x021E6078
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r3, #0x6d
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r1, #0x1a
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #0xa
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	mov r2, #0xf
	lsl r3, r3, #2
	bic r1, r2
	ldr r2, [r4, r3]
	sub r3, #0x9c
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	mov r2, #0xf
	and r2, r5
	orr r1, r2
	strb r1, [r0, #0x12]
	ldrb r2, [r0, #0x12]
	mov r1, #0xf0
	bic r2, r1
	strb r2, [r0, #0x12]
	ldr r0, [r4, r3]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	mov r0, #1
	bl ov68_021E7BC8
	mov r0, #4
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov68_021E6078

	thumb_func_start ov68_021E60D8
ov68_021E60D8: ; 0x021E60D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021E60F0
	cmp r0, #2
	beq _021E6108
	b _021E6120
_021E60F0:
	ldr r1, _021E6140 ; =0x000001BA
	add r0, r5, #0
	ldrb r1, [r5, r1]
	lsl r2, r1, #3
	ldr r1, _021E6144 ; =ov68_021E7D3C
	ldr r1, [r1, r2]
	blx r1
	add r4, r0, #0
	mov r0, #0
	bl ov68_021E7BC8
	b _021E6124
_021E6108:
	ldr r1, _021E6140 ; =0x000001BA
	add r0, r5, #0
	ldrb r1, [r5, r1]
	lsl r2, r1, #3
	ldr r1, _021E6148 ; =ov68_021E7D40
	ldr r1, [r1, r2]
	blx r1
	add r4, r0, #0
	mov r0, #0
	bl ov68_021E7BC8
	b _021E6124
_021E6120:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E6124:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_IsInTouchMode
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x9c
	ldr r0, [r5, r1]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6140: .word 0x000001BA
_021E6144: .word ov68_021E7D3C
_021E6148: .word ov68_021E7D40
	thumb_func_end ov68_021E60D8

