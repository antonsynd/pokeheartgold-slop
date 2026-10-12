	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E5AFC
	.public ov87_021E5B48
	.extern ov87_021E7048
	.extern ov87_021E7FE0
	.extern ov87_021E7FEC
	.extern ov87_021E8134
	.extern ov87_021E81A0
	.extern ov87_021E81A2

	.text

	.text
	thumb_func_start ov87_021E5AFC
ov87_021E5AFC: ; 0x021E5AFC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021E5B0E
	cmp r0, #1
	beq _021E5B2E
	b _021E5B40
_021E5B0E:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x7a
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _021E5B40
_021E5B2E:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021E5B40
	mov r0, #0
	strb r0, [r4, #0xe]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E5B40:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov87_021E5AFC

	thumb_func_start ov87_021E5B48
ov87_021E5B48: ; 0x021E5B48
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _021E5B5C
	cmp r0, #1
	beq _021E5BCE
	cmp r0, #2
	beq _021E5C22
	b _021E5C2A
_021E5B5C:
	mov r0, #0xff
	mvn r0, r0
	ldr r4, _021E5C30 ; =ov87_021E81A0
	strh r0, [r6, #0x10]
	mov r7, #0
	add r5, r6, #0
_021E5B68:
	mov r1, #0x10
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r4, r2]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r1, r1, r2
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r5, r0]
	bl ov87_021E7FEC
	mov r0, #0xcb
	lsl r0, r0, #2
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r1, #0x14
	bl ov87_021E7FE0
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #4
	blt _021E5B68
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl Options_GetFrame
	add r1, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r6, r0
	bl ov87_021E8134
	add r0, r6, #0
	bl ov87_021E7048
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #3
	strh r0, [r6, #0x12]
	mov r0, #0x56
	lsl r0, r0, #4
	bl PlaySE
	mov r0, #1
	strb r0, [r6, #8]
	b _021E5C2A
_021E5BCE:
	mov r1, #0x10
	ldrsh r0, [r6, r1]
	add r0, #0x20
	strh r0, [r6, #0x10]
	mov r0, #0x12
	ldrsh r0, [r6, r0]
	lsl r2, r0, #2
	mov r0, #0xcb
	add r3, r6, r2
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldrsh r3, [r6, r1]
	ldr r1, _021E5C30 ; =ov87_021E81A0
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	ldr r3, _021E5C34 ; =ov87_021E81A2
	ldrsh r2, [r3, r2]
	bl ov87_021E7FEC
	mov r0, #0x10
	ldrsh r0, [r6, r0]
	cmp r0, #0
	blt _021E5C2A
	mov r0, #0x12
	ldrsh r0, [r6, r0]
	cmp r0, #0
	bne _021E5C0A
	mov r0, #2
	strb r0, [r6, #8]
	b _021E5C2A
_021E5C0A:
	mov r0, #0x56
	lsl r0, r0, #4
	bl PlaySE
	mov r0, #0x12
	ldrsh r0, [r6, r0]
	sub r0, r0, #1
	strh r0, [r6, #0x12]
	mov r0, #0xff
	mvn r0, r0
	strh r0, [r6, #0x10]
	b _021E5C2A
_021E5C22:
	mov r0, #0
	strh r0, [r6, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5C2A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5C30: .word ov87_021E81A0
_021E5C34: .word ov87_021E81A2
	thumb_func_end ov87_021E5B48

