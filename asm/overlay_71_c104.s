	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224903C
	.public ov71_02249184
	.extern ov71_022476C4
	.extern ov71_022476EC
	.extern ov71_02248FC8
	.extern ov71_02249004
	.extern ov71_02249208

	.text

	.text
	thumb_func_start ov71_0224903C
ov71_0224903C: ; 0x0224903C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _02249068
	sub r0, r0, #1
	str r0, [r5, #0x74]
	beq _0224905E
	mov r0, #0x56
	ldrsh r1, [r5, r0]
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x56
	strh r1, [r0]
	b _02249068
_0224905E:
	mov r0, #0x58
	ldrsh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x56
	strh r1, [r0]
_02249068:
	mov r0, #0x54
	ldrsh r1, [r5, r0]
	mov r0, #0x56
	ldrsh r0, [r5, r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x54
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x54
	ldrh r0, [r0]
	mov r1, #0xb6
	bl _s32_div_f
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r4, r0
	blt _02249090
	sub r4, r4, r0
_02249090:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _022490B6
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x40]
	add r0, r1, r0
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	add r0, r1, r0
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x50]
	sub r0, r0, #1
	str r0, [r5, #0x50]
	bne _022490B6
	ldr r0, [r5, #0x48]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x4c]
	str r0, [r5, #0x3c]
_022490B6:
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x38]
	lsr r0, r0, #0x10
	bl GF_CosDegNoWrap
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [r5, #8]
	orr r1, r0
	add r0, r2, r1
	str r0, [r5, #0x14]
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x3c]
	lsr r0, r0, #0x10
	bl GF_SinDegNoWrap
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r4, #2
	mov r3, #0
	lsl r4, r4, #0xa
	add r4, r0, r4
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	ldr r2, [r5, #0x10]
	orr r1, r0
	add r0, r2, r1
	str r0, [r5, #0x1c]
	mov r0, #0x22
	ldrsh r1, [r5, r0]
	mov r0, #0x56
	ldrsh r0, [r5, r0]
	mov r2, #0x5e
	mov r6, #0x60
	add r0, r1, r0
	strh r0, [r5, #0x22]
	add r0, r5, #0
	mov r1, #0x5c
_0224911E:
	add r4, r0, #0
	add r4, #0x62
	ldrh r4, [r4]
	cmp r4, #0
	beq _02249156
	add r4, r0, #0
	add r4, #0x62
	ldrh r4, [r4]
	sub r7, r4, #1
	add r4, r0, #0
	add r4, #0x62
	strh r7, [r4]
	add r4, r0, #0
	add r4, #0x62
	ldrh r4, [r4]
	cmp r4, #0
	bne _0224914A
	ldrsh r7, [r0, r6]
	add r4, r0, #0
	add r4, #0x5c
	strh r7, [r4]
	b _02249156
_0224914A:
	ldrsh r7, [r0, r1]
	ldrsh r4, [r0, r2]
	add r7, r7, r4
	add r4, r0, #0
	add r4, #0x5c
	strh r7, [r4]
_02249156:
	add r3, r3, #1
	add r0, #8
	cmp r3, #3
	blt _0224911E
	mov r0, #0x20
	ldrsh r1, [r5, r0]
	mov r0, #0x5c
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #0x20]
	mov r0, #0x22
	ldrsh r1, [r5, r0]
	mov r0, #0x64
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #0x22]
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	mov r0, #0x6c
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov71_0224903C

	thumb_func_start ov71_02249184
ov71_02249184: ; 0x02249184
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _022491E4
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #0x28]
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bgt _022491E4
	mov r1, #2
	lsl r1, r1, #8
	str r1, [r4, #0x30]
	mov r0, #0
	lsl r1, r1, #5
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x3c
	bl ov71_02248FC8
	ldr r2, _02249200 ; =0xFFFFF800
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x1e
	bl ov71_02249004
	mov r0, #1
	str r0, [r4, #0x7c]
	ldr r1, _02249204 ; =ov71_02249208
	add r0, r5, #0
	bl SysTask_SetFunc
_022491E4:
	add r0, r4, #0
	bl ov71_0224903C
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x14
	bl ov71_022476C4
	ldr r0, [r4]
	add r4, #0x20
	add r1, r4, #0
	bl ov71_022476EC
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02249200: .word 0xFFFFF800
_02249204: .word ov71_02249208
	thumb_func_end ov71_02249184

