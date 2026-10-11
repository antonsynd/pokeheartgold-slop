	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_0225FDCC
	.extern ov49_0225EF40
	.extern ov49_0225EF84
	.extern ov49_0225EF88
	.extern ov49_0225EF90
	.extern ov49_0225EFC4
	.extern ov49_0225F224
	.extern ov49_0225F260
	.extern ov49_02269B60
	.extern ov49_02269B70
	.extern ov49_02269B80
	.extern ov49_02269C60
	.extern ov49_02269C90
	.extern ov49_02269D20

    .text

	.text
	thumb_func_start ov49_0225FDCC
ov49_0225FDCC: ; 0x0225FDCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp, #4]
	add r5, r1, #0
	add r7, r2, #0
	bl ov49_0225EF84
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	bl ov49_0225EF88
	cmp r0, #0
	beq _0225FDEC
	cmp r0, #1
	beq _0225FDFC
	b _0226020A
_0225FDEC:
	ldr r0, [sp, #4]
	mov r1, #4
	bl ov49_0225EF40
	ldr r0, [sp, #4]
	bl ov49_0225EF90
	b _0226020A
_0225FDFC:
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A53C
	add r0, r5, #0
	bl ov49_0225A010
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl ov49_02259FF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225A000
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov49_02259FF8
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl ov49_02258DB0
	add r6, r0, #0
	beq _0225FE7E
	ldr r0, [sp, #0x18]
	bl ov45_0222A330
	cmp r0, #0
	bne _0225FE6A
	ldr r0, [sp, #0x18]
	bl ov45_0222A3A0
	cmp r0, #1
	bne _0225FE6A
	ldr r0, [sp, #0x18]
	bl ov45_0222A2F8
	cmp r0, #0
	bne _0225FE6A
	add r0, r6, #0
	bl ov49_02258F3C
	cmp r0, #9
	beq _0225FE7E
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #9
	bl ov49_02258EEC
	b _0225FE7E
_0225FE6A:
	add r0, r6, #0
	bl ov49_02258F3C
	cmp r0, #0
	beq _0225FE7E
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl ov49_02258EEC
_0225FE7E:
	add r0, r4, #0
	bl ov49_02258DAC
	str r0, [sp, #0x28]
	mov r1, #5
	bl ov49_02258E60
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl ov49_02258E60
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	bl ov49_02258E34
	add r1, sp, #0x40
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	ldr r1, [sp, #8]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov42_02228270
	add r2, sp, #0x40
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r1, [r2, r1]
	ldr r0, [sp, #0x1c]
	asr r3, r1, #3
	lsr r3, r3, #0x1c
	add r3, r1, r3
	lsl r1, r3, #0xc
	mov r3, #0xe
	ldrsh r2, [r2, r3]
	lsr r1, r1, #0x10
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	lsl r2, r3, #0xc
	lsr r2, r2, #0x10
	bl ov49_022589C4
	str r0, [sp, #0x24]
	add r0, sp, #0x40
	mov r1, #0xa
	ldrsh r2, [r0, r1]
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp, #0x10]
	mov r1, #8
	ldrsh r1, [r0, r1]
	ldr r2, [sp, #0x10]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov49_022589C4
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_0225A4E0
	add r1, r0, #0
	cmp r1, r7
	beq _0225FF48
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A084
	cmp r0, #0
	beq _0225FF48
	add r0, r5, #0
	bl ov49_0225A4D0
_0225FF48:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0225FF94
	add r0, r5, #0
	bl ov49_0225A500
	cmp r0, #1
	bne _0225FF60
	ldr r0, [sp, #0x2c]
	sub r0, r0, #1
	cmp r0, #2
	bls _0225FF62
_0225FF60:
	b _0226020A
_0225FF62:
	add r0, r5, #0
	bl ov49_0225A4E0
	add r1, r0, #0
	cmp r1, r7
	beq _0225FF8C
	add r0, r4, #0
	bl ov49_02258D70
	add r6, r0, #0
	beq _0225FF8C
	bl ov49_02258F3C
	cmp r0, #0
	bne _0225FF8C
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	ldr r2, [r2]
	add r1, r6, #0
	bl ov49_02258EEC
_0225FF8C:
	add r0, r5, #0
	bl ov49_0225A4D0
	b _0226020A
_0225FF94:
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A53C
	ldr r0, [sp, #0x24]
	bl ov49_02258A30
	cmp r0, #1
	bne _0225FFDA
	ldr r0, [sp, #0x24]
	ldr r3, _02260210 ; =ov49_02269D20
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	bl ov49_0225F260
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov49_0225A03C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225FFDA:
	add r0, r5, #0
	bl ov49_0225A55C
	cmp r0, #1
	bne _02260008
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	ldr r0, [sp, #0x14]
	ldr r2, _02260214 ; =ov49_02269B80
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EFC4
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02260008:
	ldr r0, [sp, #0x18]
	bl ov45_0222B00C
	cmp r0, #0
	beq _02260036
	ldr r0, [sp, #0x14]
	ldr r2, _02260218 ; =ov49_02269B70
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EFC4
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02260036:
	ldr r0, _0226021C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02260120
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov49_02258F40
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _022600A6
	mov r1, #5
	bl ov49_02258E60
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	mov r1, #4
	bl ov49_02258E60
	add r1, r0, #0
	cmp r1, #0xfe
	beq _022600A6
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A064
	ldr r1, [sp, #0x38]
	cmp r1, #0
	bne _022600A6
	cmp r0, #0
	bne _022600A6
	ldr r0, [sp, #0x14]
	ldr r2, _02260220 ; =ov49_02269B60
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EFC4
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022600A6:
	add r0, r6, #0
	bl ov49_02258A90
	cmp r0, #1
	bne _022600E6
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl ov49_02258E60
	cmp r0, #0
	bne _022600E6
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #0x20]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov49_0225E58C
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A03C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022600E6:
	add r0, r6, #0
	bl ov49_02258A70
	cmp r0, #1
	bne _02260120
	ldr r0, [sp, #4]
	ldr r3, _02260224 ; =ov49_02269C90
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ov49_0225F260
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A03C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02260120:
	ldr r0, [sp, #8]
	bl ov49_0225F224
	cmp r0, #1
	bne _022601C0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0226016A
	add r0, r6, #0
	bl ov49_02258A50
	cmp r0, #1
	bne _0226016A
	ldr r0, [sp, #4]
	ldr r3, _02260228 ; =ov49_02269C60
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ov49_0225F260
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A03C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226016A:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov49_02258F40
	str r0, [sp, #0x3c]
	cmp r0, #0
	beq _022601C0
	mov r1, #4
	bl ov49_02258E60
	add r6, r0, #0
	cmp r6, #0xfe
	beq _022601C0
	add r0, r5, #0
	bl ov49_0225A4F0
	cmp r0, #0
	bne _022601C0
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A084
	cmp r0, #0
	bne _022601C0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov49_0225A428
	ldr r0, [sp, #0x3c]
	bl ov49_02258F3C
	ldr r1, [sp, #0x30]
	mov r2, #0
	str r0, [r1]
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	bl ov49_02258EEC
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022601C0:
	ldr r0, _0226021C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	beq _0226020A
	add r0, r5, #0
	bl ov49_0225A4F0
	cmp r0, #0
	bne _022601EE
	ldr r0, [sp, #0x18]
	bl ov45_0222A53C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A428
	ldr r0, _0226022C ; =0x000005DC
	bl PlaySE
	b _02260204
_022601EE:
	add r0, r5, #0
	bl ov49_0225A4E0
	cmp r0, r7
	bne _02260204
	add r0, r5, #0
	bl ov49_0225A4D0
	ldr r0, _0226022C ; =0x000005DC
	bl PlaySE
_02260204:
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226020A:
	mov r0, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260210: .word ov49_02269D20
_02260214: .word ov49_02269B80
_02260218: .word ov49_02269B70
_0226021C: .word gSystem
_02260220: .word ov49_02269B60
_02260224: .word ov49_02269C90
_02260228: .word ov49_02269C60
_0226022C: .word 0x000005DC
	thumb_func_end ov49_0225FDCC

