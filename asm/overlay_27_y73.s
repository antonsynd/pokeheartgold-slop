	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225CD94
	.extern ov27_0225CCE0
	.extern ov27_0225D120

	.text

	.text
	thumb_func_start ov27_0225CD94
ov27_0225CD94: ; 0x0225CD94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0225CEA0 ; =ov27_0225D120
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225CDFE
	cmp r0, #0
	bne _0225CDD2
	mov r1, #0xe5
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov27_0225CCE0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0225CEA4 ; =0x000005DC
	bl PlaySE
	mov r0, #5
	str r0, [r4]
	b _0225CE9C
_0225CDD2:
	cmp r0, #1
	bne _0225CE9C
	mov r1, #0xe5
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov27_0225CCE0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0225CEA4 ; =0x000005DC
	bl PlaySE
	mov r0, #5
	str r0, [r4]
	b _0225CE9C
_0225CDFE:
	ldr r0, _0225CEA8 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0225CE2A
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0225CE18
	ldr r0, _0225CEA4 ; =0x000005DC
	bl PlaySE
_0225CE18:
	mov r1, #0xe5
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov27_0225CCE0
	b _0225CE9C
_0225CE2A:
	mov r1, #0x80
	tst r1, r0
	beq _0225CE52
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0225CE40
	ldr r0, _0225CEA4 ; =0x000005DC
	bl PlaySE
_0225CE40:
	mov r1, #0xe5
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov27_0225CCE0
	b _0225CE9C
_0225CE52:
	mov r2, #1
	add r1, r0, #0
	tst r1, r2
	beq _0225CE72
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	mov r0, #5
	str r0, [r4]
	ldr r0, _0225CEA4 ; =0x000005DC
	bl PlaySE
	b _0225CE9C
_0225CE72:
	mov r1, #2
	tst r0, r1
	beq _0225CE9C
	mov r1, #0xe5
	lsl r1, r1, #2
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov27_0225CCE0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0225CEA4 ; =0x000005DC
	bl PlaySE
	mov r0, #5
	str r0, [r4]
_0225CE9C:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0225CEA0: .word ov27_0225D120
_0225CEA4: .word 0x000005DC
_0225CEA8: .word gSystem
	thumb_func_end ov27_0225CD94

