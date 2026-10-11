	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7A4C
	.public ov102_021E7DBC
	.public ov102_021E80BC
	.public ov102_021E8178
	.public ov102_021E8240
	.public ov102_021E8D50
	.public ov102_021E8D94
	.public ov102_021E8E84
	.public ov102_021E9464
	.public ov102_021E947C
	.public ov102_021EA238

	.text

	thumb_func_start ov102_021E8178
ov102_021E8178: ; 0x021E8178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #6
	bhi _021E820A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8190: ; jump table
	.short _021E819E - _021E8190 - 2 ; case 0
	.short _021E81AE - _021E8190 - 2 ; case 1
	.short _021E81C8 - _021E8190 - 2 ; case 2
	.short _021E81DA - _021E8190 - 2 ; case 3
	.short _021E81E6 - _021E8190 - 2 ; case 4
	.short _021E81F2 - _021E8190 - 2 ; case 5
	.short _021E81F8 - _021E8190 - 2 ; case 6
_021E819E:
	ldr r0, [r5, #0x14]
	bl ov102_021EA238
	add r1, r5, #0
	add r1, #0x6a
	strb r0, [r1]
	mov r0, #1
	str r0, [r4]
_021E81AE:
	ldr r0, [r5, #0x74]
	cmp r0, #0
	bne _021E81BE
	add r0, r5, #0
	bl ov102_021E7DBC
	str r0, [r4]
	b _021E820A
_021E81BE:
	add r0, r5, #0
	bl ov102_021E80BC
	str r0, [r4]
	b _021E820A
_021E81C8:
	ldr r0, [r5, #0x14]
	mov r1, #3
	bl ov102_021E947C
	cmp r0, #0
	beq _021E820A
	mov r0, #0
	str r0, [r4]
	b _021E820A
_021E81DA:
	mov r1, #5
	str r1, [r4]
	ldr r1, _021E8210 ; =ov102_021E8D94
	bl ov102_021E8D50
	b _021E820A
_021E81E6:
	mov r1, #5
	str r1, [r4]
	ldr r1, _021E8214 ; =ov102_021E8E84
	bl ov102_021E8D50
	b _021E820A
_021E81F2:
	mov r0, #1
	str r0, [r4]
	b _021E820A
_021E81F8:
	ldr r0, [r5, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E820A
	ldr r1, _021E8218 ; =ov102_021E8240
	add r0, r5, #0
	bl ov102_021E7A4C
_021E820A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E8210: .word ov102_021E8D94
_021E8214: .word ov102_021E8E84
_021E8218: .word ov102_021E8240
	thumb_func_end ov102_021E8178

