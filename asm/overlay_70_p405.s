#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022421D0
	.extern ov70_02238F9C
	.extern ov70_02242164
	.extern ov70_02245E26
	.extern ov70_02245E27
	.extern ov70_02245EA8
	.extern ov70_02245EA9
	.extern ov70_02245EAA
	.extern ov70_02245EAB

	.text

	.text
	thumb_func_start ov70_022421D0
ov70_022421D0: ; 0x022421D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x48]
	cmp r1, #9
	bge _022421E0
	add r0, #0x7e
	strb r1, [r0]
_022421E0:
	ldr r0, _02242344 ; =gSystem
	mov r2, #0x40
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _022421F6
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242348 ; =ov70_02245EA8
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _0224222A
_022421F6:
	mov r2, #0x80
	tst r2, r0
	beq _02242208
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _0224234C ; =ov70_02245EA9
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _0224222A
_02242208:
	mov r2, #0x20
	tst r2, r0
	beq _0224221A
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242350 ; =ov70_02245EAA
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _0224222A
_0224221A:
	mov r2, #0x10
	tst r0, r2
	beq _0224222A
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242354 ; =ov70_02245EAB
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
_0224222A:
	cmp r1, #9
	blt _02242282
	ldr r0, [r5, #0x48]
	cmp r0, #9
	bge _02242282
	ldr r0, _02242344 ; =gSystem
	ldr r2, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r2
	beq _02242260
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
	add r0, r0, #4
	cmp r0, #9
	bge _02242282
	add r0, r5, #0
	add r0, #0x48
_02242250:
	ldr r2, [r0]
	add r2, r2, #4
	str r2, [r0]
	ldr r2, [r5, #0x48]
	add r2, r2, #4
	cmp r2, #9
	blt _02242250
	b _02242282
_02242260:
	mov r0, #0x80
	tst r0, r2
	beq _02242282
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
	sub r0, r0, #4
	bmi _02242282
	add r0, r5, #0
	add r0, #0x48
_02242276:
	ldr r2, [r0]
	sub r2, r2, #4
	str r2, [r0]
	ldr r2, [r5, #0x48]
	sub r2, r2, #4
	bpl _02242276
_02242282:
	ldr r0, [r5, #0x48]
	cmp r1, r0
	beq _022422BC
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	ldr r1, _0224235C ; =ov70_02245E26
	lsl r2, r0, #1
	ldrb r1, [r1, r2]
	ldr r3, _02242360 ; =ov70_02245E27
	ldr r0, [r5, #0xc]
	ldrb r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #9
	ldr r0, [r5, #0xc]
	bne _022422B6
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _022422BC
_022422B6:
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
_022422BC:
	add r0, r5, #0
	mov r1, #4
	bl ov70_02242164
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _022422F8
	cmp r6, #9
	bne _022422DE
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_022422DE:
	blo _022422E4
	bl GF_AssertFail
_022422E4:
	cmp r4, #0
	beq _022422EE
	ldrb r0, [r4, r6]
	cmp r0, #0
	beq _0224233C
_022422EE:
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_022422F8:
	ldr r0, _02242344 ; =gSystem
	ldr r2, [r0, #0x48]
	mov r0, #1
	add r1, r2, #0
	tst r1, r0
	beq _0224232A
	ldr r1, [r5, #0x48]
	cmp r1, #9
	bne _0224230E
	sub r0, r0, #3
	pop {r4, r5, r6, pc}
_0224230E:
	blt _02242314
	bl GF_AssertFail
_02242314:
	cmp r4, #0
	beq _02242320
	ldr r0, [r5, #0x48]
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0224233C
_02242320:
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	pop {r4, r5, r6, pc}
_0224232A:
	mov r0, #2
	tst r0, r2
	beq _0224233C
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0224233C:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_02242344: .word gSystem
_02242348: .word ov70_02245EA8
_0224234C: .word ov70_02245EA9
_02242350: .word ov70_02245EAA
_02242354: .word ov70_02245EAB
_02242358: .word 0x000005DC
_0224235C: .word ov70_02245E26
_02242360: .word ov70_02245E27
	thumb_func_end ov70_022421D0

