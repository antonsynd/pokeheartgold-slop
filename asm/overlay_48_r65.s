	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259F8C
	.extern ov48_0225B1C4

	.text

	.text
	thumb_func_start ov48_02259F8C
ov48_02259F8C: ; 0x02259F8C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _02259F9E
	cmp r0, #1
	beq _02259FD8
	b _02259FE0
_02259F9E:
	ldr r0, [r5, #4]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02259FE0
	ldr r3, _02259FE8 ; =ov48_0225B1C4
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x10
	bl GetWindowBgConfig
	str r0, [sp]
	ldr r0, [r5, #0x20]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259FE0
_02259FD8:
	ldr r0, [r5, #0x20]
	bl YesNoPrompt_HandleInput
	add r4, r0, #0
_02259FE0:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02259FE8: .word ov48_0225B1C4
	thumb_func_end ov48_02259F8C

