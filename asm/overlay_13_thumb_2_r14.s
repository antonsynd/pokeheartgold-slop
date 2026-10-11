	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_0222281C
	.public ov13_02222850

	.text

	.text
	thumb_func_start ov13_0222281C
ov13_0222281C: ; 0x0222281C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	lsr r1, r2, #0x1f
	add r1, r2, r1
	ldr r6, [sp, #0x18]
	asr r4, r1, #1
	add r1, r6, #0
	add r7, r3, #0
	bl _s32_div_f
	mov r0, #0
	cmp r4, #0
	ble _0222284E
_02222836:
	strb r0, [r5, r0]
	ldrsb r2, [r7, r1]
	ldrsb r3, [r5, r0]
	add r1, r1, #1
	eor r2, r3
	strb r2, [r5, r0]
	cmp r1, r6
	blt _02222848
	mov r1, #0
_02222848:
	add r0, r0, #1
	cmp r0, r4
	blt _02222836
_0222284E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_0222281C

	thumb_func_start ov13_02222850
ov13_02222850: ; 0x02222850
	push {r4, r5}
	lsr r3, r2, #0x1f
	add r3, r2, r3
	asr r4, r3, #1
	mov r3, #0
	cmp r4, #0
	ble _02222870
	add r5, r1, r4
_02222860:
	ldrsb r1, [r0, r3]
	ldrb r2, [r5]
	add r3, r3, #1
	eor r1, r2
	strb r1, [r5]
	add r5, r5, #1
	cmp r3, r4
	blt _02222860
_02222870:
	pop {r4, r5}
	bx lr
	thumb_func_end ov13_02222850

