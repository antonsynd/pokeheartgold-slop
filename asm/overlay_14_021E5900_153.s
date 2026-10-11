#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021EACD4
	.extern ov14_021E6AA0
	.extern ov14_021E7960
	.extern ov14_021E79AC
	.extern ov14_021E7AD4
	.extern ov14_021E7B8C
	.extern ov14_021E7FB8
	.extern ov14_021E7FEC
	.extern ov14_021E80A8
	.extern ov14_021E8434
	.extern ov14_021E8514
	.extern ov14_021E88F8
	.extern ov14_021F7BF0

    .text

	.text
	thumb_func_start ov14_021EACD4
ov14_021EACD4: ; 0x021EACD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_021E80A8
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #0xa
	bhi _021EAD6C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAD10: ; jump table
	.short _021EAD26 - _021EAD10 - 2 ; case 0
	.short _021EAD60 - _021EAD10 - 2 ; case 1
	.short _021EAD80 - _021EAD10 - 2 ; case 2
	.short _021EAEBA - _021EAD10 - 2 ; case 3
	.short _021EAEF0 - _021EAD10 - 2 ; case 4
	.short _021EAEF0 - _021EAD10 - 2 ; case 5
	.short _021EAEF0 - _021EAD10 - 2 ; case 6
	.short _021EAEF0 - _021EAD10 - 2 ; case 7
	.short _021EAEF0 - _021EAD10 - 2 ; case 8
	.short _021EAEF0 - _021EAD10 - 2 ; case 9
	.short _021EAECA - _021EAD10 - 2 ; case 10
_021EAD26:
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEF8 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EAD50
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
	b _021EAEF0
_021EAD50:
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov14_021E8434
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EAEF0
_021EAD60:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	bne _021EAD6E
_021EAD6C:
	b _021EAEF0
_021EAD6E:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
	mov r0, #2
	strh r0, [r5, #0x10]
_021EAD80:
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEFC ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021EADA4
	cmp r6, #0
	bne _021EADA4
	mov r2, #2
	strb r2, [r0, r1]
	add r0, r4, #0
	mov r1, #0x28
	bl ov14_021F69F0
	add r0, r4, #0
	mov r1, #0x81
	mov r2, #0
	bl ov14_021F3488
_021EADA4:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021EAE60
	ldr r1, [r4, #0x34]
	ldr r0, _021EAEFC ; =0x0000044A
	ldr r2, _021EAF00 ; =0x000040B8
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021EADD0
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	b _021EADE4
_021EADD0:
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021EAF04 ; =ov14_021F7BF0
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
_021EADE4:
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r7, r6, #0
	cmp r6, #0xff
	bne _021EADF6
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
	b _021EAE0E
_021EADF6:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021EAE0E
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
_021EAE0E:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r6, r0
	ldr r1, [r4, #0x34]
	bne _021EAE44
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEFC ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021EAE4E
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov14_021E7FEC
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	b _021EAE4E
_021EAE44:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021EAE4E:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #1
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EAEF0
_021EAE60:
	cmp r7, #0
	bne _021EAE90
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEFC ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021EAE90
	ldr r2, [sp, #4]
	cmp r2, #0x10
	blo _021EAE7E
	ldr r1, [sp]
	cmp r1, #0x30
	blo _021EAE7E
	cmp r2, #0x68
	blo _021EAE90
_021EAE7E:
	ldr r1, _021EAEFC ; =0x0000044A
	mov r2, #1
	strb r2, [r0, r1]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FB8
_021EAE90:
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
	ldr r0, _021EAF00 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021EAEF0
_021EAEBA:
	add r0, r4, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EAEF0
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EAEF0
_021EAECA:
	cmp r7, #0
	bne _021EAEF0
	cmp r6, #0
	bne _021EAEF0
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEF8 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EAEE8
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
_021EAEE8:
	mov r0, #0
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EAEF0:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAEF8: .word 0x000088C8
_021EAEFC: .word 0x0000044A
_021EAF00: .word 0x000040B8
_021EAF04: .word ov14_021F7BF0
	thumb_func_end ov14_021EACD4


