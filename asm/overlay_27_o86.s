	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225CA98
	.extern ov27_0225CA68
	.extern ov27_0225CD18
	.extern ov27_0225CD74
	.extern ov27_0225D49C

	.text

	.text
	thumb_func_start ov27_0225CA98
ov27_0225CA98: ; 0x0225CA98
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	sub r0, r0, #2
	lsl r1, r0, #2
	ldr r0, _0225CC84 ; =ov27_0225D49C
	ldr r0, [r0, r1]
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225CAF6
	mov r2, #0xe5
	lsl r2, r2, #2
	str r0, [r4, r2]
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov27_0225CD18
	ldr r0, _0225CC88 ; =0x000005DC
	bl PlaySE
	mov r0, #9
	mov r1, #0x85
	str r0, [r4]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov27_0225CD74
	mov r1, #0xe7
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0225CB60
	add r0, r1, #4
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	blx r2
	b _0225CC80
_0225CAF6:
	ldr r0, _0225CC8C ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0225CB44
	mov r1, #0x85
	mov r0, #0xe5
	lsl r1, r1, #2
	lsl r0, r0, #2
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov27_0225CA68
	cmp r0, #0
	beq _0225CB60
	mov r1, #0x85
	mov r2, #0xe5
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov27_0225CD18
	ldr r0, _0225CC88 ; =0x000005DC
	bl PlaySE
	mov r1, #0xe7
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0225CB60
	add r0, r1, #4
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	blx r2
	b _0225CC80
_0225CB44:
	mov r1, #0x80
	tst r1, r0
	beq _0225CB90
	mov r1, #0x85
	mov r0, #0xe5
	lsl r1, r1, #2
	lsl r0, r0, #2
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #1
	bl ov27_0225CA68
	cmp r0, #0
	bne _0225CB62
_0225CB60:
	b _0225CC80
_0225CB62:
	mov r1, #0x85
	mov r2, #0xe5
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov27_0225CD18
	ldr r0, _0225CC88 ; =0x000005DC
	bl PlaySE
	mov r1, #0xe7
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0225CC80
	add r0, r1, #4
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	blx r2
	b _0225CC80
_0225CB90:
	mov r1, #0x20
	tst r1, r0
	beq _0225CBDA
	mov r1, #0x85
	mov r0, #0xe5
	lsl r1, r1, #2
	lsl r0, r0, #2
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #2
	bl ov27_0225CA68
	cmp r0, #0
	beq _0225CC80
	mov r1, #0x85
	mov r2, #0xe5
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov27_0225CD18
	ldr r0, _0225CC88 ; =0x000005DC
	bl PlaySE
	mov r1, #0xe7
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0225CC80
	add r0, r1, #4
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	blx r2
	b _0225CC80
_0225CBDA:
	mov r1, #0x10
	tst r1, r0
	beq _0225CC24
	mov r1, #0x85
	mov r0, #0xe5
	lsl r1, r1, #2
	lsl r0, r0, #2
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #3
	bl ov27_0225CA68
	cmp r0, #0
	beq _0225CC80
	mov r1, #0x85
	mov r2, #0xe5
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov27_0225CD18
	ldr r0, _0225CC88 ; =0x000005DC
	bl PlaySE
	mov r1, #0xe7
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0225CC80
	add r0, r1, #4
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	blx r2
	b _0225CC80
_0225CC24:
	mov r1, #1
	tst r1, r0
	beq _0225CC42
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov27_0225CD74
	mov r0, #9
	str r0, [r4]
	ldr r0, _0225CC88 ; =0x000005DC
	bl PlaySE
	b _0225CC80
_0225CC42:
	mov r1, #2
	tst r0, r1
	beq _0225CC80
	ldr r0, [r4, #0xc]
	bl ov01_021EF00C
	cmp r0, #0
	beq _0225CC80
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	mov r2, #0xe5
	sub r0, r0, #1
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov27_0225CD18
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov27_0225CD74
	mov r0, #9
	str r0, [r4]
	ldr r0, _0225CC88 ; =0x000005DC
	bl PlaySE
_0225CC80:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0225CC84: .word ov27_0225D49C
_0225CC88: .word 0x000005DC
_0225CC8C: .word gSystem
	thumb_func_end ov27_0225CA98

