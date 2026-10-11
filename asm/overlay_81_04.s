	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223F0BC
	.public ov81_0223F1A4
	.public ov81_0224086C
	.public ov81_022408A0
	.public ov81_02240F18
	.public ov81_02240FA4
	.public ov81_02241BD0
	.public ov81_02241C0C
	.public ov81_02241E68
	.public ov81_02241FEC
	.public ov81_0224218C
	.public ov81_02242300
	.public ov81_02242694
	.public ov81_02242D88
	.public ov81_02242F54
	.public ov81_02242F94
	.public ov81_02242FB0

	.text

	thumb_func_start ov81_0223F0BC
ov81_0223F0BC: ; 0x0223F0BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223F1A0 ; =0x00000468
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov81_02242F54
	ldr r0, _0223F1A0 ; =0x00000468
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov81_02242FB0
	ldr r0, _0223F1A0 ; =0x00000468
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov81_02242F94
	ldrb r0, [r5, #0x11]
	cmp r0, #2
	blo _0223F130
	mov r2, #0xf2
	lsl r2, r2, #2
	add r0, r2, #0
	add r0, #0xa0
	ldrh r1, [r5, r2]
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _0223F130
	add r0, r2, #2
	ldrh r0, [r5, r0]
	mov r1, #0
	add r3, r1, #0
	strh r0, [r5, r2]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	bl ov81_02241E68
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
_0223F130:
	ldrb r0, [r5, #0x11]
	mov r2, #0
	sub r0, r0, #1
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x11]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	strh r2, [r1, r0]
	ldrb r0, [r5, #9]
	bl ov81_02240F18
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0223F168
	add r6, r5, #0
	add r6, #0x50
_0223F156:
	add r0, r4, #2
	lsl r0, r0, #4
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r4, r4, #1
	cmp r4, r7
	blt _0223F156
_0223F168:
	ldrb r2, [r5, #0x11]
	add r0, r5, #0
	mov r1, #0
	add r2, r2, #1
	bl ov81_022408A0
	add r0, r5, #0
	mov r1, #0
	bl ov81_0224086C
	strb r0, [r5, #0x10]
	add r0, r5, #0
	bl ov81_02241C0C
	add r0, r5, #0
	bl ov81_02241FEC
	add r0, r5, #0
	bl ov81_0224218C
	ldr r1, _0223F1A0 ; =0x00000468
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #6
	bl ov81_02242300
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F1A0: .word 0x00000468
	thumb_func_end ov81_0223F0BC

	thumb_func_start ov81_0223F1A4
ov81_0223F1A4: ; 0x0223F1A4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov80_02236DD4
	add r2, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #7
	bhi _0223F254
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223F1C2: ; jump table
	.short _0223F1D2 - _0223F1C2 - 2 ; case 0
	.short _0223F1F6 - _0223F1C2 - 2 ; case 1
	.short _0223F202 - _0223F1C2 - 2 ; case 2
	.short _0223F208 - _0223F1C2 - 2 ; case 3
	.short _0223F214 - _0223F1C2 - 2 ; case 4
	.short _0223F244 - _0223F1C2 - 2 ; case 5
	.short _0223F2C2 - _0223F1C2 - 2 ; case 6
	.short _0223F2FA - _0223F1C2 - 2 ; case 7
_0223F1D2:
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F30C
_0223F1F6:
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F30C
_0223F202:
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F30C
_0223F208:
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F30C
_0223F214:
	add r0, r4, #0
	mov r1, #0
	bl ov81_022408A0
	add r0, r4, #0
	mov r1, #1
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	ldr r0, _0223F310 ; =0x0000046C
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, r0]
	bl ov81_02241BD0
	add r0, r4, #0
	mov r1, #1
	bl ov81_02242694
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F30C
_0223F244:
	ldr r0, _0223F310 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223F256
	cmp r0, #2
	beq _0223F26E
_0223F254:
	b _0223F30C
_0223F256:
	ldr r0, _0223F310 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242694
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F30C
_0223F26E:
	ldr r0, _0223F310 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242694
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242D88
	ldrb r0, [r4, #0x11]
	mov r2, #0
	sub r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	strh r2, [r1, r0]
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223F2BE
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov81_02240FA4
_0223F2BE:
	mov r0, #1
	pop {r4, pc}
_0223F2C2:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #0
	bne _0223F2D0
	mov r0, #1
	pop {r4, pc}
_0223F2D0:
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov81_02240FA4
	cmp r0, #1
	bne _0223F30C
	add r0, r4, #0
	mov r1, #2
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	bl sub_02037BEC
	mov r0, #0xa4
	bl sub_02037AC0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F30C
_0223F2FA:
	mov r0, #0xa4
	bl sub_02037B38
	cmp r0, #1
	bne _0223F30C
	bl sub_02037BEC
	mov r0, #1
	pop {r4, pc}
_0223F30C:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0223F310: .word 0x0000046C
	thumb_func_end ov81_0223F1A4

