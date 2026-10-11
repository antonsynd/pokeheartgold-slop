	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02239B0C

	.text

	.text
	thumb_func_start ov57_02239B0C
ov57_02239B0C: ; 0x02239B0C
	push {r3, r4, r5, lr}
	add r0, #0xec
	add r5, r0, #0
	mov r4, #5
	add r5, #0x50
_02239B16:
	add r0, r5, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xd
	blt _02239B16
	pop {r3, r4, r5, pc}
	thumb_func_end ov57_02239B0C

