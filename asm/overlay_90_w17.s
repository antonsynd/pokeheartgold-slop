	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258AA8

	.text

	.text
	thumb_func_start ov90_02258AA8
ov90_02258AA8: ; 0x02258AA8
	push {r3, r4, r5, r6, r7}
	sub sp, #4
	add r5, r0, #0
	mov r7, #0
	mov ip, r1
	add r0, r1, #0
	beq _02258AE8
	add r3, r5, #0
_02258AB8:
	add r2, r7, #0
	cmp r7, #0
	ble _02258ADA
	add r0, sp, #0
	add r4, r0, r7
_02258AC2:
	sub r0, r4, #1
	ldrb r1, [r0]
	ldr r0, [r3]
	lsl r6, r1, #2
	ldr r6, [r5, r6]
	cmp r0, r6
	bls _02258ADA
	sub r2, r2, #1
	strb r1, [r4]
	sub r4, r4, #1
	cmp r2, #0
	bgt _02258AC2
_02258ADA:
	add r0, sp, #0
	strb r7, [r0, r2]
	add r7, r7, #1
	mov r0, ip
	add r3, r3, #4
	cmp r7, r0
	blo _02258AB8
_02258AE8:
	mov r0, ip
	mov r4, #0
	cmp r0, #0
	bls _02258B1E
	add r3, sp, #0
_02258AF2:
	add r2, r4, #0
	cmp r4, #0
	ble _02258B0E
	sub r0, r3, #1
	ldrb r1, [r0]
	ldrb r0, [r3]
	lsl r6, r1, #2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r6, [r5, r6]
	cmp r0, r6
	bne _02258B0E
	add r0, r5, r1
	ldrb r2, [r0, #0x10]
_02258B0E:
	ldrb r0, [r3]
	add r4, r4, #1
	add r3, r3, #1
	add r0, r5, r0
	strb r2, [r0, #0x10]
	mov r0, ip
	cmp r4, r0
	blo _02258AF2
_02258B1E:
	add sp, #4
	pop {r3, r4, r5, r6, r7}
	bx lr
	thumb_func_end ov90_02258AA8

