#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021EA728
	.public ov14_021EA778
	.extern ov14_021E6AA0
	.extern ov14_021E7960
	.extern ov14_021E79AC
	.extern ov14_021E7AD4
	.extern ov14_021E7B8C
	.extern ov14_021E8620
	.extern ov14_021F7C08

    .text

	.text
	thumb_func_start ov14_021EA728
ov14_021EA728: ; 0x021EA728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA73A
	cmp r1, #1
	beq _021EA766
	b _021EA774
_021EA73A:
	add r0, r4, #0
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	beq _021EA774
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [r4, #0xc]
	mov r3, #2
	ldrh r2, [r0]
	add r0, r5, #0
	add r0, #0x21
	strb r2, [r0]
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021E7AD4
	mov r0, #1
	strh r0, [r4, #0x10]
	b _021EA774
_021EA766:
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA774
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021EA774:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021EA728

	thumb_func_start ov14_021EA778
ov14_021EA778: ; 0x021EA778
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xe
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #6
	bhi _021EA7E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA7AC: ; jump table
	.short _021EA7BA - _021EA7AC - 2 ; case 0
	.short _021EA7DC - _021EA7AC - 2 ; case 1
	.short _021EA7FE - _021EA7AC - 2 ; case 2
	.short _021EA8A6 - _021EA7AC - 2 ; case 3
	.short _021EA8C8 - _021EA7AC - 2 ; case 4
	.short _021EA8E8 - _021EA7AC - 2 ; case 5
	.short _021EA90C - _021EA7AC - 2 ; case 6
_021EA7BA:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021EA914
_021EA7DC:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	beq _021EA7EA
_021EA7E8:
	b _021EA914
_021EA7EA:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
	mov r0, #2
	strh r0, [r5, #0x10]
	b _021EA914
_021EA7FE:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021EA87C
	ldr r1, [r4, #0x34]
	ldr r2, _021EA91C ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xff
	bne _021EA844
	ldr r1, [r4, #0x34]
	ldr r2, _021EA91C ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021EA920 ; =ov14_021F7C08
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_021EA844:
	add r7, r6, #0
	cmp r6, #0xff
	bne _021EA852
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
	b _021EA86A
_021EA852:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021EA86A
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
_021EA86A:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #2
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EA914
_021EA87C:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B5C
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x34]
	ldr r0, _021EA91C ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021EA914
_021EA8A6:
	add r0, r4, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA914
	ldr r0, _021EA924 ; =0x000005EA
	bl PlaySE
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	mov r0, #4
	strh r0, [r5, #0x10]
	b _021EA914
_021EA8C8:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021EA914
_021EA8E8:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EA914
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	mov r0, #6
	strh r0, [r5, #0x10]
	b _021EA914
_021EA90C:
	mov r0, #0
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA914:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA91C: .word 0x000040B8
_021EA920: .word ov14_021F7C08
_021EA924: .word 0x000005EA
	thumb_func_end ov14_021EA778

