#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F7E4
	.extern ov70_022459F4
	.extern ov70_02245A4C

	.text

	.text
	thumb_func_start ov70_0223F7E4
ov70_0223F7E4: ; 0x0223F7E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	cmp r2, #0
	bne _0223F7F4
	ldr r5, _0223F820 ; =ov70_02245A4C
	mov r6, #0xc
	b _0223F7F8
_0223F7F4:
	ldr r5, _0223F824 ; =ov70_022459F4
	mov r6, #0xb
_0223F7F8:
	add r0, r6, #0
	mov r1, #0x3d
	bl ListMenuItems_New
	mov r4, #0
	str r0, [r7]
	cmp r6, #0
	ble _0223F81C
_0223F808:
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [r5]
	add r3, r4, #0
	bl ListMenuItems_AppendFromMsgData
	add r4, r4, #1
	add r5, #8
	cmp r4, r6
	blt _0223F808
_0223F81C:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F820: .word ov70_02245A4C
_0223F824: .word ov70_022459F4
	thumb_func_end ov70_0223F7E4

