	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224AFB8
	.extern ov71_02247424

	.text

	.text
	thumb_func_start ov71_0224AFB8
ov71_0224AFB8: ; 0x0224AFB8
	push {r4, lr}
	add r4, r0, #0
	beq _0224AFD2
	bl SysTask_GetData
	ldr r1, [r0, #0x1c]
	mov r2, #0
	str r2, [r1]
	bl ov71_02247424
	add r0, r4, #0
	bl SysTask_Destroy
_0224AFD2:
	pop {r4, pc}
	thumb_func_end ov71_0224AFB8

