	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E848C
	.extern ov102_021E7AA4
	.extern ov102_021E839C
	.extern ov102_021E83E4
	.extern ov102_021E8458
	.extern ov102_021E85A8
	.extern ov102_021E874C
	.extern ov102_021E87B4
	.extern ov102_021E940C

	.text

	.text
	thumb_func_start ov102_021E848C
ov102_021E848C: ; 0x021E848C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov102_021E839C
	cmp r0, #1
	beq _021E84A0
	cmp r0, #2
	beq _021E84B8
	b _021E84E4
_021E84A0:
	ldr r0, _021E856C ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0xa
	bl ov102_021E940C
	ldr r0, _021E8570 ; =ov102_021E7AA4
	str r0, [r5, #0x24]
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021E84B8:
	ldr r0, _021E8574 ; =0x000005E4
	bl PlaySE
	add r0, r5, #0
	add r0, #0x6b
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x6b
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0x1b
	bl ov102_021E940C
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021E84E4:
	add r0, r5, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E851C
	add r0, r5, #0
	bl ov102_021E83E4
	add r6, r0, #0
	bmi _021E8568
	add r1, r5, #0
	add r1, #0x6b
	ldrb r1, [r1]
	lsl r2, r6, #0x10
	ldr r0, [r5, #0x18]
	lsr r2, r2, #0x10
	bl ov102_021E85A8
	cmp r0, #0
	bne _021E8514
	ldr r0, _021E8578 ; =0x000005F2
	bl PlaySE
	pop {r4, r5, r6, pc}
_021E8514:
	add r0, r5, #0
	add r0, #0x50
	strh r6, [r0]
	b _021E8548
_021E851C:
	add r0, r5, #0
	bl ov102_021E8458
	add r6, r0, #0
	bmi _021E8568
	add r1, r5, #0
	add r1, #0x6b
	ldrb r1, [r1]
	lsl r2, r6, #0x10
	ldr r0, [r5, #0x18]
	lsr r2, r2, #0x10
	bl ov102_021E85A8
	cmp r0, #0
	bne _021E8542
	ldr r0, _021E8578 ; =0x000005F2
	bl PlaySE
	pop {r4, r5, r6, pc}
_021E8542:
	add r0, r5, #0
	add r0, #0x50
	strh r6, [r0]
_021E8548:
	ldr r0, _021E856C ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0x54
	add r1, r5, #0
	bl ov102_021E874C
	ldr r0, _021E857C ; =ov102_021E87B4
	mov r1, #0xb
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x14]
	bl ov102_021E940C
	mov r0, #1
	str r0, [r4]
_021E8568:
	pop {r4, r5, r6, pc}
	nop
_021E856C: .word 0x000005DC
_021E8570: .word ov102_021E7AA4
_021E8574: .word 0x000005E4
_021E8578: .word 0x000005F2
_021E857C: .word ov102_021E87B4
	thumb_func_end ov102_021E848C

