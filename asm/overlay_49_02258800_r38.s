	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258EEC
	.extern ov49_02269698
	.extern ov49_022696C0

    .text

	.text
	thumb_func_start ov49_02258EEC
ov49_02258EEC: ; 0x02258EEC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #0xa
	blt _02258EFC
	bl GF_AssertFail
_02258EFC:
	ldrb r0, [r5, #0xb]
	lsl r1, r0, #2
	ldr r0, _02258F30 ; =ov49_02269698
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _02258F0E
	add r0, r5, #0
	add r1, r6, #0
	blx r2
_02258F0E:
	mov r2, #0
	strh r2, [r5, #8]
	strb r2, [r5, #0xa]
	add r1, r5, #0
	strb r4, [r5, #0xb]
	add r1, #0xc
	mov r0, #0x18
_02258F1C:
	strb r2, [r1]
	add r1, r1, #1
	sub r0, r0, #1
	bne _02258F1C
	ldr r0, _02258F34 ; =ov49_022696C0
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	str r0, [r5, #0x24]
	pop {r4, r5, r6, pc}
	nop
_02258F30: .word ov49_02269698
_02258F34: .word ov49_022696C0
	thumb_func_end ov49_02258EEC

