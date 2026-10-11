	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D2B0

	.text

	.text
	thumb_func_start ov07_0221D2B0
ov07_0221D2B0: ; 0x0221D2B0
	ldr r2, [r0, #0x18]
	add r1, r0, #0
	add r2, r2, #4
	str r2, [r0, #0x18]
	ldr r3, [r2]
	add r2, r2, #4
	str r2, [r0, #0x18]
	add r2, r0, #0
	add r2, #0xc0
	ldr r2, [r2]
	add r1, #0x18
	ldrh r2, [r2, #0x10]
	cmp r3, r2
	bne _0221D2DA
	ldr r0, [r0, #0x18]
	ldr r2, [r1]
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r2, r0
	str r0, [r1]
	bx lr
_0221D2DA:
	ldr r0, [r1]
	add r0, r0, #4
	str r0, [r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov07_0221D2B0

