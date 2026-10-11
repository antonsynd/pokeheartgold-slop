	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02236578

	.text

	.text
	thumb_func_start ov40_02236578
ov40_02236578: ; 0x02236578
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r2, #0x67
	add r4, r1, #0
	add r7, r3, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	mov r0, #0x6d
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov39_02227088
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov40_02236578

