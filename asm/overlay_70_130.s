#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238CAC
	.public ov70_0223D934

	.text

	thumb_func_start ov70_0223D934
ov70_0223D934: ; 0x0223D934
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x3d
	bl ListMenuItems_New
	ldr r1, _0223D990 ; =0x000011AC
	mov r2, #0x62
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ListMenuItems_AppendFromMsgData
	ldr r0, _0223D990 ; =0x000011AC
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x63
	mov r3, #2
	bl ListMenuItems_AppendFromMsgData
	ldr r0, _0223D990 ; =0x000011AC
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x64
	mov r3, #3
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xa
	bl ov70_02238CAC
	ldr r1, _0223D994 ; =0x000011D0
	str r0, [r4, r1]
	mov r0, #8
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223D990: .word 0x000011AC
_0223D994: .word 0x000011D0
	thumb_func_end ov70_0223D934

