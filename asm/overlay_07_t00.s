	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221BE20
	.public ov07_0221BE44
	.extern ov07_0221F8B0

	.text

	.text
	thumb_func_start ov07_0221BE20
ov07_0221BE20: ; 0x0221BE20
	add r1, r0, #0
	add r1, #0x8d
	ldrb r1, [r1]
	cmp r1, #0
	bne _0221BE32
	ldr r1, _0221BE40 ; =ov07_0221BE44
	add r0, #0xbc
	str r1, [r0]
	bx lr
_0221BE32:
	add r1, r0, #0
	add r1, #0x8d
	ldrb r1, [r1]
	add r0, #0x8d
	sub r1, r1, #1
	strb r1, [r0]
	bx lr
	.balign 4, 0
_0221BE40: .word ov07_0221BE44
	thumb_func_end ov07_0221BE20

	thumb_func_start ov07_0221BE44
ov07_0221BE44: ; 0x0221BE44
	push {r4, lr}
	add r4, r0, #0
_0221BE48:
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	bl ov07_0221F8B0
	add r1, r0, #0
	add r0, r4, #0
	blx r1
	add r0, r4, #0
	add r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0221BE66
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _0221BE48
_0221BE66:
	pop {r4, pc}
	thumb_func_end ov07_0221BE44

