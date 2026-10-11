	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8B40
	.extern ov102_021E8798
	.extern ov102_021E8C3C
	.extern ov102_021E8C64

	.text

	.text
	thumb_func_start ov102_021E8B40
ov102_021E8B40: ; 0x021E8B40
	push {r3, r4, r5, lr}
	mov r2, #0x80
	add r4, r0, #0
	tst r2, r1
	beq _021E8BB8
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	beq _021E8B54
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E8B54:
	ldrb r1, [r4, #7]
	cmp r1, #4
	bhs _021E8B8A
	add r1, r1, #1
	strb r1, [r4, #7]
	bl ov102_021E8798
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021E8B6C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E8B6C:
	cmp r0, r1
	bne _021E8B7E
	mov r1, #1
	tst r0, r1
	beq _021E8B7E
	mov r0, #0
	strb r0, [r4, #6]
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_021E8B7E:
	ldrb r0, [r4, #7]
	sub r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021E8B8A:
	ldrh r2, [r4]
	ldrh r1, [r4, #2]
	cmp r2, r1
	bhs _021E8BB2
	mov r1, #1
	str r1, [r4, #8]
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	bl ov102_021E8798
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021E8BAA
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E8BAA:
	mov r0, #0
	strb r0, [r4, #6]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021E8BB2:
	mov r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021E8BB8:
	mov r5, #0x40
	add r2, r1, #0
	tst r2, r5
	beq _021E8BF4
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _021E8BCE
	mov r0, #0
	strh r0, [r4, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E8BCE:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _021E8BDC
	sub r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E8BDC:
	ldrh r0, [r4]
	cmp r0, #0
	beq _021E8BF0
	sub r5, #0x41
	str r5, [r4, #8]
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E8BF0:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E8BF4:
	mov r3, #0x30
	add r2, r1, #0
	tst r2, r3
	beq _021E8C1E
	ldrb r2, [r4, #6]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, #6]
	bl ov102_021E8798
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021E8C12
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E8C12:
	ldrb r1, [r4, #6]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #6]
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E8C1E:
	lsl r2, r5, #3
	tst r2, r1
	beq _021E8C2A
	bl ov102_021E8C3C
	pop {r3, r4, r5, pc}
_021E8C2A:
	add r3, #0xd0
	tst r1, r3
	beq _021E8C36
	bl ov102_021E8C64
	pop {r3, r4, r5, pc}
_021E8C36:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021E8B40

