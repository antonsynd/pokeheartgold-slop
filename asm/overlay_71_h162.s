	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224A694
	.public ov71_0224A6D8
	.public ov71_0224A7D0
	.extern _0224C020
	.extern ov71_022476C4
	.extern ov71_022476EC
	.extern ov71_02247704
	.extern ov71_02247730
	.extern ov71_02247738
	.extern ov71_0224A8A8

	.text

	.text
	thumb_func_start ov71_0224A694
ov71_0224A694: ; 0x0224A694
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp]
	cmp r0, #0
	beq _0224A6D4
	ldr r0, [r5, #0x44]
	ldr r1, [sp]
	sub r0, r4, r0
	bl _s32_div_f
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	ldr r1, [sp]
	sub r0, r6, r0
	bl _s32_div_f
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x5c]
	ldr r1, [sp]
	sub r0, r7, r0
	bl _s32_div_f
	str r0, [r5, #0x60]
	str r4, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x64]
	str r0, [r5, #0x68]
_0224A6D4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov71_0224A694

	thumb_func_start ov71_0224A6D8
ov71_0224A6D8: ; 0x0224A6D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224A7CC ; =_0224C020
	ldr r0, [r0]
	cmp r0, #0
	beq _0224A7BA
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	mov r1, #0xb6
	bl _s32_div_f
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r4, r0
	blt _0224A6FC
	sub r4, r4, r0
_0224A6FC:
	mov r0, #0x78
	ldrsh r1, [r5, r0]
	mov r0, #0x7a
	ldrsh r0, [r5, r0]
	sub r1, r1, r0
	add r0, r5, #0
	add r0, #0x78
	strh r1, [r0]
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _0224A744
	sub r0, r0, #1
	str r0, [r5, #0x68]
	beq _0224A730
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	add r0, r1, r0
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	add r0, r1, r0
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x5c]
	ldr r0, [r5, #0x60]
	add r0, r1, r0
	b _0224A73A
_0224A730:
	ldr r0, [r5, #0x54]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x58]
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x64]
_0224A73A:
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x5c]
	bl ov71_02247730
_0224A744:
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x44]
	lsr r0, r0, #0x10
	bl GF_CosDegNoWrap
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x1c]
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x48]
	lsr r0, r0, #0x10
	bl GF_SinDegNoWrap
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x20]
	add r1, r5, #0
	str r3, [r5, #0x24]
	mov r0, #0x34
	ldrsh r2, [r5, r0]
	mov r0, #3
	lsl r0, r0, #8
	sub r0, r2, r0
	strh r0, [r5, #0x34]
	ldr r0, [r5, #0xc]
	add r1, #0x34
	bl ov71_022476EC
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0x28
	add r0, #0x1c
	add r1, #0x10
	add r2, r5, #0
	bl VEC_Add
	pop {r4, r5, r6, pc}
_0224A7BA:
	add r2, r5, #0
	add r2, #0x10
	ldmia r2!, {r0, r1}
	add r5, #0x28
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_0224A7CC: .word _0224C020
	thumb_func_end ov71_0224A6D8

	thumb_func_start ov71_0224A7D0
ov71_0224A7D0: ; 0x0224A7D0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x74]
	cmp r1, #0x46
	bge _0224A7DE
	add r1, r1, #1
	str r1, [r4, #0x74]
_0224A7DE:
	ldr r1, [r4, #0x6c]
	cmp r1, #3
	bhi _0224A8A4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224A7F0: ; jump table
	.short _0224A7F8 - _0224A7F0 - 2 ; case 0
	.short _0224A81E - _0224A7F0 - 2 ; case 1
	.short _0224A858 - _0224A7F0 - 2 ; case 2
	.short _0224A892 - _0224A7F0 - 2 ; case 3
_0224A7F8:
	add r0, r4, #0
	bl ov71_0224A6D8
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	ldr r0, [r4, #0x74]
	add r0, r0, #1
	str r0, [r4, #0x74]
	cmp r0, #0xc
	blt _0224A8A4
	mov r0, #0
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224A81E:
	ldr r0, [r4, #0xc]
	bl ov71_02247738
	cmp r0, #0
	bne _0224A836
	ldr r0, [r4]
	bl ov71_0224A8A8
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224A836:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_0224A6D8
	ldr r0, [r4, #0xc]
	add r4, #0x28
	add r1, r4, #0
	bl ov71_022476C4
	pop {r4, pc}
_0224A858:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_0224A6D8
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	ldr r0, [r4, #0x74]
	cmp r0, #0x46
	blt _0224A8A4
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov71_02247704
	mov r0, #0
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224A892:
	ldr r1, [r4, #0x70]
	add r1, r1, #1
	str r1, [r4, #0x70]
	cmp r1, #8
	ble _0224A8A4
	mov r1, #0
	str r1, [r4, #4]
	bl SysTask_Destroy
_0224A8A4:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov71_0224A7D0

