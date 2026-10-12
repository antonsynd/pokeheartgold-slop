	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259588
	.extern ov90_0225888C
	.extern ov90_022588A4
	.extern ov90_02258DD0
	.extern ov90_02258FF0
	.extern ov90_022590CC
	.extern ov90_02259184
	.extern ov90_0225938C
	.extern ov90_022596C8
	.extern ov90_02259794
	.extern ov90_02259B18
	.extern ov90_0225A204
	.extern ov90_0225C178
	.extern ov90_0225C2A4
	.extern ov90_0225C2CC
	.extern ov90_0225C39C

	.text

	.text
	thumb_func_start ov90_02259588
ov90_02259588: ; 0x02259588
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x12
	add r6, r0, #0
	add r5, r2, #0
	mov r0, #0x13
	lsl r1, r1, #6
	mov r2, #0
	bl Sound_SetSceneAndPlayBGM
	ldr r1, _022596A0 ; =0x000005F4
	add r0, r5, #0
	bl Heap_Alloc
	ldr r2, _022596A0 ; =0x000005F4
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r2, r4, #0
	add r2, #8
	mov r1, #0x10
_022595B4:
	ldrb r0, [r6]
	add r6, r6, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022595B4
	ldr r3, _022596A4 ; =0x04000050
	strh r7, [r4, #4]
	mov r1, #0
	strh r1, [r3]
	ldr r0, _022596A8 ; =0x04001050
	sub r3, #0x50
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, _022596AC ; =0xFFFF1FFF
	sub r0, #0x50
	and r2, r1
	str r2, [r3]
	ldr r2, [r0]
	and r1, r2
	str r1, [r0]
	ldr r0, _022596B0 ; =ov90_0225C2CC
	bl GfGfx_SetBanks
	add r0, r4, #0
	strh r5, [r4, #2]
	bl ov90_0225C178
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x18
	add r1, #8
	bl ov90_0225A204
	add r0, r4, #0
	ldr r1, _022596B4 ; =ov90_0225C2A4
	ldr r2, _022596B8 ; =ov90_0225C39C
	add r0, #0x30
	mov r3, #5
	str r5, [sp]
	bl ov90_02258FF0
	add r0, r4, #0
	mov r2, #1
	add r0, #0x84
	mov r1, #0x10
	add r3, r2, #0
	str r5, [sp]
	bl ov90_022590CC
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	add r2, r5, #0
	bl ov90_02258DD0
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	bl ov90_02259184
	add r0, r4, #0
	add r1, r5, #0
	bl ov90_022596C8
	add r0, r4, #0
	ldrb r1, [r4, #0x11]
	add r0, #8
	bl ov90_0225888C
	add r1, r0, #0
	add r0, r4, #0
	add r0, #8
	bl ov90_022588A4
	str r5, [sp]
	add r3, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #8]
	add r0, #0x4c
	add r1, #0x30
	bl ov90_0225938C
	ldr r0, _022596BC ; =ov90_02259794
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	ldr r1, _022596C0 ; =0x000005EC
	mov r2, #0
	str r0, [r4, r1]
	ldr r0, _022596C4 ; =ov90_02259B18
	add r1, r4, #0
	bl SysTask_CreateOnVWaitQueue
	mov r1, #0x5f
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _02259688
	add r0, r5, #0
	bl ov00_021E69A8
_02259688:
	ldr r0, [r4, #8]
	bl Save_GameStats_Get
	ldrb r1, [r4, #0x13]
	cmp r1, #0
	beq _0225969A
	mov r1, #0x27 ; SCORE_EVENT_WIFI_PLAZA_MINIGAME
	bl GameStats_AddScore
_0225969A:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022596A0: .word 0x000005F4
_022596A4: .word 0x04000050
_022596A8: .word 0x04001050
_022596AC: .word 0xFFFF1FFF
_022596B0: .word ov90_0225C2CC
_022596B4: .word ov90_0225C2A4
_022596B8: .word ov90_0225C39C
_022596BC: .word ov90_02259794
_022596C0: .word 0x000005EC
_022596C4: .word ov90_02259B18
	thumb_func_end ov90_02259588

