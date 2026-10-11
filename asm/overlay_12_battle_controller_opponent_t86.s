#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225AD44
	.public ov12_0225AD9C
	.public ov12_0225ADF4
	.public ov12_0225AE48
	.public ov12_0225AEA0
	.extern ov12_02260584
	.extern ov12_022605D0
	.extern ov12_02261390
	.extern ov12_02261464
	.extern ov12_02261544
	.extern ov12_022615F0

	.text

	.text
	thumb_func_start ov12_0225AD44
ov12_0225AD44: ; 0x0225AD44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl ov12_02261390
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225AD98 ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225AD98: .word ov12_022605D0
	thumb_func_end ov12_0225AD44

	thumb_func_start ov12_0225AD9C
ov12_0225AD9C: ; 0x0225AD9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl ov12_02261464
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225ADF0 ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225ADF0: .word ov12_022605D0
	thumb_func_end ov12_0225AD9C

	thumb_func_start ov12_0225ADF4
ov12_0225ADF4: ; 0x0225ADF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl ov12_02261544
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x22
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
	ldr r0, _0225AE44 ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225AE44: .word ov12_022605D0
	thumb_func_end ov12_0225ADF4

	thumb_func_start ov12_0225AE48
ov12_0225AE48: ; 0x0225AE48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl ov12_022615F0
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225AE9C ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225AE9C: .word ov12_022605D0
	thumb_func_end ov12_0225AE48

	thumb_func_start ov12_0225AEA0
ov12_0225AEA0: ; 0x0225AEA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0xc
	bl Heap_Alloc
	add r1, r0, #0
	add r0, r4, #0
	str r5, [r1]
	add r0, #0x94
	ldrb r0, [r0]
	mov r2, #0
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r4, #0x28
	strb r0, [r1, #9]
	strb r2, [r1, #0xa]
	ldr r0, _0225AED4 ; =ov12_02260584
	str r4, [r1, #4]
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	nop
_0225AED4: .word ov12_02260584
	thumb_func_end ov12_0225AEA0

