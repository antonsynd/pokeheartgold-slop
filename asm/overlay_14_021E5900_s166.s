#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E8D20
	.extern ov14_021E6070
	.extern ov14_021E66F4
	.extern ov14_021E6814
	.extern ov14_021E6CF8
	.extern ov14_021E70B0
	.extern ov14_021E7148
	.extern ov14_021E7588
	.extern ov14_021E7960
	.extern ov14_021E79AC
	.extern ov14_021E7EE0
	.extern ov14_021E7FB8
	.extern ov14_021E7FEC
	.extern ov14_021E80A8
	.extern ov14_021E8434
	.extern ov14_021E8514
	.extern ov14_021E8824
	.extern ov14_021F7BF0

    .text

	.text
	thumb_func_start ov14_021E8D20
ov14_021E8D20: ; 0x021E8D20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r7, r0, #0
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	bne _021E8D5C
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r2, r0, r1
	ldr r1, _021E8FC0 ; =0x00004094
	ldrb r1, [r2, r1]
	add r2, sp, #0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
_021E8D5C:
	add r0, r4, #0
	bl ov14_021E80A8
	add r6, r0, #0
	ldrh r0, [r5, #0x10]
	cmp r0, #5
	bls _021E8D6C
	b _021E8FB8
_021E8D6C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8D78: ; jump table
	.short _021E8D84 - _021E8D78 - 2 ; case 0
	.short _021E8F1E - _021E8D78 - 2 ; case 1
	.short _021E8F1E - _021E8D78 - 2 ; case 2
	.short _021E8F62 - _021E8D78 - 2 ; case 3
	.short _021E8F96 - _021E8D78 - 2 ; case 4
	.short _021E8FA0 - _021E8D78 - 2 ; case 5
_021E8D84:
	ldr r0, [r4, #0x34]
	ldr r1, _021E8FC4 ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021E8DA8
	cmp r6, #0
	bne _021E8DA8
	mov r2, #2
	strb r2, [r0, r1]
	add r0, r4, #0
	mov r1, #0x28
	bl ov14_021F69F0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
_021E8DA8:
	add r0, sp, #8
	add r1, sp, #4
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021E8EA8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r3, sp, #0
	add r2, r0, r1
	ldr r1, _021E8FC0 ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	bl ManagedSprite_SetPositionXY
	ldr r1, [r4, #0x34]
	ldr r0, _021E8FC4 ; =0x0000044A
	ldr r2, _021E8FC8 ; =0x000040B8
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021E8DFA
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	b _021E8E0E
_021E8DFA:
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021E8FCC ; =ov14_021F7BF0
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
_021E8E0E:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r2, r0, #0
	add r0, r4, #0
	bl ov14_021E6CF8
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E70B0
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E8E44
	mov r2, #0
	b _021E8E46
_021E8E44:
	mov r2, #1
_021E8E46:
	ldr r1, [r4, #0x34]
	ldr r0, _021E8FD0 ; =0x000040C4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r1, [r0]
	cmp r1, #0x1e
	bhs _021E8E84
	add r0, r4, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	bne _021E8E6A
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8E6A:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
	add r0, r4, #0
	mov r1, #0xff
	bl ov14_021E7588
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8E84:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FEC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8EA8:
	cmp r7, #0
	bne _021E8ED8
	ldr r0, [r4, #0x34]
	ldr r1, _021E8FC4 ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021E8ED8
	ldr r2, [sp, #8]
	cmp r2, #0x10
	blo _021E8EC6
	ldr r1, [sp, #4]
	cmp r1, #0x30
	blo _021E8EC6
	cmp r2, #0x68
	blo _021E8ED8
_021E8EC6:
	ldr r1, _021E8FC4 ; =0x0000044A
	mov r2, #1
	strb r2, [r0, r1]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FB8
_021E8ED8:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r2, r0, r1
	ldr r1, _021E8FC0 ; =0x00004094
	ldrb r1, [r2, r1]
	ldr r2, [sp, #4]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	asr r2, r2, #0x10
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [sp, #8]
	ldr r1, [r4, #0x34]
	ldr r0, _021E8FC8 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021E8FB8
_021E8F1E:
	add r0, r4, #0
	bl ov14_021E6814
	cmp r0, #0
	bne _021E8FB8
	cmp r7, #0
	bne _021E8FB8
	cmp r6, #0
	bne _021E8FB8
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E8F4A
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
_021E8F4A:
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [r4, #0x34]
	ldr r1, _021E8FD0 ; =0x000040C4
	add r0, r4, #0
	ldr r1, [r2, r1]
	bl ov14_021F40E8
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8F62:
	add r0, r4, #0
	bl ov14_021E66F4
	cmp r0, #0
	bne _021E8FB8
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
	add r0, r4, #0
	mov r1, #0xff
	bl ov14_021E7588
	mov r0, #0xff
	add r4, #0x21
	strb r0, [r4]
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8F96:
	cmp r6, #0
	bne _021E8FB8
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8FA0:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	ldr r2, [r4, #0x34]
	ldr r1, _021E8FC4 ; =0x0000044A
	mov r0, #0
	strb r0, [r2, r1]
	add sp, #0xc
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_021E8FB8:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E8FC0: .word 0x00004094
_021E8FC4: .word 0x0000044A
_021E8FC8: .word 0x000040B8
_021E8FCC: .word ov14_021F7BF0
_021E8FD0: .word 0x000040C4
	thumb_func_end ov14_021E8D20

