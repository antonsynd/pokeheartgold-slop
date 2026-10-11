	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0223FD38
	.public ov40_02242490

	.text

	thumb_func_start ov40_0223FD38
ov40_0223FD38: ; 0x0223FD38
	push {r4, lr}
	add r4, r0, #0
	bl ov40_02242490
	cmp r0, #0
	beq _0223FD4C
	add r0, r4, #0
	mov r1, #0x1a
	bl ov40_0222BF80
_0223FD4C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov40_0223FD38

