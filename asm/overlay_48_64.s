	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225B13C

	.text

	thumb_func_start ov48_0225B13C
ov48_0225B13C: ; 0x0225B13C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0225B142:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov45_0222D724
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _0225B158
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0225B158:
	add r4, r4, #1
	cmp r4, #0x32
	blt _0225B142
	mov r0, #0x32
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov48_0225B13C

