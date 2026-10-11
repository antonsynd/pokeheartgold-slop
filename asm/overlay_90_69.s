	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_022590C0
	.public ov90_0225917C
	.public ov90_0225A198
	.public ov90_0225B230

	.text

	thumb_func_start ov90_0225B230
ov90_0225B230: ; 0x0225B230
	push {r4, lr}
	add r4, r1, #0
	bl GF_RunVramTransferTasks
	add r0, r4, #0
	add r0, #0x4c
	bl ov90_022590C0
	add r0, r4, #0
	add r0, #0xa0
	bl ov90_0225917C
	mov r0, #0xcf
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov90_0225A198
	pop {r4, pc}
	thumb_func_end ov90_0225B230

