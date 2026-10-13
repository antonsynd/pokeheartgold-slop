#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02261D30
	.public ov12_02261DC8
	.extern ov12_02261E40

	.text

	.text
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

