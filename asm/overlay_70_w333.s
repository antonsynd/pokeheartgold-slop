#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224261C
	.extern ov70_02238F9C
	.extern ov70_02242164
	.extern ov70_0224251C
	.extern ov70_02242574
	.extern ov70_02245D76
	.extern ov70_02245D77

	.text

	.text
	thumb_func_start ov70_0224261C
ov70_0224261C: ; 0x0224261C
	push {r3, r4, r5, lr}
	ldr r1, _022426E4 ; =gSystem
	add r5, r0, #0
	ldr r2, [r1, #0x4c]
	mov r1, #0x40
	ldr r4, [r5, #0x48]
	tst r1, r2
	beq _0224263C
	cmp r4, #0
	beq _02242636
	sub r0, r4, #1
	str r0, [r5, #0x48]
	b _0224266E
_02242636:
	mov r0, #4
	str r0, [r5, #0x48]
	b _0224266E
_0224263C:
	mov r1, #0x80
	tst r1, r2
	beq _02242652
	cmp r4, #4
	beq _0224264C
	add r0, r4, #1
	str r0, [r5, #0x48]
	b _0224266E
_0224264C:
	mov r0, #0
	str r0, [r5, #0x48]
	b _0224266E
_02242652:
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02242662
	sub r1, #0x21
	bl ov70_02242574
	b _0224266E
_02242662:
	mov r1, #0x10
	tst r1, r2
	beq _0224266E
	mov r1, #1
	bl ov70_02242574
_0224266E:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	beq _022426A2
	ldr r0, _022426E8 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	ldr r1, _022426EC ; =ov70_02245D76
	lsl r3, r0, #1
	ldr r2, _022426F0 ; =ov70_02245D77
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #4
	ldr r0, [r5, #0xc]
	bne _0224269C
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _022426A2
_0224269C:
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
_022426A2:
	add r0, r5, #0
	mov r1, #0
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _022426BC
	add r0, r5, #0
	bl ov70_0224251C
	pop {r3, r4, r5, pc}
_022426BC:
	ldr r1, _022426E4 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _022426D0
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_0224251C
	pop {r3, r4, r5, pc}
_022426D0:
	mov r1, #2
	tst r1, r2
	beq _022426E0
	ldr r0, _022426E8 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
_022426E0:
	pop {r3, r4, r5, pc}
	nop
_022426E4: .word gSystem
_022426E8: .word 0x000005DC
_022426EC: .word ov70_02245D76
_022426F0: .word ov70_02245D77
	thumb_func_end ov70_0224261C

