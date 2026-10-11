	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_122
	.public ov80_0222CF6C

	.text

	thumb_func_start FrtCmd_122
FrtCmd_122: ; 0x0222CF38
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl FrontierScript_ReadVar
	add r6, r0, #0
	bl ov80_0222CF6C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	add r2, r6, #0
	bl BufferIntegerAsString
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_122

