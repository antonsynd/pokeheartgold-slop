#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221EC34
	.extern ov65_0221ED80
	.extern ov65_0221EE18
	.extern ov65_0221FF4C
	.extern ov65_0221FF50

	.text

	.text
	thumb_func_start ov65_0221EC34
ov65_0221EC34: ; 0x0221EC34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _0221ED54 ; =0x00000444
	mov r6, #0
	add r0, r7, r0
	add r4, r7, #0
	add r5, r7, #0
	str r0, [sp, #4]
_0221EC46:
	add r0, r7, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r6, r0
	beq _0221EC84
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _0221ED58 ; =0x0000069E
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0221EC70
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0221EC70:
	ldr r0, _0221ED5C ; =0x000006A8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0221EC84
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0221EC84:
	add r0, r6, #7
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r7, #0
	add r0, #0x98
	ldr r0, [r0]
	sub r0, r0, #6
	cmp r6, r0
	beq _0221ECD0
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _0221ED60 ; =0x000006FE
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0221ECBC
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0221ECBC:
	ldr r0, _0221ED64 ; =0x00000708
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0221ECD0
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0221ECD0:
	add r0, r6, #0
	add r0, #0xd
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #6
	blt _0221EC46
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r7, #0
	add r0, #0x94
	ldr r0, [r0]
	ldr r1, _0221ED68 ; =ov65_0221FF4C
	lsl r2, r0, #3
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _0221ED6C ; =0x000022D0
	ldr r1, [r1, r2]
	ldr r3, _0221ED70 ; =ov65_0221FF50
	add r0, r7, r0
	ldr r2, [r3, r2]
	add r1, #0x10
	sub r2, r2, #6
	mov r3, #0x30
	bl ov65_0221ED80
	add r0, r7, #0
	add r0, #0x98
	ldr r0, [r0]
	ldr r1, _0221ED68 ; =ov65_0221FF4C
	lsl r2, r0, #3
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _0221ED74 ; =0x000022E8
	ldr r1, [r1, r2]
	ldr r3, _0221ED70 ; =ov65_0221FF50
	add r0, r7, r0
	ldr r2, [r3, r2]
	add r1, #0x10
	sub r2, r2, #6
	mov r3, #0xb0
	bl ov65_0221ED80
	ldr r1, _0221ED78 ; =0x000022C8
	mov r0, #0
	str r0, [r7, r1]
	ldr r2, _0221ED7C ; =ov65_0221EE18
	sub r1, #0xa8
	str r2, [r7, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221ED54: .word 0x00000444
_0221ED58: .word 0x0000069E
_0221ED5C: .word 0x000006A8
_0221ED60: .word 0x000006FE
_0221ED64: .word 0x00000708
_0221ED68: .word ov65_0221FF4C
_0221ED6C: .word 0x000022D0
_0221ED70: .word ov65_0221FF50
_0221ED74: .word 0x000022E8
_0221ED78: .word 0x000022C8
_0221ED7C: .word ov65_0221EE18
	thumb_func_end ov65_0221EC34

