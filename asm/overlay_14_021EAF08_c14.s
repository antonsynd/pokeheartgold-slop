#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EB7E4
	.extern ov14_021F7D1C
	.extern ov14_021F7D2C
	.extern ov14_021F7D3C

    .text

	.text
	thumb_func_start ov14_021EB7E4
ov14_021EB7E4: ; 0x021EB7E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0x25
	bl ov14_021F6688
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EB81E
	cmp r0, #1
	beq _021EB800
	cmp r0, #2
	b _021EB83C
_021EB800:
	ldr r1, _021EB8AC ; =ov14_021F7D2C
	add r0, r5, #0
	mov r2, #4
	bl ov14_021F5EE4
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	mov r4, #0x5a
	b _021EB856
_021EB81E:
	ldr r1, _021EB8B0 ; =ov14_021F7D1C
	add r0, r5, #0
	mov r2, #4
	bl ov14_021F5EE4
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	mov r4, #0x72
	b _021EB856
_021EB83C:
	ldr r1, _021EB8B4 ; =ov14_021F7D3C
	add r0, r5, #0
	mov r2, #5
	bl ov14_021F5EE4
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021EB854
	mov r4, #0x4d
	b _021EB856
_021EB854:
	mov r4, #0x4e
_021EB856:
	ldr r0, [r5, #0x34]
	ldr r2, _021EB8B8 ; =0x0000044E
	ldrb r3, [r0, r2]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021EB892
	mov r1, #0x80
	bic r3, r1
	strb r3, [r0, r2]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _021EB880
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	b _021EB892
_021EB880:
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F43F4
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
_021EB892:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r1, _021EB8BC ; =ov14_021E9434
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021EB8AC: .word ov14_021F7D2C
_021EB8B0: .word ov14_021F7D1C
_021EB8B4: .word ov14_021F7D3C
_021EB8B8: .word 0x0000044E
_021EB8BC: .word ov14_021E9434
	thumb_func_end ov14_021EB7E4

