	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AD40

	.text

	.text
	thumb_func_start ov43_0222AD40
ov43_0222AD40: ; 0x0222AD40
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	lsl r2, r1, #0x19
	lsr r6, r2, #0x18
	cmp r1, #2
	blo _0222AD52
	sub r1, r1, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_0222AD52:
	mov r2, #0x7d
	lsl r2, r2, #2
	lsl r4, r1, #2
	add r5, r0, r2
	ldr r0, [r5, r4]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r1, r6, #5
	ldr r0, [r5, r4]
	add r1, r1, r7
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, r4]
	bl Sprite_ResetAnimCtrlState
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222AD40

