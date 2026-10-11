	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02267EF8
	.extern ov49_0226A4CC

    .text

	.text
	thumb_func_start ov49_02267EF8
ov49_02267EF8: ; 0x02267EF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r4, _02267F38 ; =0x00000000
	beq _02267F18
	add r5, r7, #0
_02267F04:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #1
	bl sub_020182A0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _02267F04
_02267F18:
	mov r0, #0
	strh r0, [r7]
	mov r0, #1
	strb r0, [r7, #6]
	strh r6, [r7, #4]
	ldrh r2, [r7, #2]
	add r1, r7, #0
	add r1, #0xe8
	lsl r3, r2, #2
	ldr r2, _02267F3C ; =ov49_0226A4CC
	ldr r1, [r1]
	ldr r2, [r2, r3]
	add r0, r7, #0
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02267F38: .word 0x00000000
_02267F3C: .word ov49_0226A4CC
	thumb_func_end ov49_02267EF8

