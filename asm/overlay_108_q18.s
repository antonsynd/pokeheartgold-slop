	.include "macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E5F38
	.extern ov108_021E61E8
	.extern ov108_021E6238
	.extern ov108_021E767C
	.extern ov108_021E7700
	.extern ov108_021E79A8
	.extern ov108_021E7BB4

	.text

	.text
	thumb_func_start ov108_021E5F38
ov108_021E5F38: ; 0x021E5F38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021E5F50
	cmp r0, #2
	beq _021E5F88
	b _021E5F9E
_021E5F50:
	ldr r1, _021E6008 ; =0x000184E0
	mov r4, #1
	sub r2, r1, #2
	ldrb r3, [r5, r2]
	ldrb r0, [r5, r1]
	mov r2, #6
	mul r2, r3
	add r0, r0, r2
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	sub r0, r1, #1
	ldrb r3, [r5, r0]
	mov r0, #0x7a
	mul r0, r3
	add r0, r5, r0
	ldrb r0, [r0, #0x1c]
	cmp r2, r0
	beq _021E5FA2
	add r0, r1, #0
	add r0, #8
	str r4, [r5, r0]
	sub r1, r1, #1
	add r0, r5, #0
	ldrb r1, [r5, r1]
	add r0, #0x1c
	bl SafariZone_InitAreaInSet
	b _021E5FA2
_021E5F88:
	ldr r0, _021E600C ; =0x000184DF
	mov r2, #0x7a
	ldrb r1, [r5, r0]
	add r0, r5, #0
	mul r2, r1
	add r2, r5, r2
	ldrb r2, [r2, #0x1c]
	bl ov108_021E7BB4
	mov r4, #0
	b _021E5FA2
_021E5F9E:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E5FA2:
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl YesNoPrompt_IsInTouchMode
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	cmp r6, r0
	beq _021E5FC6
	cmp r6, #0
	bne _021E5FC0
	add r0, r5, #0
	bl ov108_021E61E8
	b _021E5FC6
_021E5FC0:
	add r0, r5, #0
	bl ov108_021E6238
_021E5FC6:
	mov r0, #0x13
	str r6, [r5, #0x10]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl YesNoPrompt_Reset
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r5, r0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	mov r1, #0
	bl ov108_021E767C
	mov r2, #1
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl ov108_021E7700
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl ov108_021E79A8
	cmp r4, #0
	beq _021E6004
	mov r0, #2
	pop {r4, r5, r6, pc}
_021E6004:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E6008: .word 0x000184E0
_021E600C: .word 0x000184DF
	thumb_func_end ov108_021E5F38

