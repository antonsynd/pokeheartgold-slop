#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021EA408
	.public ov14_021EA4C8
	.extern ov14_021E6AA0
	.extern ov14_021E7960
	.extern ov14_021E7AD4
	.extern ov14_021E7B8C
	.extern ov14_021E8434
	.extern ov14_021E8514
	.extern ov14_021E88F8
	.extern ov14_021E9F20

    .text

	.text
	thumb_func_start ov14_021EA408
ov14_021EA408: ; 0x021EA408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA41E
	cmp r1, #1
	beq _021EA448
	cmp r1, #2
	beq _021EA48A
	b _021EA4C0
_021EA41E:
	ldr r0, _021EA4C4 ; =0x000088C8
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021EA442
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
_021EA442:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA448:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA4C0
	cmp r7, #0
	bne _021EA4C0
	cmp r0, #0
	bne _021EA4C0
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA4C0
_021EA48A:
	bl ov14_021E9F20
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	cmp r6, #0
	bne _021EA4C0
	cmp r0, #0
	bne _021EA4C0
	ldr r0, [r5, #0x34]
	ldr r1, _021EA4C4 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA4BA
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	bl ov14_021F3B3C
_021EA4BA:
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA4C0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA4C4: .word 0x000088C8
	thumb_func_end ov14_021EA408

	thumb_func_start ov14_021EA4C8
ov14_021EA4C8: ; 0x021EA4C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #0xa
	bls _021EA50E
	b _021EA664
_021EA50E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA51A: ; jump table
	.short _021EA530 - _021EA51A - 2 ; case 0
	.short _021EA56A - _021EA51A - 2 ; case 1
	.short _021EA588 - _021EA51A - 2 ; case 2
	.short _021EA632 - _021EA51A - 2 ; case 3
	.short _021EA664 - _021EA51A - 2 ; case 4
	.short _021EA664 - _021EA51A - 2 ; case 5
	.short _021EA664 - _021EA51A - 2 ; case 6
	.short _021EA664 - _021EA51A - 2 ; case 7
	.short _021EA664 - _021EA51A - 2 ; case 8
	.short _021EA664 - _021EA51A - 2 ; case 9
	.short _021EA642 - _021EA51A - 2 ; case 10
_021EA530:
	ldr r0, [r4, #0x34]
	ldr r1, _021EA66C ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA55A
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
	b _021EA664
_021EA55A:
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov14_021E8434
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EA664
_021EA56A:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	beq _021EA664
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
	mov r0, #2
	strh r0, [r5, #0x10]
_021EA588:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021EA608
	ldr r1, [r4, #0x34]
	ldr r2, _021EA670 ; =0x000040B8
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
	add r7, r6, #0
	cmp r6, #0xff
	bne _021EA5BC
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
	b _021EA5D4
_021EA5BC:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021EA5D4
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
_021EA5D4:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r6, r0
	ldr r1, [r4, #0x34]
	bne _021EA5EC
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	b _021EA5F6
_021EA5EC:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021EA5F6:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #2
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EA664
_021EA608:
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
	ldr r0, _021EA670 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021EA664
_021EA632:
	add r0, r4, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA664
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EA664
_021EA642:
	cmp r6, #0
	bne _021EA664
	ldr r0, [r4, #0x34]
	ldr r1, _021EA66C ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA65C
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
_021EA65C:
	mov r0, #0
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA664:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA66C: .word 0x000088C8
_021EA670: .word 0x000040B8
	thumb_func_end ov14_021EA4C8

