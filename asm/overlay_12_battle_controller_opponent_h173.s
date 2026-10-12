#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02261B80
	.public ov12_02261CA8
	.public ov12_02261D30
	.public ov12_02261DC8
	.extern ov12_02261E40

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

	thumb_func_start ov12_02261CA8
ov12_02261CA8: ; 0x02261CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r7, r1, #0
	str r3, [r6]
	str r0, [sp]
	str r3, [r6, #4]
	mov r4, #0
	add r5, r6, #0
	str r7, [sp, #0xc]
	str r6, [sp, #8]
	str r7, [sp, #4]
_02261CC0:
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223BB88
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #0x18]
	ldr r0, [sp, #8]
	strh r1, [r0, #0x28]
	add r0, r7, r4
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x30
	strb r1, [r0]
	add r0, r7, r4
	add r0, #0x24
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x34
	strb r1, [r0]
	add r0, r7, r4
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x38
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r4, r4, #1
	ldr r0, [r0, #0x2c]
	str r0, [r5, #0x3c]
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	cmp r4, #4
	blt _02261CC0
	add r1, r6, #0
	ldr r0, [sp]
	add r1, #0x4c
	bl ov12_0223C1C4
	add r6, #0x18
	ldr r0, [sp]
	add r1, r6, #0
	bl ov12_0223C1F4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_02261CA8

	thumb_func_start ov12_02261D30
ov12_02261D30: ; 0x02261D30
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r2, #0
	bne _02261D6E
	add r0, sp, #0
	ldrh r6, [r0, #0x10]
	mov r1, #9
	add r0, r6, #0
	bl GetMoveAttr
	mov r1, #0x40
	tst r0, r1
	bne _02261D50
	mov r0, #1
	b _02261D52
_02261D50:
	mov r0, #0
_02261D52:
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #9
	bl GetMoveAttr
	mov r1, #0x80
	tst r0, r1
	beq _02261D68
	mov r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02261D68:
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02261D6E:
	sub r3, #0x12
	cmp r3, #0x15
	bhi _02261DBE
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261D80: ; jump table
	.short _02261DAC - _02261D80 - 2 ; case 0
	.short _02261DAC - _02261D80 - 2 ; case 1
	.short _02261DAC - _02261D80 - 2 ; case 2
	.short _02261DAC - _02261D80 - 2 ; case 3
	.short _02261DAC - _02261D80 - 2 ; case 4
	.short _02261DBE - _02261D80 - 2 ; case 5
	.short _02261DBE - _02261D80 - 2 ; case 6
	.short _02261DBE - _02261D80 - 2 ; case 7
	.short _02261DBE - _02261D80 - 2 ; case 8
	.short _02261DBE - _02261D80 - 2 ; case 9
	.short _02261DBE - _02261D80 - 2 ; case 10
	.short _02261DBE - _02261D80 - 2 ; case 11
	.short _02261DBE - _02261D80 - 2 ; case 12
	.short _02261DAC - _02261D80 - 2 ; case 13
	.short _02261DAC - _02261D80 - 2 ; case 14
	.short _02261DBE - _02261D80 - 2 ; case 15
	.short _02261DAC - _02261D80 - 2 ; case 16
	.short _02261DAC - _02261D80 - 2 ; case 17
	.short _02261DB6 - _02261D80 - 2 ; case 18
	.short _02261DAC - _02261D80 - 2 ; case 19
	.short _02261DB6 - _02261D80 - 2 ; case 20
	.short _02261DAC - _02261D80 - 2 ; case 21
_02261DAC:
	mov r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02261DB6:
	mov r0, #1
	strb r0, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02261DBE:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_02261D30

	thumb_func_start ov12_02261DC8
ov12_02261DC8: ; 0x02261DC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	bl ManagedSprite_GetUserAttrForCurrentAnimFrame
	cmp r0, #1
	beq _02261DE0
	ldr r1, _02261E38 ; =0x00000FFF
	cmp r0, r1
	beq _02261E0A
	b _02261E0E
_02261DE0:
	ldrh r1, [r5, #0x16]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _02261E34
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r5, #0x16]
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r1, r0, #0
	add r2, r4, #0
	str r2, [r1]
	ldr r0, _02261E3C ; =ov12_02261E40
	str r2, [r1, #4]
	bl SysTask_CreateOnMainQueue
	b _02261E34
_02261E0A:
	mov r4, #1
	b _02261E34
_02261E0E:
	sub r1, #0xff
	add r2, r0, #0
	and r2, r1
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	bne _02261E34
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	beq _02261E34
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r5, #0xc]
	sub r1, r6, #1
	bl ManagedSprite_SetAnim
	mov r4, #1
_02261E34:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02261E38: .word 0x00000FFF
_02261E3C: .word ov12_02261E40
	thumb_func_end ov12_02261DC8

