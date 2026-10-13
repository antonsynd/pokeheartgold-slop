	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222BD18
	.extern ov43_0222AD00
	.extern ov43_0222BC78
	.extern ov43_0222C844

	.text

	.text
	thumb_func_start ov43_0222BD18
ov43_0222BD18: ; 0x0222BD18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0222BEE0 ; =gSystem
	add r6, r1, #0
	ldr r1, [r0, #0x48]
	ldr r0, _0222BEE4 ; =0x00000CF3
	add r7, r2, #0
	tst r0, r1
	beq _0222BD30
	mov r0, #0
	str r0, [r6]
_0222BD30:
	ldr r0, _0222BEE0 ; =gSystem
	mov r2, #1
	ldr r1, [r0, #0x48]
	tst r2, r1
	beq _0222BD4A
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #5
	bl ov43_0222BC78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222BD4A:
	mov r2, #2
	tst r1, r2
	beq _0222BD72
	mov r0, #8
	strh r0, [r5, #4]
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r7, #0
	bl ov43_0222C844
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl ov43_0222BC78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222BD72:
	mov r1, #4
	ldrsh r1, [r5, r1]
	mov r4, #0
	lsl r2, r1, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #8]
	add r2, r4, #0
	str r2, [sp, #4]
	ldr r2, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r2
	beq _0222BDBA
	cmp r1, #8
	bne _0222BDA0
	mov r0, #6
	ldrsh r0, [r5, r0]
	mov r4, #1
	add r1, r4, #0
	strh r0, [r5, #4]
	add r0, r7, #0
	bl ov43_0222AD00
	b _0222BE62
_0222BDA0:
	cmp r1, #4
	bge _0222BDB0
	cmp r1, #0
	ble _0222BE62
	sub r0, r1, #1
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDB0:
	ble _0222BE62
	sub r0, r1, #1
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDBA:
	mov r0, #0x80
	tst r0, r2
	beq _0222BDEC
	cmp r1, #3
	beq _0222BDC8
	cmp r1, #7
	bne _0222BDD0
_0222BDC8:
	mov r0, #8
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDD0:
	cmp r1, #4
	bge _0222BDE0
	cmp r1, #3
	bge _0222BE62
	add r0, r1, #1
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDE0:
	cmp r1, #7
	bge _0222BE62
	add r0, r1, #1
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDEC:
	mov r0, #0x20
	tst r0, r2
	beq _0222BE12
	cmp r1, #8
	beq _0222BE62
	cmp r1, #4
	bge _0222BE0A
	add r0, r1, #4
	mov r4, #1
	strh r0, [r5, #4]
	add r0, r4, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp]
	b _0222BE62
_0222BE0A:
	sub r0, r1, #4
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BE12:
	mov r3, #0x10
	add r0, r2, #0
	tst r0, r3
	beq _0222BE38
	cmp r1, #8
	beq _0222BE62
	cmp r1, #4
	bge _0222BE2A
	add r0, r1, #4
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BE2A:
	sub r0, r1, #4
	mov r4, #1
	strh r0, [r5, #4]
	add r0, r4, #0
	str r0, [sp, #4]
	str r0, [sp]
	b _0222BE62
_0222BE38:
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0222BE62
	beq _0222BE50
	lsl r1, r3, #5
	tst r1, r2
	beq _0222BE50
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	str r0, [sp]
	b _0222BE62
_0222BE50:
	cmp r0, #0
	beq _0222BE62
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r2
	beq _0222BE62
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp]
_0222BE62:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0222BEBC
	ldr r0, [sp]
	cmp r0, #0
	beq _0222BE96
	mov r0, #0
	ldrsh r1, [r5, r0]
	mov r3, #2
	strh r1, [r5, #2]
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov43_0222BC78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222BE96:
	mov r0, #0
	ldrsh r1, [r5, r0]
	strh r1, [r5, #2]
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _0222BEAC
	add r0, r0, #4
	strh r0, [r5]
_0222BEAC:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov43_0222BC78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222BEBC:
	cmp r4, #1
	bne _0222BED8
	ldr r0, _0222BEE8 ; =0x000005E5
	bl PlaySE
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r7, #0
	bl ov43_0222C844
	ldr r0, [sp, #8]
	strh r0, [r5, #6]
_0222BED8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0222BEE0: .word gSystem
_0222BEE4: .word 0x00000CF3
_0222BEE8: .word 0x000005E5
	thumb_func_end ov43_0222BD18

