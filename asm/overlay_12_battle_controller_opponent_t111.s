#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02260B30
	.public ov12_02260BA0
	.public ov12_02260C58

	.text

	.text
	thumb_func_start ov12_02260B30
ov12_02260B30: ; 0x02260B30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _02260B42
	cmp r0, #1
	beq _02260B86
	pop {r3, r4, r5, pc}
_02260B42:
	ldrb r1, [r5, #0xc]
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bne _02260B80
	mov r0, #0
	strb r0, [r5, #0xc]
	ldr r0, [r5, #4]
	mov r1, #0x28
	bl Pokepic_GetAttr
	add r4, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r4, r0
	ble _02260B62
	sub r4, r4, #1
	b _02260B68
_02260B62:
	cmp r4, r0
	bge _02260B68
	add r4, r4, #1
_02260B68:
	ldr r0, [r5, #4]
	mov r1, #0x28
	add r2, r4, #0
	bl Pokepic_SetAttr
	ldrb r0, [r5, #0xb]
	cmp r4, r0
	bne _02260B9C
	ldrb r0, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, pc}
_02260B80:
	add r0, r1, #1
	strb r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_02260B86:
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5]
	bl ov12_0226430C
	add r0, r5, #0
	bl Heap_Free
	add r0, r4, #0
	bl SysTask_Destroy
_02260B9C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov12_02260B30

	thumb_func_start ov12_02260BA0
ov12_02260BA0: ; 0x02260BA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldrb r1, [r5, #5]
	add r4, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _02260BB8
	mov r6, #0
	b _02260BBA
_02260BB8:
	mov r6, #1
_02260BBA:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _02260BC6
	cmp r0, #1
	beq _02260C22
	b _02260C3C
_02260BC6:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _02260BD4
	mov r0, #0
	str r0, [sp, #8]
	mov r7, #1
	b _02260BEE
_02260BD4:
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r5, #6]
	cmp r0, #3
	beq _02260BE4
	cmp r0, #5
	beq _02260BE8
	b _02260BEC
_02260BE4:
	mov r7, #0
	b _02260BEE
_02260BE8:
	mov r7, #2
	b _02260BEE
_02260BEC:
	ldr r7, [sp, #8]
_02260BEE:
	ldr r0, [r5]
	bl BattleSystem_GetSpriteSystem
	add r4, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetSpriteManager
	str r4, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [sp, #8]
	add r0, #8
	add r1, r6, #0
	add r3, r7, #0
	bl PartyGauge_NewAndShow
	add r2, r0, #0
	ldr r0, [r5]
	add r1, r6, #0
	bl ov12_0223A914
	ldrb r0, [r5, #7]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r4, r5, r6, r7, pc}
_02260C22:
	ldr r0, [r5]
	add r1, r6, #0
	bl ov12_0223A908
	bl PartyGauge_IsArrowTaskFinished
	cmp r0, #1
	bne _02260C52
	ldrb r0, [r5, #7]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r4, r5, r6, r7, pc}
_02260C3C:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5]
	bl ov12_0226430C
	add r0, r5, #0
	bl Heap_Free
	add r0, r4, #0
	bl SysTask_Destroy
_02260C52:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_02260BA0

	thumb_func_start ov12_02260C58
ov12_02260C58: ; 0x02260C58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrb r1, [r5, #5]
	add r7, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _02260C6E
	mov r4, #0
	b _02260C70
_02260C6E:
	mov r4, #1
_02260C70:
	ldr r0, [r5]
	add r1, r4, #0
	bl ov12_0223A908
	ldrb r1, [r5, #7]
	add r6, r0, #0
	cmp r1, #0
	beq _02260C86
	cmp r1, #1
	beq _02260CA2
	b _02260CC2
_02260C86:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _02260C90
	mov r1, #0
	b _02260C92
_02260C90:
	mov r1, #1
_02260C92:
	add r0, r6, #0
	add r2, r1, #0
	bl PartyGauge_StartHideTask
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02260CA2:
	bl PartyGauge_IsHideTaskFinished
	cmp r0, #1
	bne _02260CD8
	add r0, r6, #0
	bl PartyGauge_DeleteAndFreeResources
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl ov12_0223A914
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02260CC2:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5]
	bl ov12_0226430C
	add r0, r5, #0
	bl Heap_Free
	add r0, r7, #0
	bl SysTask_Destroy
_02260CD8:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_02260C58

