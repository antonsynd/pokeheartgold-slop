	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED2D4
	.extern ov103_021EDF68
	.extern ov103_021EECA8

	.text

	.text
	thumb_func_start ov103_021ED2D4
ov103_021ED2D4: ; 0x021ED2D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	lsl r2, r1, #2
	ldr r1, _021ED310 ; =ov103_021EECA8
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4]
	cmp r0, #0x19
	bne _021ED2EE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021ED2EE:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021ED30C
	ldr r0, [r0, #4]
	bl sub_02019934
	ldr r0, [r5, #0xc]
	bl ov103_021EDF68
	mov r0, #0x95
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl SpriteSystem_DrawSprites
_021ED30C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021ED310: .word ov103_021EECA8
	thumb_func_end ov103_021ED2D4

