	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225EA98
	.extern ov91_0225E2E4
	.extern ov91_0225EE48
	.extern ov91_0225EE64
	.extern ov91_0225EE88
	.extern ov91_0225EE9C
	.extern ov91_02260400
	.extern ov91_0226045C
	.extern ov91_02260E88

	.text

	.text
	thumb_func_start ov91_0225EA98
ov91_0225EA98: ; 0x0225EA98
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	mov r4, #0
	cmp r0, #0
	bne _0225EAB0
	ldr r0, [r5, #0x48]
	add sp, #0x30
	add r0, r0, #1
	str r0, [r5, #0x48]
	pop {r4, r5, r6, pc}
_0225EAB0:
	add r0, r5, #0
	add r0, #0x20
	add r1, sp, #4
	bl ov91_0225EE48
	cmp r0, #0
	bne _0225EAC2
	bl GF_AssertFail
_0225EAC2:
	add r0, r5, #0
	add r0, #0x20
	add r1, sp, #0
	bl ov91_0225EE64
	cmp r0, #0
	bne _0225EAD4
	bl GF_AssertFail
_0225EAD4:
	add r0, r5, #0
	add r0, #0x20
	bl ov91_0225EE88
	add r6, r0, #0
	cmp r6, #2
	bge _0225EAE4
	b _0225EC44
_0225EAE4:
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	strh r0, [r1, #8]
	mov r3, #0
	strh r3, [r1, #0xa]
	mov r0, #4
	ldrsh r2, [r1, r0]
	ldrsh r0, [r1, r3]
	add r1, r6, #0
	sub r0, r2, r0
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r0, r0, #4
	str r0, [sp, #0xc]
	add r1, sp, #0
	mov r0, #6
	ldrsh r2, [r1, r0]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r6, #0
	sub r0, r2, r0
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r0, r0, #4
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0xc
	bl VEC_Mag
	mov r1, #2
	lsl r1, r1, #0xe
	cmp r0, r1
	bge _0225EB74
	cmp r0, #0
	beq _0225EB70
	add r0, sp, #0xc
	add r1, r0, #0
	bl VEC_Normalize
	ldr r3, [sp, #0xc]
	asr r1, r3, #0x1f
	lsr r0, r3, #0x11
	lsl r2, r1, #0xf
	orr r2, r0
	mov r0, #2
	lsl r3, r3, #0xf
	mov r1, #0
	lsl r0, r0, #0xa
	add r3, r3, r0
	adc r2, r1
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	ldr r2, [sp, #0x14]
	str r3, [sp, #0xc]
	asr r3, r2, #0x1f
	lsr r6, r2, #0x11
	lsl r3, r3, #0xf
	orr r3, r6
	lsl r2, r2, #0xf
	add r2, r2, r0
	adc r3, r1
	lsl r0, r3, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x14]
	b _0225EBBC
_0225EB70:
	mov r4, #1
	b _0225EBBC
_0225EB74:
	ldr r1, _0225EC6C ; =0x0001E200
	cmp r0, r1
	ble _0225EBBC
	add r0, sp, #0xc
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [sp, #0xc]
	ldr r2, _0225EC6C ; =0x0001E200
	asr r1, r0, #0x1f
	mov r3, #0
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
	str r1, [sp, #0xc]
	ldr r2, _0225EC6C ; =0x0001E200
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x14]
_0225EBBC:
	cmp r4, #0
	bne _0225EC46
	mov r0, #0x26
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	add r0, sp, #0xc
	bl VEC_Mag
	ldr r2, _0225EC70 ; =0x0000099A
	asr r1, r0, #0x1f
	mov r3, #0
	str r0, [sp, #0x18]
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, sp, #0xc
	str r1, [sp, #0x18]
	add r1, r0, #0
	bl VEC_Normalize
	add r2, sp, #0
	mov r0, #0
	mov r1, #2
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	add r2, sp, #0x1c
	bl ov91_02260400
	mov r0, #0
	str r0, [sp, #0x20]
	add r2, sp, #0
	add r0, sp, #0x1c
	ldrh r2, [r2, #8]
	ldr r3, [r5, #0x10]
	add r1, r0, #0
	bl ov91_0226045C
	add r2, sp, #0
	add r0, sp, #0xc
	ldrh r2, [r2, #8]
	ldr r3, [r5, #0x10]
	add r1, r0, #0
	bl ov91_0226045C
	ldr r0, [r5, #0x1c]
	cmp r0, #5
	blt _0225EC2E
	mov r0, #1
	str r0, [sp, #0x2c]
	b _0225EC32
_0225EC2E:
	mov r0, #0
	str r0, [sp, #0x2c]
_0225EC32:
	add r0, r5, #0
	add r1, sp, #8
	mov r2, #1
	bl ov91_0225E2E4
	ldr r0, _0225EC74 ; =0x0000064F
	bl PlaySE
	b _0225EC46
_0225EC44:
	mov r4, #1
_0225EC46:
	cmp r4, #1
	bne _0225EC5C
	add r3, sp, #0
	mov r1, #0
	mov r2, #2
	ldr r0, _0225EC78 ; =0x0000854C
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r5, r0
	bl ov91_02260E88
_0225EC5C:
	add r0, r5, #0
	bl ov91_0225EE9C
	mov r0, #0
	str r0, [r5, #0x48]
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_0225EC6C: .word 0x0001E200
_0225EC70: .word 0x0000099A
_0225EC74: .word 0x0000064F
_0225EC78: .word 0x0000854C
	thumb_func_end ov91_0225EA98

