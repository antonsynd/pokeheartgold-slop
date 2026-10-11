	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225CA68
	.public ov27_0225CA98
	.extern ov27_0225CD18
	.extern ov27_0225CD74
	.extern ov27_0225D480
	.extern ov27_0225D49C

	.text

	.text
	thumb_func_start ov27_0225CA68
ov27_0225CA68: ; 0x0225CA68
	push {r3, r4}
	sub r1, r1, #2
	lsl r4, r1, #2
	ldr r1, _0225CA94 ; =ov27_0225D480
	ldr r3, [r0]
	ldr r4, [r1, r4]
	lsl r1, r3, #2
	add r1, r4, r1
	ldrsb r2, [r2, r1]
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	beq _0225CA86
	cmp r3, r2
	bne _0225CA8C
_0225CA86:
	mov r0, #0
	pop {r3, r4}
	bx lr
_0225CA8C:
	str r2, [r0]
	mov r0, #1
	pop {r3, r4}
	bx lr
	.balign 4, 0
_0225CA94: .word ov27_0225D480
	thumb_func_end ov27_0225CA68

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

