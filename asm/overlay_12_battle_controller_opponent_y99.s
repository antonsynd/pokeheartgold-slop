#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225B2A4
	.public ov12_0225B2F8
	.public ov12_0225B34C
	.public ov12_0225B3A0
	.extern ov12_022605D0
	.extern ov12_02261928
	.extern ov12_022619E4
	.extern ov12_02261AD4
	.extern ov12_02261CA8

	.text

	.text
	thumb_func_start ov12_0225B2A4
ov12_0225B2A4: ; 0x0225B2A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl ov12_02261928
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3b
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225B2F4 ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B2F4: .word ov12_022605D0
	thumb_func_end ov12_0225B2A4

	thumb_func_start ov12_0225B2F8
ov12_0225B2F8: ; 0x0225B2F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r3, sp, #0
	add r6, r1, #0
	bl ov12_022619E4
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3c
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225B348 ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B348: .word ov12_022605D0
	thumb_func_end ov12_0225B2F8

	thumb_func_start ov12_0225B34C
ov12_0225B34C: ; 0x0225B34C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl ov12_02261AD4
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3d
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225B39C ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B39C: .word ov12_022605D0
	thumb_func_end ov12_0225B34C

	thumb_func_start ov12_0225B3A0
ov12_0225B3A0: ; 0x0225B3A0
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
	bl ov07_02234A20
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldrb r2, [r6]
	add r0, r5, #0
	bl ov12_0226430C
	add sp, #0x50
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_0225B3A0

