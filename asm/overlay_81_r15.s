	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223FBAC
	.extern ov81_0223FC60
	.extern ov81_0224086C
	.extern ov81_02241BD0
	.extern ov81_02242694
	.extern ov81_02242E08

	.text

	.text
	thumb_func_start ov81_0223FBAC
ov81_0223FBAC: ; 0x0223FBAC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0223FBC0
	cmp r1, #1
	beq _0223FBE2
	cmp r1, #2
	beq _0223FC52
	b _0223FC56
_0223FBC0:
	mov r1, #0xa
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	ldr r0, _0223FC5C ; =0x0000046C
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, r0]
	bl ov81_02241BD0
	add r0, r4, #0
	mov r1, #1
	bl ov81_02242694
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FC56
_0223FBE2:
	ldr r0, _0223FC5C ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223FBF4
	cmp r0, #2
	beq _0223FC28
	b _0223FC56
_0223FBF4:
	ldr r0, _0223FC5C ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242694
	ldrb r1, [r4, #0x13]
	mov r0, #8
	bic r1, r0
	strb r1, [r4, #0x13]
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223FC20
	add r0, r4, #0
	mov r1, #2
	bl ov81_0224086C
	strb r0, [r4, #0x10]
_0223FC20:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FC56
_0223FC28:
	ldr r0, _0223FC5C ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242694
	add r0, r4, #0
	bl ov81_0223FC60
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242E08
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FC56
_0223FC52:
	mov r0, #1
	pop {r4, pc}
_0223FC56:
	mov r0, #0
	pop {r4, pc}
	nop
_0223FC5C: .word 0x0000046C
	thumb_func_end ov81_0223FBAC

