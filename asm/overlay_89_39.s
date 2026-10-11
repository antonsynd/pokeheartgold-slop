	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225A4F4
	.public ov89_0225A5A4
	.public ov89_0225A5EC
	.extern ov89_0225AC24
	.extern ov89_0225AF10
	.extern ov89_0225AF9C
	.extern ov89_0225AFC0
	.extern ov89_0225BE84
	.extern ov89_0225CD10
	.extern ov89_0225CDB0

	.text

	.text
	thumb_func_start ov89_0225A4F4
ov89_0225A4F4: ; 0x0225A4F4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _0225A590 ; =0x0000073D
	add r7, r0, #0
	ldrb r1, [r7, r1]
	cmp r1, #0
	beq _0225A50A
	add r1, r7, #0
	add r1, #0xb0
	bl ov89_0225BE84
_0225A50A:
	ldr r0, _0225A594 ; =0x0000073C
	ldrb r3, [r7, r0]
	cmp r3, #0
	beq _0225A52A
	add r2, r4, #0
	lsl r4, r3, #2
	ldr r3, _0225A598 ; =ov89_0225CD10
	add r0, r7, #0
	ldr r3, [r3, r4]
	add r1, r7, #0
	blx r3
	cmp r0, #1
	bne _0225A52A
	ldr r0, _0225A594 ; =0x0000073C
	mov r1, #0
	strb r1, [r7, r0]
_0225A52A:
	mov r4, #0
	add r6, r7, #0
_0225A52E:
	add r0, r6, #0
	add r0, #0xb4
	ldr r5, [r0]
	cmp r5, #0
	beq _0225A586
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r1, r0, #0x10
	lsr r1, r1, #0x18
	bne _0225A560
	lsl r0, r0, #8
	lsr r1, r0, #0x18
	beq _0225A560
	mov r0, #9
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	ldr r0, _0225A59C ; =0xFFFF00FF
	lsl r1, r1, #0x18
	and r0, r2
	lsr r1, r1, #0x10
	orr r1, r0
	mov r0, #9
	lsl r0, r0, #6
	str r1, [r5, r0]
_0225A560:
	mov r2, #9
	lsl r2, r2, #6
	ldr r2, [r5, r2]
	mov r3, #0xc
	lsl r2, r2, #0x10
	lsr r2, r2, #0x18
	mul r3, r2
	ldr r2, _0225A5A0 ; =ov89_0225CDB0
	add r0, r7, #0
	ldr r2, [r2, r3]
	add r1, r5, #0
	blx r2
	cmp r0, #1
	bne _0225A586
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov89_0225AC24
_0225A586:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #0x80
	blt _0225A52E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A590: .word 0x0000073D
_0225A594: .word 0x0000073C
_0225A598: .word ov89_0225CD10
_0225A59C: .word 0xFFFF00FF
_0225A5A0: .word ov89_0225CDB0
	thumb_func_end ov89_0225A4F4

	thumb_func_start ov89_0225A5A4
ov89_0225A5A4: ; 0x0225A5A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _0225A5E8 ; =ov89_0225CDB0
	mov r4, #0
	add r5, r6, #0
_0225A5AE:
	add r0, r5, #0
	add r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	beq _0225A5DC
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r2, r0, #0x18
	mov r0, #0xc
	mul r0, r2
	add r0, r7, r0
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0225A5D4
	add r0, r6, #0
	blx r2
	b _0225A5DC
_0225A5D4:
	add r1, #0x1c
	add r0, r1, #0
	bl sub_020181EC
_0225A5DC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x80
	blt _0225A5AE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A5E8: .word ov89_0225CDB0
	thumb_func_end ov89_0225A5A4

	thumb_func_start ov89_0225A5EC
ov89_0225A5EC: ; 0x0225A5EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0
	mov r6, #9
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r1, r0, #0
	add r2, r7, #0
	add r3, r7, #0
	lsl r6, r6, #6
_0225A602:
	add r0, r2, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _0225A63A
	ldr r4, [r0, r6]
	lsl r4, r4, #0x10
	lsr r4, r4, #0x18
	beq _0225A624
	mov r4, #0xad
	lsl r4, r4, #2
	str r0, [r3, r4]
	ldr r0, [sp, #0x10]
	add r3, r3, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	b _0225A63A
_0225A624:
	ldr r4, [sp, #0xc]
	mov r5, #0x7f
	sub r4, r5, r4
	lsl r4, r4, #2
	add r5, r7, r4
	mov r4, #0xad
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_0225A63A:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x80
	blt _0225A602
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0225A6F6
_0225A64C:
	ldr r0, [sp, #4]
	mov r1, #0x7f
	sub r0, r1, r0
	lsl r0, r0, #2
	add r1, r7, r0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0225A6EA
	add r5, r7, #0
_0225A668:
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #9
	str r0, [sp]
	ldr r1, [sp]
	lsl r3, r3, #6
	add r6, r1, #0
	ldr r3, [r6, r3]
	mov r6, #0xc
	lsl r3, r3, #0x10
	lsr r3, r3, #0x18
	mul r6, r3
	ldr r3, _0225A754 ; =ov89_0225CDB0
	add r0, r7, #0
	add r3, r3, r6
	ldr r3, [r3, #8]
	add r2, r4, #0
	blx r3
	cmp r0, #1
	bne _0225A6DC
	mov r1, #9
	ldr r2, [sp]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	bl ov89_0225AFC0
	cmp r0, #1
	bne _0225A6DC
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsr r0, r0, #0x18
	cmp r0, #0xff
	bne _0225A6DC
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	ldr r0, _0225A758 ; =0x00FFFFFF
	and r0, r2
	ldr r2, [sp]
	ldr r2, [r2, r1]
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	orr r0, r2
	str r0, [r4, r1]
	ldr r2, [sp]
	add r0, r7, #0
	ldr r2, [r2, r1]
	lsr r1, r2, #0x18
	lsl r2, r2, #0x10
	lsr r2, r2, #0x18
	bl ov89_0225AF10
	b _0225A6EA
_0225A6DC:
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0225A668
_0225A6EA:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0225A64C
_0225A6F6:
	ldr r0, _0225A75C ; =0x0000073D
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq _0225A750
	add r0, r0, #1
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _0225A750
	mov r5, #0
	add r6, r7, #0
_0225A70A:
	add r0, r6, #0
	add r0, #0xb4
	ldr r4, [r0]
	cmp r4, #0
	beq _0225A742
	ldr r0, _0225A75C ; =0x0000073D
	ldrb r1, [r7, r0]
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r2, r0, #0x10
	lsr r2, r2, #0x18
	cmp r2, r1
	beq _0225A742
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	cmp r0, r1
	beq _0225A742
	add r0, r4, #0
	bl ov89_0225AFC0
	cmp r0, #0
	bne _0225A742
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov89_0225AC24
_0225A742:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #0x80
	blt _0225A70A
	add r0, r7, #0
	bl ov89_0225AF9C
_0225A750:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A754: .word ov89_0225CDB0
_0225A758: .word 0x00FFFFFF
_0225A75C: .word 0x0000073D
	thumb_func_end ov89_0225A5EC

