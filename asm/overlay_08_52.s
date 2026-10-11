#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02223EA4
	.extern ov08_02225DDC
	.extern ov08_02225DE0
	.extern ov08_02225DE4
	.extern ov08_02225DE8
	.extern ov08_02225DEC

	.text

	.text
	thumb_func_start ov08_02223EA4
ov08_02223EA4: ; 0x02223EA4
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0]
	bl BattleSystem_GetSpriteSystem
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	mov r1, #0x14
	ldr r3, _02223F00 ; =ov08_02225DEC
	mul r1, r4
	ldr r3, [r3, r1]
	str r2, [sp, #0xc]
	str r3, [sp, #8]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r3, _02223F04 ; =ov08_02225DDC
	str r2, [sp, #0x30]
	ldr r3, [r3, r1]
	add r2, sp, #0
	str r3, [sp, #0x14]
	ldr r3, _02223F08 ; =ov08_02225DE0
	ldr r3, [r3, r1]
	str r3, [sp, #0x18]
	ldr r3, _02223F0C ; =ov08_02225DE4
	ldr r3, [r3, r1]
	str r3, [sp, #0x1c]
	ldr r3, _02223F10 ; =ov08_02225DE8
	ldr r1, [r3, r1]
	str r1, [sp, #0x20]
	mov r1, #1
	str r1, [sp, #0x2c]
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	bl SpriteSystem_NewSprite
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02223F00: .word ov08_02225DEC
_02223F04: .word ov08_02225DDC
_02223F08: .word ov08_02225DE0
_02223F0C: .word ov08_02225DE4
_02223F10: .word ov08_02225DE8
	thumb_func_end ov08_02223EA4

