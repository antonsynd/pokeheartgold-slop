	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02260D98
	.public ov91_02260E88
	.public ov91_02260EE0
	.public ov91_02260F50
	.public ov91_02261070
	.public ov91_022610A8
	.public ov91_02261BF8
	.public ov91_02261BFE
	.public ov91_02261C0A
	.public ov91_02261D64

	.text

	thumb_func_start ov91_02260D98
ov91_02260D98: ; 0x02260D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r4, #0
	add r6, sp, #0x10
	add r7, sp, #0xc
_02260DA4:
	ldr r0, [r5]
	cmp r0, #1
	bne _02260E78
	ldr r0, [r5, #0x14]
	cmp r0, #0x10
	bge _02260DC4
	mov r1, #0x7d
	str r1, [sp]
	str r6, [sp, #4]
	mov r1, #0x10
	mov r2, #8
	mov r3, #0xbe
	str r7, [sp, #8]
	bl ov91_02260EE0
	b _02260DF2
_02260DC4:
	cmp r0, #0x1a
	bge _02260DDE
	mov r1, #0x8c
	str r1, [sp]
	str r6, [sp, #4]
	sub r0, #0x10
	mov r1, #0xa
	mov r2, #4
	mov r3, #0xb6
	str r7, [sp, #8]
	bl ov91_02260EE0
	b _02260DF2
_02260DDE:
	mov r1, #0xa0
	str r1, [sp]
	str r6, [sp, #4]
	sub r0, #0x1a
	mov r1, #6
	mov r2, #3
	mov r3, #0xb4
	str r7, [sp, #8]
	bl ov91_02260EE0
_02260DF2:
	ldr r0, [r5, #0x14]
	add r1, r0, #1
	lsl r0, r1, #1
	str r1, [r5, #0x14]
	add r1, r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r1, r0, #5
	mov r0, #9
	sub r0, r0, r1
	mov r1, #0xa
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	add r1, sp, #0x14
	bl Sprite_SetAffineScale
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #8]
	cmp r0, #0
	beq _02260E2E
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	b _02260E34
_02260E2E:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
_02260E34:
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0xc]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #8
	bl Sprite_SetMatrix
	ldr r1, [r5, #8]
	ldr r0, _02260E84 ; =0xFFFE0000
	cmp r1, r0
	blt _02260E6C
	mov r0, #0x12
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _02260E6C
	mov r0, #0x1e
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _02260E6C
	mov r0, #0x2e
	lsl r0, r0, #0x10
	cmp r1, r0
	ble _02260E78
_02260E6C:
	mov r0, #0
	str r0, [r5]
	ldr r0, [r5, #4]
	mov r1, #0
	bl Sprite_SetDrawFlag
_02260E78:
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #8
	blt _02260DA4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260E84: .word 0xFFFE0000
	thumb_func_end ov91_02260D98

	thumb_func_start ov91_02260E88
ov91_02260E88: ; 0x02260E88
	push {r4, r5, r6, lr}
	mov r4, #0
	add r3, r4, #0
	add r6, r0, #0
_02260E90:
	ldr r5, [r6]
	cmp r5, #0
	bne _02260E9E
	mov r4, #0x1c
	mul r4, r3
	add r4, r0, r4
	b _02260EA6
_02260E9E:
	add r3, r3, #1
	add r6, #0x1c
	cmp r3, #8
	blt _02260E90
_02260EA6:
	cmp r4, #0
	beq _02260EDC
	cmp r1, #0x80
	bge _02260EB2
	mov r0, #1
	b _02260EB4
_02260EB2:
	mov r0, #0
_02260EB4:
	str r0, [r4, #0x18]
	lsl r0, r1, #0xc
	str r0, [r4, #8]
	mov r0, #2
	lsl r1, r2, #0xc
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [r4, #0xc]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #8
	bl Sprite_SetMatrix
	mov r1, #1
	str r1, [r4]
	ldr r0, [r4, #4]
	bl Sprite_SetDrawFlag
	mov r0, #0
	str r0, [r4, #0x14]
_02260EDC:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov91_02260E88

	thumb_func_start ov91_02260EE0
ov91_02260EE0: ; 0x02260EE0
	push {r4, r5, r6, lr}
	add r4, r2, #0
	ldr r2, [sp, #0x10]
	add r5, r3, #0
	sub r2, r2, r5
	mul r2, r0
	add r0, r2, #0
	bl _s32_div_f
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	bl GF_CosDegNoWrap
	lsl r5, r4, #0xc
	asr r4, r5, #0x1f
	asr r1, r0, #0x1f
	add r2, r5, #0
	add r3, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x14]
	asr r1, r1, #0xc
	str r1, [r0]
	add r0, r6, #0
	bl GF_SinDegNoWrap
	asr r1, r0, #0x1f
	add r2, r5, #0
	add r3, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x18]
	asr r1, r1, #0xc
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov91_02260EE0

	thumb_func_start ov91_02260F50
ov91_02260F50: ; 0x02260F50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	mov r1, #0x5a
	str r0, [sp, #0x40]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	add r6, r0, r1
	sub r2, r3, #1
	add r5, r0, #0
	lsl r0, r2, #1
	str r0, [sp, #0x14]
	ldr r1, _0226105C ; =ov91_02261D64
	lsl r0, r2, #3
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	lsl r0, r0, #1
	mov r4, #0
	str r0, [sp, #0x1c]
_02260F7E:
	cmp r4, #0
	bne _02260F86
	mov r2, #0x24
	b _02260F94
_02260F86:
	cmp r4, #1
	bne _02260F8E
	mov r2, #0x25
	b _02260F94
_02260F8E:
	ldr r1, _02261060 ; =ov91_02261C0A
	ldr r0, [sp, #0x14]
	ldrh r2, [r1, r0]
_02260F94:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_02018030
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020181B0
	mov r1, #0
	ldr r2, _02261064 ; =0xFFF9E000
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020182A8
	mov r1, #6
	lsl r1, r1, #0xa
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020182C4
	cmp r4, #1
	bne _02260FCC
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
_02260FCC:
	cmp r4, #1
	bhi _02260FE0
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl sub_020182E0
	b _02260FF0
_02260FE0:
	mov r0, #0xb4
	bl GF_DegreeToSinCosIdxNoWrap
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_020182E0
_02260FF0:
	add r4, r4, #1
	add r6, #0x10
	add r5, #0x78
	cmp r4, #3
	blt _02260F7E
	mov r0, #0
	str r0, [sp, #0x10]
	mov r1, #0x66
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	add r5, r0, r1
	sub r1, #0x30
	add r0, r0, r1
	ldr r6, _02261068 ; =ov91_02261BF8
	ldr r4, _0226106C ; =ov91_02261BFE
	str r0, [sp, #0x20]
_02261010:
	ldr r0, [sp, #0x40]
	str r7, [sp]
	str r0, [sp, #4]
	ldrh r1, [r4]
	ldrh r3, [r6]
	add r0, r5, #0
	lsl r2, r1, #4
	ldr r1, [sp, #0x20]
	add r1, r1, r2
	ldr r2, [sp, #0xc]
	bl sub_020180BC
	ldrh r1, [r4]
	mov r0, #0x78
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r0, r0, r2
	bl sub_020181D4
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, r0, #1
	add r4, r4, #2
	add r5, #0x14
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _02261010
	mov r2, #1
	mov r1, #0x75
	ldr r0, [sp, #8]
	lsl r2, r2, #0xc
	lsl r1, r1, #2
	str r2, [r0, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0226105C: .word ov91_02261D64
_02261060: .word ov91_02261C0A
_02261064: .word 0xFFF9E000
_02261068: .word ov91_02261BF8
_0226106C: .word ov91_02261BFE
	thumb_func_end ov91_02260F50

	thumb_func_start ov91_02261070
ov91_02261070: ; 0x02261070
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	add r6, r2, #0
	mov r4, #0
	add r5, r7, r0
_0226107E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020180F8
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _0226107E
	mov r0, #0x5a
	lsl r0, r0, #2
	mov r4, #0
	add r5, r7, r0
_02261096:
	add r0, r5, #0
	bl sub_02018068
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _02261096
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov91_02261070

	thumb_func_start ov91_022610A8
ov91_022610A8: ; 0x022610A8
	push {r3, r4, r5, lr}
	mov r1, #0x66
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, #0x3c
	ldr r1, [r4, r1]
	bl sub_02018124
	mov r0, #0x76
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _022611B4
	add r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _022610D6
	cmp r1, #1
	beq _02261128
	cmp r1, #2
	beq _0226116C
	b _02261194
_022610D6:
	add r1, r0, #0
	add r1, #8
	add r2, r0, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r2, r1
	mov r2, #0x33
	lsl r2, r2, #0xc
	cmp r3, r2
	bge _022610F2
	add r2, r0, #4
	ldr r2, [r4, r2]
	add r1, r2, r1
	b _022610F4
_022610F2:
	mov r1, #0
_022610F4:
	add r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0x1e
	lsl r1, r1, #4
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0x46
	add r3, r2, r0
	ldr r0, _022611C8 ; =0x000024CD
	cmp r3, r0
	bgt _02261114
	add r0, r1, #0
	sub r0, #0x46
	add r0, r2, r0
	str r0, [r4, r1]
	b _02261198
_02261114:
	str r0, [r4, r1]
	mov r2, #0x18
	sub r0, r1, #6
	strh r2, [r4, r0]
	sub r0, r1, #7
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #7
	strb r2, [r4, r0]
	b _02261198
_02261128:
	add r1, r0, #0
	add r1, #8
	add r2, r0, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r2, r1
	mov r2, #0x33
	lsl r2, r2, #0xc
	cmp r3, r2
	bge _02261144
	add r2, r0, #4
	ldr r2, [r4, r2]
	add r1, r2, r1
	b _02261146
_02261144:
	mov r1, #0
_02261146:
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _022611CC ; =0x000001DA
	ldrsh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4, r1]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _02261198
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r2, #0x33
	lsl r2, r2, #0xc
	add r0, r1, #2
	str r2, [r4, r0]
	b _02261198
_0226116C:
	add r1, r0, #4
	mov r2, #1
	ldr r1, [r4, r1]
	lsl r2, r2, #0xc
	add r3, r1, r2
	mov r1, #0x19
	lsl r1, r1, #0xe
	cmp r3, r1
	bge _0226118A
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, r2
	str r1, [r4, r0]
	b _02261198
_0226118A:
	mov r1, #0x33
	lsl r1, r1, #0xc
	add r0, r0, #4
	str r1, [r4, r0]
	b _02261198
_02261194:
	bl GF_AssertFail
_02261198:
	mov r1, #0x6b
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, #0x30
	ldr r1, [r4, r1]
	bl sub_02018198
	mov r1, #7
	lsl r1, r1, #6
	add r0, r4, r1
	add r1, #0x1c
	ldr r1, [r4, r1]
	bl sub_02018198
_022611B4:
	mov r5, #0
_022611B6:
	add r0, r4, #0
	bl sub_020181EC
	add r5, r5, #1
	add r4, #0x78
	cmp r5, #3
	blt _022611B6
	pop {r3, r4, r5, pc}
	nop
_022611C8: .word 0x000024CD
_022611CC: .word 0x000001DA
	thumb_func_end ov91_022610A8

