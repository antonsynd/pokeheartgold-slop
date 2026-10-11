	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225AEC4
	.public ov48_0225B010

	.text

	thumb_func_start ov48_0225B010
ov48_0225B010: ; 0x0225B010
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #4
	add r0, r5, r0
	add r1, sp, #0
	bl ov48_0225AEC4
	add r0, r5, r4
	add r0, #0x38
	ldrb r0, [r0]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov48_0225B010

