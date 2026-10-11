	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_049

	.text

	thumb_func_start FrtCmd_049
FrtCmd_049: ; 0x0222CA1C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl FrontierScript_ReadVar
	add r5, r0, #0
	add r0, r4, #0
	bl FrontierScript_ReadVar
	add r6, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0209680C
	add r1, r5, #0
	add r4, r0, #0
	bl ov80_02239700
	add r1, r6, #0
	bl ManagedSprite_SetAnim
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov80_02239708
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_049

