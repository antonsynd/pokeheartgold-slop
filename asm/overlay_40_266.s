	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FB40
	.public ov40_0223D540
	.public ov40_02242E14

	.text

	thumb_func_start ov40_02242E14
ov40_02242E14: ; 0x02242E14
	push {r4, lr}
	ldr r1, [r1]
	add r4, r0, #0
	cmp r1, #1
	beq _02242E3C
	bl ov40_0223D540
	ldr r1, _02242E40 ; =0x000008B4
	add r1, r4, r1
	bl ov39_022280D4
	add r0, r4, #0
	bl ov40_0222FB40
	ldr r0, _02242E40 ; =0x000008B4
	ldr r0, [r4, r0]
	add r0, #0xa7
	ldrb r1, [r0]
	ldr r0, _02242E44 ; =0x00002604
	strb r1, [r4, r0]
_02242E3C:
	pop {r4, pc}
	nop
_02242E40: .word 0x000008B4
_02242E44: .word 0x00002604
	thumb_func_end ov40_02242E14

