	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225A16C
	.extern ov89_0225A1D8
	.extern ov89_0225CBA4

	.text

	.text
	thumb_func_start ov89_0225A16C
ov89_0225A16C: ; 0x0225A16C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	ldr r4, _0225A1D0 ; =ov89_0225CBA4
	add r5, r0, #0
	add r6, r1, #0
	add r3, sp, #0
	mov r2, #6
_0225A17A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225A17A
	ldr r0, [r4]
	mov r4, #0
	str r0, [r3]
	mov r0, #0x99
	add r2, r5, #0
	lsl r0, r0, #4
_0225A18E:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0225A1B6
	lsl r1, r6, #5
	add r1, #0x10
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	add r2, sp, #0
	bl SpriteSystem_NewSprite
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x99
	lsl r1, r1, #4
	str r0, [r2, r1]
	b _0225A1BE
_0225A1B6:
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #3
	blt _0225A18E
_0225A1BE:
	add r0, r5, #0
	add r1, r6, #0
	bl ov89_0225A1D8
	ldr r0, _0225A1D4 ; =0x000005E5
	bl PlaySE
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0225A1D0: .word ov89_0225CBA4
_0225A1D4: .word 0x000005E5
	thumb_func_end ov89_0225A16C

