	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225E990
	.public ov91_0225E9AC
	.public ov91_022608A8
	.public ov91_02260950
	.public ov91_02260A10
	.public ov91_02260A88
	.public ov91_02260AF8
	.public ov91_02260B48
	.public ov91_02260B5C

	.text

	thumb_func_start ov91_022608A8
ov91_022608A8: ; 0x022608A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xf4
	ldr r1, [r1]
	cmp r1, #1
	bne _022608CE
	add r1, r5, #0
	add r1, #0xf8
	ldr r1, [r1]
	bl ov91_02260A88
	cmp r0, #0
	bne _022608CE
	add r0, r5, #0
	add r1, r4, #0
	bl ov91_02260AF8
_022608CE:
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bne _02260940
	add r0, r5, #0
	add r0, #0xf8
	ldr r1, _02260944 ; =0x000006FC
	ldr r0, [r0]
	add r1, r4, r1
	bl ov91_02260B48
	add r1, r5, #0
	add r1, #0xf8
	ldr r1, [r1]
	ldr r0, [r0, #8]
	ldrb r1, [r1]
	cmp r1, #5
	bne _022608FC
	ldr r1, _02260948 ; =0x00007FFF
	bl NNS_G3dMdlSetMdlAmbAll
	b _02260902
_022608FC:
	ldr r1, _0226094C ; =0x00004A52
	bl NNS_G3dMdlSetMdlAmbAll
_02260902:
	add r0, r5, #0
	bl ov91_02260B5C
	add r0, r5, #0
	add r0, #0xf8
	ldr r3, [r0]
	add r0, r5, #4
	ldr r1, [r3, #0x2c]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x34]
	bl sub_020182A8
	add r0, r5, #4
	bl sub_020181EC
	add r0, r5, #0
	add r0, #0x7c
	bl sub_020182A4
	cmp r0, #1
	bne _02260940
	add r0, r5, #0
	bl ov91_02260950
	add r0, r5, #0
	add r0, #0x7c
	bl sub_020181EC
	add r0, r5, #0
	bl ov91_02260A10
_02260940:
	pop {r3, r4, r5, pc}
	nop
_02260944: .word 0x000006FC
_02260948: .word 0x00007FFF
_0226094C: .word 0x00004A52
	thumb_func_end ov91_022608A8

	thumb_func_start ov91_02260950
ov91_02260950: ; 0x02260950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov91_0225E9AC
	cmp r0, #1
	bne _02260966
	ldr r4, _02260A08 ; =0xFFED4000
	b _0226097A
_02260966:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov91_0225E990
	cmp r0, #0
	bne _02260978
	ldr r4, _02260A0C ; =0xFFFCD000
	b _0226097A
_02260978:
	ldr r4, _02260A08 ; =0xFFED4000
_0226097A:
	add r0, r5, #0
	add r0, #0xf8
	ldr r3, [r0]
	add r0, r5, #0
	ldr r1, [r3, #0x2c]
	ldr r3, [r3, #0x34]
	add r0, #0x7c
	add r2, r4, #0
	bl sub_020182A8
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r2, #0
	ldr r0, [r0, #0x30]
	sub r4, r0, r4
	asr r6, r4, #0x1f
	lsr r1, r4, #0x14
	lsl r0, r6, #0xc
	orr r0, r1
	mov r1, #2
	lsl r3, r4, #0xc
	lsl r1, r1, #0xa
	add r3, r3, r1
	adc r0, r2
	lsl r1, r0, #0x14
	lsr r0, r3, #0xc
	orr r0, r1
	mov r1, #0x4b
	lsl r1, r1, #0xe
	bl FX_Div
	mov r7, #1
	add r3, r0, #0
	lsl r7, r7, #0xc
	add r1, r3, r7
	add r5, #0x7c
	add r0, r5, #0
	add r2, r1, #0
	add r3, r3, r7
	bl sub_020182C4
	lsr r0, r4, #0x10
	lsl r3, r6, #0x10
	orr r3, r0
	lsl r2, r4, #0x10
	mov r1, #0
	lsr r0, r7, #1
	add r0, r2, r0
	adc r3, r1
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0x4b
	lsl r1, r1, #0xe
	bl FX_Div
	asr r1, r0, #0xc
	mov r0, #0x18
	sub r0, r0, r1
	str r0, [sp]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl NNS_G3dGlbPolygonAttr
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260A08: .word 0xFFED4000
_02260A0C: .word 0xFFFCD000
	thumb_func_end ov91_02260950

	thumb_func_start ov91_02260A10
ov91_02260A10: ; 0x02260A10
	push {r3, lr}
	sub sp, #8
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl NNS_G3dGlbPolygonAttr
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov91_02260A10

