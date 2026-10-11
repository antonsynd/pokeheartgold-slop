	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022245BC
	.extern ov07_0221C410
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_0221C4A8
	.extern ov07_0221FA04
	.extern ov07_0221FA48
	.extern ov07_0221FAA0
	.extern ov07_0222446C
	.extern ov07_02232020
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_022245BC
ov07_022245BC: ; 0x022245BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	mov r1, #0x54
	bl ov07_022324D8
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	str r5, [r4]
	bl ov07_0221C4A8
	ldr r2, _022247C0 ; =0x00000802
	cmp r0, r2
	bgt _02224600
	bge _0222466C
	mov r2, #0x42
	lsl r2, r2, #2
	cmp r0, r2
	bgt _022245F8
	sub r1, r2, #6
	cmp r0, r1
	blt _022245F6
	beq _02224618
	sub r1, r2, #4
	cmp r0, r1
	beq _02224618
	cmp r0, r2
	beq _02224642
_022245F6:
	b _02224722
_022245F8:
	add r2, #8
	cmp r0, r2
	beq _02224642
	b _02224722
_02224600:
	add r1, r2, #6
	cmp r0, r1
	bgt _02224610
	bge _022246C8
	add r1, r2, #2
	cmp r0, r1
	beq _0222469C
	b _02224722
_02224610:
	add r2, #0xe
	cmp r0, r2
	beq _022246F8
	b _02224722
_02224618:
	ldr r0, [r4]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_0221FAA0
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	add r1, r0, #0
	ldr r0, [r4]
	add r2, sp, #4
	add r3, sp, #0
	bl ov07_02232020
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _02224722
_02224642:
	ldr r0, [r4]
	bl ov07_0221C470
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_0221FAA0
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	add r1, r0, #0
	ldr r0, [r4]
	add r2, sp, #4
	add r3, sp, #0
	bl ov07_02232020
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _02224722
_0222466C:
	mov r7, #0xff
	mov r6, #0
_02224670:
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA04
	cmp r0, #0
	beq _02224680
	cmp r0, #2
	bne _02224684
_02224680:
	add r7, r6, #0
	b _0222468A
_02224684:
	add r6, r6, #1
	cmp r6, #4
	blt _02224670
_0222468A:
	cmp r7, #0xff
	bne _02224690
	mov r7, #0
_02224690:
	ldr r0, [r4]
	add r1, r7, #0
	bl ov07_0221FA48
	str r0, [r4, #0xc]
	b _02224722
_0222469C:
	mov r7, #0xff
	mov r6, #0
_022246A0:
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA04
	cmp r0, #4
	bne _022246B0
	add r7, r6, #0
	b _022246B6
_022246B0:
	add r6, r6, #1
	cmp r6, #4
	blt _022246A0
_022246B6:
	cmp r7, #0xff
	bne _022246BC
	mov r7, #0
_022246BC:
	ldr r0, [r4]
	add r1, r7, #0
	bl ov07_0221FA48
	str r0, [r4, #0xc]
	b _02224722
_022246C8:
	mov r7, #0xff
	mov r6, #0
_022246CC:
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA04
	cmp r0, #1
	beq _022246DC
	cmp r0, #3
	bne _022246E0
_022246DC:
	add r7, r6, #0
	b _022246E6
_022246E0:
	add r6, r6, #1
	cmp r6, #4
	blt _022246CC
_022246E6:
	cmp r7, #0xff
	bne _022246EC
	mov r7, #0
_022246EC:
	ldr r0, [r4]
	add r1, r7, #0
	bl ov07_0221FA48
	str r0, [r4, #0xc]
	b _02224722
_022246F8:
	mov r7, #0xff
	mov r6, #0
_022246FC:
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA04
	cmp r0, #5
	bne _0222470C
	add r7, r6, #0
	b _02224712
_0222470C:
	add r6, r6, #1
	cmp r6, #4
	blt _022246FC
_02224712:
	cmp r7, #0xff
	bne _02224718
	mov r7, #0
_02224718:
	ldr r0, [r4]
	add r1, r7, #0
	bl ov07_0221FA48
	str r0, [r4, #0xc]
_02224722:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02224732
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_02224732:
	mov r1, #1
	bl Pokepic_GetAttr
	strh r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl Pokepic_GetAttr
	strh r0, [r4, #0xa]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	mov r1, #1
	add r0, #0x10
	strh r0, [r4, #0xa]
	add r0, r5, #0
	bl ov07_0221C4A8
	str r0, [r4, #0x34]
	add r0, r5, #0
	mov r1, #2
	bl ov07_0221C4A8
	str r0, [r4, #0x38]
	add r0, r5, #0
	mov r1, #3
	bl ov07_0221C4A8
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #4
	bl ov07_0221C4A8
	str r0, [r4, #0x40]
	add r0, r5, #0
	mov r1, #5
	bl ov07_0221C4A8
	str r0, [r4, #0x44]
	add r0, r5, #0
	mov r1, #6
	bl ov07_0221C4A8
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #7
	bl ov07_0221C4A8
	str r0, [r4, #0x4c]
	add r0, r5, #0
	mov r1, #6
	bl ov07_0221C4A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #6
	bl ov07_0221C4A8
	asr r0, r0, #0x10
	str r0, [r4, #0x50]
	ldr r0, [r4]
	ldr r1, _022247C4 ; =ov07_0222446C
	add r2, r4, #0
	bl ov07_0221C410
	add r1, r4, #0
	bl ov07_0222446C
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022247C0: .word 0x00000802
_022247C4: .word ov07_0222446C
	thumb_func_end ov07_022245BC

