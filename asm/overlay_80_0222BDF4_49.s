	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_050

	.text

	thumb_func_start FrtCmd_050
FrtCmd_050: ; 0x0222CA54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FrontierScript_ReadVar
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0209680C
	add r1, r4, #0
	mov r2, #0
	bl ov80_02239708
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_050

