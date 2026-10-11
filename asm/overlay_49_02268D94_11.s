	.include "asm/macros.inc"
	.include "overlay_49_02268D94.inc"
	.include "global.inc"
	.public ov49_022693F8
	.public ov49_02269430
	.extern ov49_0226A8CC
	.extern ov49_0226A8D4

    .text

	.text
	thumb_func_start ov49_022693F8
ov49_022693F8: ; 0x022693F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #2
	blo _0226940A
	bl GF_AssertFail
_0226940A:
	ldrh r0, [r5]
	cmp r0, #1
	bne _02269414
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02269414:
	ldr r3, _0226942C ; =ov49_0226A8D4
	strh r4, [r5, #2]
	lsl r4, r4, #2
	mov r0, #1
	strh r0, [r5]
	ldr r3, [r3, r4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx r3
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0226942C: .word ov49_0226A8D4
	thumb_func_end ov49_022693F8

	thumb_func_start ov49_02269430
ov49_02269430: ; 0x02269430
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r3, [r4]
	cmp r3, #0
	beq _0226946A
	ldrh r3, [r4, #2]
	lsl r5, r3, #2
	ldr r3, _02269470 ; =ov49_0226A8CC
	ldr r3, [r3, r5]
	blx r3
	cmp r0, #1
	bne _02269466
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
_02269466:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226946A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02269470: .word ov49_0226A8CC
	thumb_func_end ov49_02269430

