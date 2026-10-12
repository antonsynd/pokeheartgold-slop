#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225B16C
	.public ov12_0225B1A8
	.public ov12_0225B200
	.extern ov12_02260C58
	.extern ov12_02261CA8

	.text

	.text
	thumb_func_start ov12_0225B16C
ov12_0225B16C: ; 0x0225B16C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #7]
	str r5, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r0, r0, #1
	strb r3, [r1, #5]
	ldrb r0, [r4, r0]
	strb r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _0225B1A4 ; =ov12_02260C58
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	nop
_0225B1A4: .word ov12_02260C58
	thumb_func_end ov12_0225B16C

	thumb_func_start ov12_0225B1A8
ov12_0225B1A8: ; 0x0225B1A8
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, _0225B1F8 ; =0x00000196
	add r5, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0225B1E6
	bl BattleSystem_GetMessageLoader
	add r1, r0, #0
	ldr r2, _0225B1FC ; =0x0000039B
	add r0, sp, #0
	strh r2, [r0, #2]
	mov r3, #0
	strb r3, [r0, #1]
	add r0, r5, #0
	add r2, sp, #0
	bl BattleSystem_PrintBattleMessage
	add r0, r5, #0
	mov r1, #0
	bl BattleSystem_GetWindow
	mov r1, #1
	bl WaitingIcon_New
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223BB80
_0225B1E6:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x37
	bl ov12_0226430C
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
_0225B1F8: .word 0x00000196
_0225B1FC: .word 0x0000039B
	thumb_func_end ov12_0225B1A8

	thumb_func_start ov12_0225B200
ov12_0225B200: ; 0x0225B200
	push {r4, r5, r6, lr}
	sub sp, #0x50
	mov r3, #0x65
	add r4, r1, #0
	lsl r3, r3, #2
	add r6, r2, #0
	ldrb r3, [r4, r3]
	add r1, r6, #0
	add r2, sp, #0
	add r5, r0, #0
	bl ov12_02261CA8
	add r0, sp, #0
	mov r1, #5
	bl ov07_0223494C
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldrb r2, [r6]
	add r0, r5, #0
	bl ov12_0226430C
	add sp, #0x50
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_0225B200

