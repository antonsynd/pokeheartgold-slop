	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222948

	.text

	.text
	thumb_func_start ov13_02222948
ov13_02222948: ; 0x02222948
	push {r3, r4}
	mov r3, #0
	b _02222952
_0222294E:
	add r0, r0, #1
	add r1, r1, #1
_02222952:
	add r4, r2, #0
	sub r2, r2, #1
	cmp r4, #0
	ble _02222962
	ldrb r4, [r0]
	ldrb r3, [r1]
	sub r3, r4, r3
	beq _0222294E
_02222962:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov13_02222948

