	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022226C8
	.public ov13_02222708
	.public ov13_02222730
	.public ov13_02222768
	.extern ov13_0224D258

	.text

	.text
	thumb_func_start ov13_022226C8
ov13_022226C8: ; 0x022226C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r4, [r5, #8]
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [sp]
	add r0, r0, #1
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r7, r0, #0x18
	ldrb r6, [r4, r7]
	ldr r0, [r5, #4]
	ldr r1, [sp]
	add r0, r6, r0
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, r1]
	str r7, [r5]
	str r1, [r5, #4]
	strb r6, [r4, r1]
	strb r0, [r4, r7]
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	bl _u32_div_f
	ldrb r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_022226C8

	thumb_func_start ov13_02222708
ov13_02222708: ; 0x02222708
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _0222272C ; =ov13_0224D258
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0
	add r1, r3, #0
	mvn r0, r0
	mov r3, #0
	bl ov13_02222730
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_0222272C: .word ov13_0224D258
	thumb_func_end ov13_02222708

	thumb_func_start ov13_02222730
ov13_02222730: ; 0x02222730
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	ldr r6, [sp, #0x18]
	cmp r3, #0
	bne _02222746
	add r0, r3, #0
	add r1, r6, #0
	bl ov13_02222768
_02222746:
	mov r1, #0
	cmp r4, #0
	ble _02222762
_0222274C:
	ldrb r2, [r7, r1]
	lsr r0, r5, #8
	add r1, r1, #1
	eor r2, r5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r2, [r6, r2]
	add r5, r0, #0
	eor r5, r2
	cmp r1, r4
	blt _0222274C
_02222762:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_02222730

	thumb_func_start ov13_02222768
ov13_02222768: ; 0x02222768
	push {r4, r5, r6, r7}
	mov r5, #1
	add r3, r5, #0
	ldr r4, _0222279C ; =0xEDB88320
	mov r0, #0
	add r3, #0xff
_02222774:
	add r7, r0, #0
	mov r2, #0
_02222778:
	add r6, r7, #0
	tst r6, r5
	beq _02222786
	lsr r6, r7, #1
	add r7, r6, #0
	eor r7, r4
	b _02222788
_02222786:
	lsr r7, r7, #1
_02222788:
	add r2, r2, #1
	cmp r2, #8
	blt _02222778
	add r0, r0, #1
	stmia r1!, {r7}
	cmp r0, r3
	blt _02222774
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0222279C: .word 0xEDB88320
	thumb_func_end ov13_02222768

