#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02241DB4
	.public ov70_02243700
	.public ov70_02245F5C

	.text

	thumb_func_start ov70_02243700
ov70_02243700: ; 0x02243700
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	mov r1, #0
	bl ov70_02241DB4
	ldr r0, [r4, #0x34]
	bl ListMenuItems_Delete
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	cmp r0, #8
	ble _0224372E
	bl GF_AssertFail
_0224372E:
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	lsl r1, r0, #3
	ldr r0, _0224374C ; =ov70_02245F5C
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02243740
	mov r0, #7
	b _02243742
_02243740:
	mov r0, #0xb
_02243742:
	str r0, [r4, #0x4c]
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0224374C: .word ov70_02245F5C
	thumb_func_end ov70_02243700

