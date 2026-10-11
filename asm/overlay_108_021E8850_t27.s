	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9D30
	.extern ov108_021EAC18

	.text

	.text
	thumb_func_start ov108_021E9D30
ov108_021E9D30: ; 0x021E9D30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, _021E9DCC ; =0x00000454
	ldr r4, _021E9DD0 ; =ov108_021EAC18
	mov r6, #0
	add r5, r7, r0
_021E9D3E:
	ldr r0, _021E9DD4 ; =0x00000438
	add r1, r5, #0
	ldr r0, [r7, r0]
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #5
	ble _021E9D3E
	ldr r0, _021E9DCC ; =0x00000454
	ldr r6, _021E9DD8 ; =0x000002E2
	add r0, r7, r0
	mov r4, #0
	str r0, [sp, #0x14]
_021E9D66:
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r1, r0, #1
	lsl r0, r1, #2
	add r0, r1, r0
	lsr r3, r4, #0x1f
	str r3, [sp, #0x18]
	add r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	add r1, r4, #6
	lsl r2, r1, #4
	ldr r1, [sp, #0x14]
	ldr r5, [sp, #0x18]
	lsl r3, r4, #0x1f
	sub r3, r3, r5
	mov r5, #0x1f
	ror r3, r5
	ldr r5, [sp, #0x18]
	add r1, r1, r2
	add r3, r5, r3
	lsl r3, r3, #4
	add r3, r3, #1
	lsl r3, r3, #0x18
	ldr r0, _021E9DD4 ; =0x00000438
	str r6, [sp, #0x10]
	ldr r0, [r7, r0]
	mov r2, #5
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	sub r6, #0x1c
	lsl r0, r6, #0x10
	add r4, r4, #1
	lsr r6, r0, #0x10
	cmp r4, #6
	blt _021E9D66
	ldr r0, [r7]
	bl YesNoPrompt_Create
	ldr r1, _021E9DDC ; =0x00000514
	str r0, [r7, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9DCC: .word 0x00000454
_021E9DD0: .word ov108_021EAC18
_021E9DD4: .word 0x00000438
_021E9DD8: .word 0x000002E2
_021E9DDC: .word 0x00000514
	thumb_func_end ov108_021E9D30

