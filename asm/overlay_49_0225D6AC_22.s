	.include "asm/macros.inc"
	.include "overlay_49_0225D6AC.inc"
	.include "global.inc"
	.public ov49_0225E420
	.extern ov49_02269A7C
	.extern ov49_02269A7E

    .text

	.text
	thumb_func_start ov49_0225E420
ov49_0225E420: ; 0x0225E420
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225E470 ; =0x00000613
	add r6, r1, #0
	ldrb r0, [r5, r0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, r6
	bhi _0225E436
	bl GF_AssertFail
_0225E436:
	cmp r7, #3
	blo _0225E43E
	bl GF_AssertFail
_0225E43E:
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ov49_0225D030
	ldr r1, _0225E474 ; =ov49_02269A7C
	lsl r0, r7, #2
	ldrsh r1, [r1, r0]
	ldr r2, [r4]
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r4]
	ldr r1, _0225E478 ; =ov49_02269A7E
	ldr r2, [r4, #8]
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [r4, #8]
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E470: .word 0x00000613
_0225E474: .word ov49_02269A7C
_0225E478: .word ov49_02269A7E
	thumb_func_end ov49_0225E420

