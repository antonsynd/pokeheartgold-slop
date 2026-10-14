	.include "macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022384C0

	.text

	.text
	thumb_func_start ov57_022384C0
ov57_022384C0: ; 0x022384C0
	push {r4, r5, r6, r7}
	mov r2, #0xfb
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldr r4, _02238504 ; =0x00000351
	lsl r2, r2, #3
	add r2, r0, r2
	ldr r2, [r2, #8]
	mov r1, #0
	add r3, r4, #1
	sub r5, r4, #1
_022384D6:
	ldrb r7, [r0, r5]
	ldrb r6, [r2]
	cmp r7, r6
	bne _022384EE
	ldrb r7, [r0, r4]
	ldrb r6, [r2, #1]
	cmp r7, r6
	bne _022384EE
	ldrb r7, [r0, r3]
	ldrb r6, [r2, #2]
	cmp r7, r6
	beq _022384F4
_022384EE:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_022384F4:
	add r1, r1, #1
	add r2, r2, #3
	add r0, #0x10
	cmp r1, #8
	blt _022384D6
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_02238504: .word 0x00000351
	thumb_func_end ov57_022384C0

