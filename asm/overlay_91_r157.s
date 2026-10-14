	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225FF00
	.extern _02261BE8
	.extern ov91_02260334
	.extern ov91_02261C04
	.extern ov91_02261C1C
	.extern ov91_022621AC
	.extern ov91_0226274C

	.text

	.text
	thumb_func_start ov91_0225FF00
ov91_0225FF00: ; 0x0225FF00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r2, [sp, #0x10]
	mov r2, #0x23
	str r1, [sp, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	str r0, [sp, #8]
	str r3, [sp, #0x14]
	bl memset
	mov r1, #0x5a
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r6, _022600E4 ; =ov91_02261C04
	mov r7, #0
	add r4, r0, r1
	add r5, r0, #0
_0225FF24:
	ldrh r2, [r6]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl sub_02018030
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020181B0
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
	mov r1, #0
	ldr r2, _022600E8 ; =0xFFEDE000
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020182A8
	mov r1, #6
	lsl r1, r1, #0xa
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020182C4
	add r7, r7, #1
	add r6, r6, #2
	add r4, #0x10
	add r5, #0x78
	cmp r7, #3
	blt _0225FF24
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _022600EC ; =ov91_02261C1C
	mov r1, #0x66
	str r0, [sp, #0x28]
	ldr r0, _022600F0 ; =ov91_0226274C
	lsl r1, r1, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldr r6, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, _022600F4 ; =ov91_022621AC
	str r0, [sp, #0x1c]
_0225FF82:
	ldr r0, [sp, #0x10]
	mov r2, #0x5a
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	lsl r2, r2, #2
	add r2, r1, r2
	str r0, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldrb r1, [r1]
	ldrh r3, [r3]
	ldr r0, [sp, #0x20]
	lsl r1, r1, #4
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	bl sub_020180BC
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl sub_02018198
	ldr r0, [sp, #0x24]
	mov r5, #0
	ldrb r0, [r0]
	lsl r1, r0, #4
	ldr r0, [sp, #8]
	add r1, r0, r1
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _0225FFC8
	add r4, #0x40
	b _0225FFCA
_0225FFC8:
	add r4, r5, #0
_0225FFCA:
	cmp r4, #0
	bne _0225FFD2
	mov r7, #1
	b _0225FFE4
_0225FFD2:
	mov r7, #0
	b _0225FFE4
_0225FFD6:
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	add r1, r5, #0
	bl NNS_G3dAnmObjDisableID
	add r5, r5, #1
_0225FFE4:
	cmp r7, #0
	bne _02260004
	cmp r4, #0
	beq _02260000
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02260000
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r1, #2]
	add r1, r1, r0
	lsl r0, r5, #4
	add r0, r1, r0
	b _02260006
_02260000:
	mov r0, #0
	b _02260006
_02260004:
	mov r0, #0
_02260006:
	cmp r0, #0
	bne _0225FFD6
	ldr r5, [sp, #0x1c]
	mov r7, #0
_0226000E:
	cmp r4, #0
	beq _0226001E
	add r0, r4, #0
	add r1, r5, #0
	bl NNS_G3dGetResDictIdxByName
	add r1, r0, #0
	b _02260022
_0226001E:
	mov r1, #0
	mvn r1, r1
_02260022:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02260034
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl NNS_G3dAnmObjEnableID
_02260034:
	add r7, r7, #1
	add r5, #0x10
	cmp r7, #0xf
	blt _0226000E
	ldr r0, [sp, #0x28]
	add r6, #0x14
	add r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0x14
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, #0xf0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #6
	blt _0225FF82
	ldr r0, _022600F8 ; =_02261BE8
	mov r4, #0x85
	ldrb r5, [r0]
	ldr r0, [sp, #0x10]
	lsl r4, r4, #2
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	sub r2, #0xac
	add r2, r1, r2
	lsl r1, r5, #4
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	add r0, r0, r4
	mov r3, #0x20
	bl sub_020180BC
	mov r0, #0x78
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r1, [sp, #8]
	add r1, r1, r4
	bl sub_020181D4
	add r2, r4, #0
	ldr r0, [sp, #8]
	mov r1, #4
	add r2, #0x18
	strh r1, [r0, r2]
	mov r1, #0
	add r2, r2, #2
	strh r1, [r0, r2]
	bl ov91_02260334
	ldr r0, [sp, #8]
	add r2, r4, #0
	ldr r1, [sp, #8]
	sub r2, #0x2c
	add r0, #0x78
	add r1, r1, r2
	bl sub_020181D4
	add r1, r4, #0
	ldr r0, [sp, #8]
	sub r1, #0x2c
	add r0, r0, r1
	mov r1, #0
	bl sub_02018198
	ldr r0, [sp, #8]
	mov r1, #1
	add r0, #0x78
	bl sub_020182A0
	ldr r0, [sp, #8]
	mov r2, #4
	sub r1, r4, #4
	strh r2, [r0, r1]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_022600E4: .word ov91_02261C04
_022600E8: .word 0xFFEDE000
_022600EC: .word ov91_02261C1C
_022600F0: .word ov91_0226274C
_022600F4: .word ov91_022621AC
_022600F8: .word _02261BE8
	thumb_func_end ov91_0225FF00

