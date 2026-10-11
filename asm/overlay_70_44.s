#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_02238E50
	.public ov70_02239A10

	.text

	thumb_func_start ov70_02239A10
ov70_02239A10: ; 0x02239A10
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _02239A62
	ldr r0, _02239A9C ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	ldr r0, _02239AA0 ; =0x00001158
	mov r1, #1
	add r0, r4, r0
	bl ClearFrameAndWindow2
	ldr r0, _02239AA0 ; =0x00001158
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _02239AA4 ; =0x00001198
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	mov r0, #6
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #7
	str r0, [r4, #0x2c]
	b _02239A98
_02239A62:
	cmp r0, #2
	bne _02239A98
	ldr r0, _02239A9C ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	ldr r0, _02239AA0 ; =0x00001158
	mov r1, #1
	add r0, r4, r0
	bl ClearFrameAndWindow2
	ldr r0, _02239AA0 ; =0x00001158
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _02239AA8 ; =0x00000DCC
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetAnimActiveFlag
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r0, _02239AA8 ; =0x00000DCC
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
_02239A98:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_02239A9C: .word 0x000011C8
_02239AA0: .word 0x00001158
_02239AA4: .word 0x00001198
_02239AA8: .word 0x00000DCC
	thumb_func_end ov70_02239A10

