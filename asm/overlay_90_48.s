	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_022590C0
	.public ov90_0225917C
	.public ov90_02259B18
	.public ov90_0225A198

	.text

	thumb_func_start ov90_02259B18
ov90_02259B18: ; 0x02259B18
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x30
	bl ov90_022590C0
	add r0, r4, #0
	add r0, #0x84
	bl ov90_0225917C
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov90_0225A198
	pop {r4, pc}
	thumb_func_end ov90_02259B18

