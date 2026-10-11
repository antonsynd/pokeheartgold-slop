	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7A4C
	.public ov102_021E7B18
	.public ov102_021E7BF8
	.public ov102_021E7C84
	.public ov102_021E8240
	.public ov102_021E8D50
	.public ov102_021E8D94
	.public ov102_021E8E84
	.public ov102_021E9464

	.text

	thumb_func_start ov102_021E7C84
ov102_021E7C84: ; 0x021E7C84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhi _021E7CFA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E7C9C: ; jump table
	.short _021E7CA6 - _021E7C9C - 2 ; case 0
	.short _021E7CCA - _021E7C9C - 2 ; case 1
	.short _021E7CD6 - _021E7C9C - 2 ; case 2
	.short _021E7CE2 - _021E7C9C - 2 ; case 3
	.short _021E7CE8 - _021E7C9C - 2 ; case 4
_021E7CA6:
	ldr r0, [r5, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E7CFA
	ldr r0, [r5, #0x74]
	cmp r0, #0
	bne _021E7CC0
	add r0, r5, #0
	bl ov102_021E7B18
	str r0, [r4]
	b _021E7CFA
_021E7CC0:
	add r0, r5, #0
	bl ov102_021E7BF8
	str r0, [r4]
	b _021E7CFA
_021E7CCA:
	mov r1, #3
	str r1, [r4]
	ldr r1, _021E7D00 ; =ov102_021E8D94
	bl ov102_021E8D50
	b _021E7CFA
_021E7CD6:
	mov r1, #3
	str r1, [r4]
	ldr r1, _021E7D04 ; =ov102_021E8E84
	bl ov102_021E8D50
	b _021E7CFA
_021E7CE2:
	mov r0, #0
	str r0, [r4]
	b _021E7CFA
_021E7CE8:
	ldr r0, [r5, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E7CFA
	ldr r1, _021E7D08 ; =ov102_021E8240
	add r0, r5, #0
	bl ov102_021E7A4C
_021E7CFA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E7D00: .word ov102_021E8D94
_021E7D04: .word ov102_021E8E84
_021E7D08: .word ov102_021E8240
	thumb_func_end ov102_021E7C84

