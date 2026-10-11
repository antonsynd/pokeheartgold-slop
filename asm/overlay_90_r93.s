	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225B53C

	.text

	.text
	thumb_func_start ov90_0225B53C
ov90_0225B53C: ; 0x0225B53C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r3, #0
	mov r3, #1
	lsl r3, r1
	ldrb r1, [r4, #0x1c]
	tst r1, r3
	bne _0225B55A
	cmp r2, #0
	bne _0225B554
	mov r1, #0
	strb r1, [r4, #0x1d]
_0225B554:
	ldrb r1, [r4, #0x1c]
	orr r1, r3
	strb r1, [r4, #0x1c]
_0225B55A:
	ldrb r3, [r4, #0x1c]
	mov r2, #0
	add r1, r2, #0
	mov r5, #1
_0225B562:
	add r6, r5, #0
	lsl r6, r1
	tst r6, r3
	beq _0225B56C
	add r2, r2, #1
_0225B56C:
	add r1, r1, #1
	cmp r1, #4
	blt _0225B562
	cmp r2, r0
	bne _0225B592
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _0225B588
	mov r1, #0
	mov r0, #0x18
	add r2, r1, #0
	bl sub_02037030
	pop {r4, r5, r6, pc}
_0225B588:
	mov r1, #0
	mov r0, #0x19
	add r2, r1, #0
	bl sub_02037030
_0225B592:
	pop {r4, r5, r6, pc}
	thumb_func_end ov90_0225B53C

