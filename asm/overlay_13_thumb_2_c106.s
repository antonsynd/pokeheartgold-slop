	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02225358
	.public ov13_02225510
	.extern ov13_022256C8
	.extern ov13_02225710
	.extern ov13_022259C8
	.extern ov13_02225B58
	.extern ov13_02225F14

	.text

	.text
	thumb_func_start ov13_02225358
ov13_02225358: ; 0x02225358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	ldr r0, _0222550C ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _02225376
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _0222537C
_02225376:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222537C:
	lsr r0, r4, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _0222538A
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222538A:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl ov13_02225710
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	add r1, r5, #0
	add r0, #8
	add r2, r4, #0
	bl memcpy
	add r3, sp, #0x58
	add r2, sp, #0x48
	mov r1, #8
_022253A8:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _022253A8
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_022253BE:
	ldr r0, [sp, #0x14]
	mov r4, #1
	cmp r0, #1
	bge _022253C8
	b _022254E4
_022253C8:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	bl _ll_mul
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x28]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_022253E6:
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	add r3, r5, #0
	add r2, sp, #0x60
	mov r1, #8
_022253F2:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022253F2
	add r2, sp, #0x58
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x68
	add r3, r2, #0
	bl ov13_02225B58
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r3, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x2c]
	mov r0, #0xff
	lsl r0, r0, #8
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #8
	lsr r2, r2, #0x18
	str r2, [sp, #0x34]
	orr r2, r6
	lsr r0, r0, #0x18
	str r2, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r3
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov ip, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r3
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r3
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r3
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r3, r7, #0
	orr r3, r0
	mov r0, ip
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r2, r0
	ldr r0, [sp, #0x30]
	orr r1, r0
	ldr r0, [sp, #0x2c]
	orr r2, r0
	ldr r0, [sp, #0x28]
	orr r1, r0
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl ov13_022256C8
	add r2, sp, #0x60
	mov r1, #8
_022254D0:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _022254D0
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	ble _022253E6
_022254E4:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	bge _022254F0
	b _022253BE
_022254F0:
	add r3, sp, #0x58
	mov r2, #8
_022254F4:
	ldrb r1, [r3]
	ldr r0, [sp]
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	str r0, [sp]
	sub r2, r2, #1
	bne _022254F4
	mov r0, #1
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222550C: .word 0xA6A6A6A6
	thumb_func_end ov13_02225358

	thumb_func_start ov13_02225510
ov13_02225510: ; 0x02225510
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _022256C4 ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _02225532
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _02225538
_02225532:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225538:
	sub r0, r4, #1
	lsr r0, r0, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _02225548
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225548:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl ov13_022259C8
	str r0, [sp, #0x20]
	add r3, sp, #0x58
	add r2, r5, #0
	mov r1, #8
_0222555A:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _0222555A
	add r5, #8
	ldr r0, [sp]
	add r1, r5, #0
	sub r2, r4, #1
	bl memcpy
	mov r0, #5
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_0222557C:
	ldr r4, [sp, #0x14]
	add r0, r4, #0
	cmp r0, #0
	bgt _02225586
	b _022256A0
_02225586:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	bl _ll_mul
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x2c]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x34]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_022255A4:
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r5, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x30]
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, r1, #0
	and r2, r0
	mov r0, #0
	add r3, r5, #0
	and r3, r0
	lsl r0, r2, #8
	lsr r3, r3, #0x18
	orr r3, r0
	lsr r0, r2, #0x18
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r5
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r5
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov ip, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r5
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r5
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r5
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r5, r7, #0
	orr r5, r0
	mov r0, ip
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r5
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r1, r0
	ldr r0, [sp, #0x30]
	orr r2, r0
	ldr r0, [sp, #0x2c]
	orr r1, r0
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl ov13_022256C8
	sub r0, r4, #1
	lsl r1, r0, #3
	ldr r0, [sp]
	add r2, sp, #0x60
	add r5, r0, r1
	add r3, r5, #0
	mov r1, #8
_02225672:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02225672
	add r2, sp, #0x58
	ldr r1, [sp, #0x20]
	add r0, sp, #0x68
	add r3, r2, #0
	bl ov13_02225F14
	add r2, sp, #0x60
	mov r1, #8
_0222568E:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _0222568E
	sub r4, r4, #1
	cmp r4, #0
	bgt _022255A4
_022256A0:
	ldr r0, [sp, #0x24]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	bmi _022256AA
	b _0222557C
_022256AA:
	add r0, sp, #0x48
	add r1, sp, #0x58
	mov r2, #8
	bl memcmp
	cmp r0, #0
	beq _022256BC
	mov r0, #0
	str r0, [sp, #0x1c]
_022256BC:
	ldr r0, [sp, #0x1c]
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022256C4: .word 0xA6A6A6A6
	thumb_func_end ov13_02225510

