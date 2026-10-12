	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221BE44
	.extern ov07_0221F8B0

	.text

	.text
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

