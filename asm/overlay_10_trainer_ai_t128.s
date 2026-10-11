	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0222036C

	.text

	.text
	thumb_func_start ov10_0222036C
ov10_0222036C: ; 0x0222036C
	push {r3, r4}
	mov r4, #0xc0
	mul r4, r2
	mov r3, #0
	ldr r2, _022203A0 ; =0x00002D58
	add r0, r3, #0
	add r4, r1, r4
_0222037A:
	ldrsb r1, [r4, r2]
	cmp r1, #6
	ble _02220388
	sub r1, r1, #6
	add r1, r3, r1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
_02220388:
	add r0, r0, #1
	add r4, r4, #1
	cmp r0, #8
	blt _0222037A
	cmp r3, #4
	blo _0222039A
	mov r0, #1
	pop {r3, r4}
	bx lr
_0222039A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
_022203A0: .word 0x00002D58
	thumb_func_end ov10_0222036C

