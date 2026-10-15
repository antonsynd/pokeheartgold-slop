	.include "macros.inc"
	.include "overlay_80_0222FD08.inc"
	.include "global.inc"
	.public ov80_02230B4C

    .text

	.text
	thumb_func_start ov80_02230B4C
ov80_02230B4C: ; 0x02230B4C
	ldrb r3, [r0, #4]
	ldrh r2, [r0, #0xe]
	cmp r3, #1
	bhi _02230B62
	cmp r2, #8
	blo _02230B5C
	mov r1, #9
	b _02230B6E
_02230B5C:
	ldr r1, _02230B84 ; =ov80_0223BDD4
	ldrb r1, [r1, r2]
	b _02230B6E
_02230B62:
	cmp r2, #8
	blo _02230B6A
	mov r1, #0x15
	b _02230B6E
_02230B6A:
	ldr r1, _02230B88 ; =ov80_0223BDE0
	ldrb r1, [r1, r2]
_02230B6E:
	cmp r3, #0
	bne _02230B7E
	ldrh r0, [r0, #0xc]
	cmp r0, #0x15
	beq _02230B7C
	cmp r0, #0x31
	bne _02230B7E
_02230B7C:
	mov r1, #0x14
_02230B7E:
	add r0, r1, #0
	bx lr
	nop
_02230B84: .word ov80_0223BDD4
_02230B88: .word ov80_0223BDE0
	thumb_func_end ov80_02230B4C

