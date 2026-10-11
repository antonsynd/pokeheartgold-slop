#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223CCA4

	.text

	thumb_func_start ov70_0223CCA4
ov70_0223CCA4: ; 0x0223CCA4
	push {r4, lr}
	ldr r3, _0223CD24 ; =0x00000F14
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #0
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _0223CD24 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #1
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _0223CD24 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #2
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _0223CD24 ; =0x00000F14
	mov r1, #3
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	add r2, r1, #0
	bl BgSetPosTextAndCommit
	ldr r3, _0223CD24 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #4
	mov r2, #3
	neg r3, r3
	bl BgSetPosTextAndCommit
	ldr r3, _0223CD24 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #5
	mov r2, #3
	neg r3, r3
	bl BgSetPosTextAndCommit
	ldr r3, _0223CD24 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #6
	mov r2, #3
	neg r3, r3
	bl BgSetPosTextAndCommit
	ldr r3, _0223CD24 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #7
	mov r2, #3
	neg r3, r3
	bl BgSetPosTextAndCommit
	pop {r4, pc}
	nop
_0223CD24: .word 0x00000F14
	thumb_func_end ov70_0223CCA4

