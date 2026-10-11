	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BC44
	.public ov40_0222FB74

	.text

	thumb_func_start ov40_0222FB74
ov40_0222FB74: ; 0x0222FB74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	bl ov40_0222BC44
	bl sub_0203A86C
	mov r0, #1
	str r0, [r4, #4]
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_0222FB74

