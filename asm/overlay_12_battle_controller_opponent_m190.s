#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02261B80

	.text

	.text
	thumb_func_start ov12_02261B80
ov12_02261B80: ; 0x02261B80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	str r0, [sp]
	ldr r0, [r3, #0x4c]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02261B9E
	mov r0, #0xa
	str r0, [sp, #0x84]
	add r0, r3, #0
	ldrh r0, [r0, #2]
	str r0, [sp, #0x18]
	b _02261BA8
_02261B9E:
	mov r0, #0x3d
	str r0, [sp, #0x84]
	add r0, r3, #0
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x18]
_02261BA8:
	ldr r0, [sp]
	bl BattleSystem_GetBgConfig
	str r0, [sp, #0x20]
	ldr r0, [sp]
	bl BattleSystem_GetPaletteData
	str r0, [sp, #0x24]
	ldr r0, [sp]
	bl BattleSystem_GetSpriteSystem
	add r5, sp, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r4, #0
	str r0, [sp, #0x14]
	str r5, [sp, #0x10]
	add r6, r5, #0
	add r7, r0, #0
_02261BCE:
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223BB88
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x14]
	ldrh r1, [r0, #0x18]
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x34]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x24
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x40
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x44
	strb r1, [r0]
	ldr r0, [r7, #0x2c]
	add r4, r4, #1
	str r0, [r5, #0x48]
	ldr r0, [r7, #0x3c]
	add r6, r6, #1
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x14]
	add r5, r5, #4
	add r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #2
	str r0, [sp, #0x10]
	cmp r4, #4
	blt _02261BCE
	ldr r0, [sp]
	add r1, sp, #0x38
	bl ov12_0223C1C4
	ldr r0, [sp]
	add r1, sp, #0x3c
	bl ov12_0223C1F4
	ldr r0, [sp]
	bl BattleSystem_GetBattleType
	mov r2, #0x65
	str r0, [sp, #0x4c]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldr r0, [sp]
	bl BattleSystem_GetChatotVoice
	str r0, [sp, #0xa0]
	ldr r0, [sp]
	bl ov12_0223BAD0
	str r0, [sp, #0xa4]
	ldr r0, [sp]
	bl ov12_0223BAD8
	str r0, [sp, #0xa8]
	mov r0, #7
	str r0, [sp, #0x88]
	ldr r0, [sp]
	bl BattleSystem_GetBackgroundId
	add r0, r0, #3
	str r0, [sp, #0x8c]
	ldr r0, [sp]
	bl ov12_0223B52C
	add r4, r0, #0
	ldr r0, [sp]
	bl BattleSystem_GetBackgroundId
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, #0xb0
	add r0, r4, r0
	str r0, [sp, #0x90]
	mov r0, #2
	str r0, [sp, #0x94]
	mov r0, #0
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x98]
	mov r0, #8
	str r0, [sp, #0x9c]
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x10
	add r3, sp, #0x1c
	bl ov07_0221C01C
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02261B80

