	.include "asm/macros.inc"
	.include "overlay_80_022324C4.inc"
	.include "global.inc"
	.public ov80_02233648

    .text

	.text
	thumb_func_start ov80_02233648
ov80_02233648: ; 0x02233648
	ldrb r3, [r0, #0x10]
	ldrh r2, [r0, #0x16]
	cmp r3, #1
	bhi _0223365E
	cmp r2, #8
	blo _02233658
	mov r1, #7
	b _0223366A
_02233658:
	ldr r1, _02233680 ; =ov80_0223BE54
	ldrb r1, [r1, r2]
	b _0223366A
_0223365E:
	cmp r2, #8
	blo _02233666
	mov r1, #0x12
	b _0223366A
_02233666:
	ldr r1, _02233684 ; =ov80_0223BE60
	ldrb r1, [r1, r2]
_0223366A:
	cmp r3, #0
	bne _0223367A
	ldrh r0, [r0, #0x14]
	cmp r0, #0x15
	beq _02233678
	cmp r0, #0x31
	bne _0223367A
_02233678:
	mov r1, #0x14
_0223367A:
	add r0, r1, #0
	bx lr
	nop
_02233680: .word ov80_0223BE54
_02233684: .word ov80_0223BE60
	thumb_func_end ov80_02233648

