	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_022594A8
	.public ov48_02259650
	.public ov48_02259724
	.public ov48_02259788

	.text

	thumb_func_start ov48_022594A8
ov48_022594A8: ; 0x022594A8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl NARC_Delete
	bl GF_DestroyVramTransferManager
	add r0, r4, #0
	bl ov48_02259650
	add r0, r4, #0
	bl ov48_02259724
	add r0, r4, #0
	bl ov48_02259788
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov48_022594A8

