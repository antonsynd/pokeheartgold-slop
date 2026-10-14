	.include "macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02260AE0
	.extern ov92_0225DF0C
	.extern ov92_0225DF28
	.extern ov92_02263E5C

	.text

	.text
	thumb_func_start ov92_02260AE0
ov92_02260AE0: ; 0x02260AE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r0, [r1]
	str r1, [sp]
	ldr r5, [r0, #0x14]
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02260AFC
	add r5, #0x34
	ldrb r0, [r5]
	cmp r0, #1
	bne _02260B14
_02260AFC:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0x10]
	str r1, [r0]
	add r0, r4, #0
	bl SysTask_Destroy
	ldr r0, [sp]
	bl Heap_Free
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02260B14:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02260B28
	cmp r0, #1
	beq _02260B36
	cmp r0, #2
	bne _02260B26
	b _02260D86
_02260B26:
	b _022610BE
_02260B28:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
_02260B36:
	ldr r3, _02260E74 ; =ov92_02263E5C
	add r2, sp, #0x1c
	mov r1, #0xa
_02260B3C:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02260B3C
	ldr r0, [sp]
	mov r5, #0
	ldr r0, [r0, #0xc]
	mov r6, #0x3f
	lsl r1, r0, #2
	add r0, sp, #0x1c
	ldrsh r0, [r0, r1]
	str r5, [sp, #0xc]
	lsl r6, r6, #0x18
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	add r0, #2
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r5, [r0, #8]
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
_02260B76:
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0x3a
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r1, #0
	mov r0, #6
	sub r0, r0, r7
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, r4, #0
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x44
	strh r1, [r0]
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	ldr r0, [r0, #0x40]
	mov r1, #3
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl _s32_div_f
	mov r1, #0x1e
	mul r1, r0
	str r1, [r4, #0x3c]
	add r0, r1, #0
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	str r1, [r4, #0x3c]
	add r1, r4, #0
	add r1, #0x40
	mov r0, #0
	strh r0, [r1]
	lsl r0, r7, #1
	neg r1, r0
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02260BF4
	ldr r0, [sp, #8]
	bl _ffltu
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _02260C00
_02260BF4:
	ldr r0, [sp, #8]
	bl _ffltu
	add r1, r6, #0
	bl _fsub
_02260C00:
	bl _ffix
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02260C1C
	ldr r0, [sp, #4]
	bl _ffltu
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _02260C28
_02260C1C:
	ldr r0, [sp, #4]
	bl _ffltu
	add r1, r6, #0
	bl _fsub
_02260C28:
	bl _ffix
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x28]
	add r1, r4, #0
	str r0, [r4, #0x2c]
	add r1, #0x38
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x39
	mov r0, #1
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x3b
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x3c]
	cmp r0, #0xb4
	bne _02260C60
	add r1, r4, #0
	add r1, #0x38
	mov r0, #2
	strb r0, [r1]
_02260C60:
	ldr r1, [r4, #0x3c]
	ldr r0, _02260E78 ; =0x0000010E
	cmp r1, r0
	blt _02260C74
	cmp r1, #0x5a
	bgt _02260C74
	add r1, r4, #0
	add r1, #0x38
	mov r0, #1
	strb r0, [r1]
_02260C74:
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02260C8C
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _02260C98
_02260C8C:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_02260C98:
	bl _ffix
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02260E7C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x30]
	mov r0, #0x44
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02260CDC
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _02260CE8
_02260CDC:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_02260CE8:
	bl _ffix
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_CosDeg
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02260E7C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x34]
	mov r0, #0x40
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02260D2C
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _02260D38
_02260D2C:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_02260D38:
	bl _ffix
	ldr r1, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x28]
	ldr r1, [r4, #0x20]
	mov ip, r0
	add r1, r2, r1
	ldr r7, [r4, #0x30]
	ldr r3, [r4, #0x18]
	add r1, r7, r1
	add r1, r3, r1
	ldr r3, [r4, #0x2c]
	ldr r2, [r4, #0x24]
	ldr r7, [r4, #0x34]
	add r2, r3, r2
	add r2, r7, r2
	mov r3, ip
	add r2, r3, r2
	mov r3, #0xe
	ldr r0, [r4, #0x14]
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, r0, #4
	add r4, #0x34
	str r0, [sp, #0xc]
	cmp r5, #0x24
	bge _02260D7A
	b _02260B76
_02260D7A:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	b _022610D6
_02260D86:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02260DA4
	add r1, r0, #1
	ldr r0, [sp]
	mov r2, #0
	str r1, [r0, #8]
	ldr r0, [r0]
	mov r1, #1
	bl ov92_0225DF0C
	ldr r0, _02260E80 ; =0x0000058B
	bl PlaySE
_02260DA4:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0x1e
	ble _02260DD0
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #0xc]
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [r1, #0xc]
	mov r1, #5
	bl _s32_div_f
	ldr r0, [sp]
	mov r2, #1
	str r1, [r0, #0xc]
	ldr r0, [r0]
	mov r1, #0
	bl ov92_0225DF0C
	b _022610A8
_02260DD0:
	add r1, r0, #1
	ldr r0, [sp]
	mov r4, #0x3f
	str r1, [r0, #8]
	mov r0, #0
	ldr r5, [sp]
	str r0, [sp, #0x10]
	lsl r4, r4, #0x18
_02260DE0:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x46
	strh r1, [r0]
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _02260DF6
	b _0226109A
_02260DF6:
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r0, #0xa
	cmp r1, r0
	blt _02260EAE
	cmp r1, r0
	bne _02260E0E
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl ManagedSprite_SetAnim
_02260E0E:
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r0, #0x12
	cmp r1, r0
	bne _02260E28
	add r1, r5, #0
	add r1, #0x39
	mov r0, #0
	strb r0, [r1]
	b _02260E46
_02260E28:
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _02260E46
	add r0, r5, #0
	add r0, #0x39
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x39
	strb r1, [r0]
_02260E46:
	add r1, r5, #0
	add r1, #0x39
	ldrb r1, [r1]
	ldr r0, [r5, #0x14]
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _02260E66
	cmp r0, #1
	beq _02260E6C
	cmp r0, #2
	beq _02260E88
	b _02260E8E
_02260E66:
	ldr r0, _02260E84 ; =0xFFFFF000
	str r0, [r5, #0x28]
	b _02260E8E
_02260E6C:
	mov r0, #0
	str r0, [r5, #0x28]
	b _02260E8E
	nop
_02260E74: .word ov92_02263E5C
_02260E78: .word 0x0000010E
_02260E7C: .word 0x00000000
_02260E80: .word 0x0000058B
_02260E84: .word 0xFFFFF000
_02260E88:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x28]
_02260E8E:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x3b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r1, #3
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0x3b
	strb r1, [r0]
_02260EAE:
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	cmp r1, #5
	ble _02260EF6
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _02260EE8
	cmp r0, #1
	beq _02260ED8
	cmp r0, #2
	bne _02260EF6
	add r0, r1, #5
	mov r1, #6
	bl _s32_div_f
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
	b _02260EF6
_02260ED8:
	add r0, r1, #5
	mov r1, #6
	bl _s32_div_f
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
	b _02260EF6
_02260EE8:
	add r0, r1, #5
	mov r1, #7
	bl _s32_div_f
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
_02260EF6:
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _02260F54
	cmp r0, #1
	beq _02260F2E
	cmp r0, #2
	bne _02260F2E
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #7
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	b _02260F78
_02260F2E:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #6
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	b _02260F78
_02260F54:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #4
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
_02260F78:
	cmp r1, #0
	ble _02260F84
	mov r2, #0x42
	ldrsh r2, [r5, r2]
	add r2, r2, r1
	b _02260F8A
_02260F84:
	mov r1, #0x42
	ldrsh r1, [r5, r1]
	add r2, r1, #1
_02260F8A:
	add r1, r5, #0
	add r1, #0x42
	strh r2, [r1]
	cmp r0, #0
	ble _02260F9C
	mov r1, #0x44
	ldrsh r1, [r5, r1]
	add r1, r1, r0
	b _02260FA2
_02260F9C:
	mov r0, #0x44
	ldrsh r0, [r5, r0]
	add r1, r0, #1
_02260FA2:
	add r0, r5, #0
	add r0, #0x44
	strh r1, [r0]
	mov r0, #0x42
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02260FC0
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r4, #0
	bl _fadd
	b _02260FCC
_02260FC0:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r4, #0
	bl _fsub
_02260FCC:
	bl _ffix
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _022610E4 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x30]
	mov r0, #0x44
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02261010
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r4, #0
	bl _fadd
	b _0226101C
_02261010:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r4, #0
	bl _fsub
_0226101C:
	bl _ffix
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_CosDeg
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _022610E4 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x34]
	mov r0, #0x40
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02261060
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r4, #0
	bl _fadd
	b _0226106C
_02261060:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r4, #0
	bl _fsub
_0226106C:
	bl _ffix
	ldr r1, [r5, #0x1c]
	add r7, r1, r0
	str r7, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	ldr r1, [r5, #0x20]
	ldr r3, [r5, #0x30]
	add r1, r2, r1
	add r1, r3, r1
	ldr r6, [r5, #0x18]
	ldr r3, [r5, #0x2c]
	ldr r2, [r5, #0x24]
	add r1, r6, r1
	add r2, r3, r2
	ldr r6, [r5, #0x34]
	mov r3, #0xe
	add r2, r6, r2
	ldr r0, [r5, #0x14]
	add r2, r7, r2
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
_0226109A:
	ldr r0, [sp, #0x10]
	add r5, #0x34
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x24
	bge _022610A8
	b _02260DE0
_022610A8:
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	beq _022610D6
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	b _022610D6
_022610BE:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0]
	add r2, r1, #0
	bl ov92_0225DF0C
	ldr r0, [sp]
	bl Heap_Free
	add r0, r4, #0
	bl SysTask_Destroy
_022610D6:
	ldr r0, [sp]
	ldr r0, [r0]
	bl ov92_0225DF28
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022610E4: .word 0x00000000
	thumb_func_end ov92_02260AE0

