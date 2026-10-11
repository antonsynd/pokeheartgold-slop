	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241BD0
	.public ov81_02241C0C
	.extern ov81_02241CEC
	.extern ov81_02241E68

	.text

	.text
	thumb_func_start ov81_02241BD0
ov81_02241BD0: ; 0x02241BD0
	push {lr}
	sub sp, #0x14
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0xe
	lsl r1, r1, #6
	str r1, [sp, #8]
	mov r1, #0xe
	str r1, [sp, #0xc]
	mov r1, #0x19
	add r2, sp, #0
	strb r1, [r2, #0x10]
	mov r1, #0xa
	strb r1, [r2, #0x11]
	ldrb r3, [r2, #0x12]
	mov r1, #0xf
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
	add sp, #0x14
	pop {pc}
	thumb_func_end ov81_02241BD0

	thumb_func_start ov81_02241C0C
ov81_02241C0C: ; 0x02241C0C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02241C80 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	cmp r2, #6
	bhs _02241C7C
	ldrb r1, [r4, #0x11]
	mov r0, #0
	cmp r1, #0
	ble _02241C3E
	mov r3, #0xf2
	lsl r3, r3, #2
_02241C2A:
	lsl r5, r0, #1
	add r5, r4, r5
	ldrh r5, [r5, r3]
	cmp r2, r5
	beq _02241C3E
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r1
	blt _02241C2A
_02241C3E:
	cmp r1, #0
	beq _02241C5A
	cmp r0, r1
	beq _02241C5A
	lsl r0, r1, #2
	add r1, r4, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	mov r2, #1
	bl Pokepic_SetAttr
	b _02241C76
_02241C5A:
	add r0, r4, #0
	mov r3, #0
	bl ov81_02241E68
	ldrb r0, [r4, #0x11]
	mov r2, #0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	bl Pokepic_SetAttr
_02241C76:
	add r0, r4, #0
	bl ov81_02241CEC
_02241C7C:
	pop {r3, r4, r5, pc}
	nop
_02241C80: .word 0x00000464
	thumb_func_end ov81_02241C0C

