	.include "asm/macros.inc"
	.include "overlay_49_02261FC0.inc"
	.include "global.inc"
	.public ov49_02262D70
	.extern ov49_02269DF8

    .text

	.text
	thumb_func_start ov49_02262D70
ov49_02262D70: ; 0x02262D70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02262D82
	bl GF_AssertFail
_02262D82:
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	strb r0, [r5, #5]
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	strb r4, [r5, #6]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	strb r6, [r5, #3]
	bl ov49_02262DD4
	ldr r0, _02262DB4 ; =ov49_02269DF8
	mov r1, #0x12
	ldrb r0, [r0, r4]
	mov r2, #3
	mov r3, #0xd
	str r0, [sp]
	add r0, r7, #0
	bl ov49_0225A204
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02262DB4: .word ov49_02269DF8
	thumb_func_end ov49_02262D70


