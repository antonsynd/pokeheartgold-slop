	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02221C2C
	.extern ov13_022227A0
	.extern ov13_02222948
	.extern ov13_02222A84
	.extern ov13_02222A9C
	.extern ov13_02245A20

	.text

	.text
	thumb_func_start ov13_02221C2C
ov13_02221C2C: ; 0x02221C2C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02221C74 ; =ov13_02245A20
	add r5, r1, #0
	mov r4, #0
	bl ov13_02222A9C
	add r3, r0, #0
	ldr r2, _02221C74 ; =ov13_02245A20
	add r0, r5, #0
	mov r1, #8
	bl ov13_022227A0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #6
	bl ov13_02222948
	cmp r0, #0
	beq _02221C58
	sub r4, r4, #1
	b _02221C6E
_02221C58:
	ldrh r0, [r6, #6]
	bl ov13_02222A84
	add r6, r0, #0
	ldrh r0, [r5, #6]
	bl ov13_02222A84
	add r1, r6, #1
	cmp r1, r0
	beq _02221C6E
	sub r4, r4, #2
_02221C6E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02221C74: .word ov13_02245A20
	thumb_func_end ov13_02221C2C

