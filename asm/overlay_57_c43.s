	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02238B48

	.text

	.text
	thumb_func_start ov57_02238B48
ov57_02238B48: ; 0x02238B48
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02238BB4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02238BB8 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02238BBC ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _02238BC0 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02238BC4 ; =0xBFFF0000
	ldr r0, _02238BC8 ; =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_02238BB4: .word 0x04000008
_02238BB8: .word 0xFFFFCFFD
_02238BBC: .word 0x0000CFFB
_02238BC0: .word 0x00007FFF
_02238BC4: .word 0xBFFF0000
_02238BC8: .word 0x04000580
	thumb_func_end ov57_02238B48

