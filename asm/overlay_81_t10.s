	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223F6A8
	.extern ov81_0223F754
	.extern ov81_0224086C
	.extern ov81_02241BD0
	.extern ov81_02242694
	.extern ov81_02242E08

	.text

	.text
	thumb_func_start ov81_0223F6A8
ov81_0223F6A8: ; 0x0223F6A8
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0223F6BC
	cmp r1, #1
	beq _0223F6DE
	cmp r1, #2
	beq _0223F746
	b _0223F74A
_0223F6BC:
	mov r1, #0xa
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	ldr r0, _0223F750 ; =0x0000046C
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, r0]
	bl ov81_02241BD0
	add r0, r4, #0
	mov r1, #1
	bl ov81_02242694
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F74A
_0223F6DE:
	ldr r0, _0223F750 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223F6F0
	cmp r0, #2
	beq _0223F71C
	b _0223F74A
_0223F6F0:
	ldr r0, _0223F750 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242694
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223F714
	add r0, r4, #0
	mov r1, #2
	bl ov81_0224086C
	strb r0, [r4, #0x10]
_0223F714:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F74A
_0223F71C:
	ldr r0, _0223F750 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242694
	add r0, r4, #0
	bl ov81_0223F754
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242E08
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F74A
_0223F746:
	mov r0, #1
	pop {r4, pc}
_0223F74A:
	mov r0, #0
	pop {r4, pc}
	nop
_0223F750: .word 0x0000046C
	thumb_func_end ov81_0223F6A8

