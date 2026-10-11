	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_037

	.text

	thumb_func_start FrtCmd_037
FrtCmd_037: ; 0x0222C6E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0209680C
	add r5, r0, #0
	add r0, r4, #0
	bl FrontierScript_ReadVar
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	bl ov42_02228110
	add r1, r0, #0
	add r0, r5, #0
	bl ov80_02239590
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end FrtCmd_037

