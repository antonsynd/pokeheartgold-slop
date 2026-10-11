	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02249A60
	.public ov71_02249A98
	.public ov71_02249B64
	.public ov71_02249C90
	.public ov71_02249C98
	.extern ov71_022476C4
	.extern ov71_022476EC
	.extern ov71_02247704
	.extern ov71_02247730
	.extern ov71_02247738
	.extern ov71_0224781C

	.text

	.text
	thumb_func_start ov71_02249A60
ov71_02249A60: ; 0x02249A60
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	beq _02249A96
	ldr r0, [r5, #0x44]
	sub r0, r1, r0
	add r1, r4, #0
	bl _s32_div_f
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	sub r0, r6, r0
	bl _s32_div_f
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x54]
	add r1, r4, #0
	sub r0, r7, r0
	bl _s32_div_f
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x5c]
_02249A96:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov71_02249A60

	thumb_func_start ov71_02249A98
ov71_02249A98: ; 0x02249A98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x6c
	ldrh r0, [r0]
	mov r1, #0xb6
	bl _s32_div_f
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r4, r0
	blt _02249AB2
	sub r4, r4, r0
_02249AB2:
	mov r0, #0x6c
	ldrsh r1, [r5, r0]
	mov r0, #0x6e
	ldrsh r0, [r5, r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _02249AEC
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	add r0, r1, r0
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	add r0, r1, r0
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x58]
	add r1, r1, r0
	str r1, [r5, #0x54]
	ldr r0, [r5, #0xc]
	bl ov71_02247730
	ldr r0, [r5, #0x5c]
	sub r0, r0, #1
	str r0, [r5, #0x5c]
_02249AEC:
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
	add r0, r2, r0
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
	.balign 4, 0
	thumb_func_end ov71_02249A98

	thumb_func_start ov71_02249B64
ov71_02249B64: ; 0x02249B64
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0x68]
	cmp r1, #0x3c
	bge _02249B74
	add r1, r1, #1
	str r1, [r4, #0x68]
_02249B74:
	ldr r1, [r4, #0x60]
	cmp r1, #4
	bls _02249B7C
	b _02249C8C
_02249B7C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249B88: ; jump table
	.short _02249B92 - _02249B88 - 2 ; case 0
	.short _02249BC6 - _02249B88 - 2 ; case 1
	.short _02249C04 - _02249B88 - 2 ; case 2
	.short _02249C4A - _02249B88 - 2 ; case 3
	.short _02249C7A - _02249B88 - 2 ; case 4
_02249B92:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_02249A98
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	ldr r0, [r4, #0xc]
	bl ov71_02247738
	cmp r0, #0
	beq _02249C8C
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249BC6:
	ldr r0, [r4, #0xc]
	bl ov71_02247738
	cmp r0, #0
	bne _02249BE0
	ldr r0, [r4]
	bl ov71_02249C90
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249BE0:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_02249A98
	ldr r0, [r4, #0xc]
	add r4, #0x28
	add r1, r4, #0
	bl ov71_022476C4
	add sp, #4
	pop {r3, r4, pc}
_02249C04:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_02249A98
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	ldr r0, [r4, #0x68]
	cmp r0, #0x3c
	blt _02249C8C
	mov r1, #2
	lsl r1, r1, #0xa
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	lsr r3, r1, #2
	bl ov71_02249A60
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249C4A:
	add r0, r4, #0
	bl ov71_02249A98
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0xc
	blt _02249C8C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov71_02247704
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249C7A:
	ldr r1, [r4, #0x64]
	add r1, r1, #1
	str r1, [r4, #0x64]
	cmp r1, #8
	ble _02249C8C
	mov r1, #0
	str r1, [r4, #4]
	bl SysTask_Destroy
_02249C8C:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov71_02249B64

	thumb_func_start ov71_02249C90
ov71_02249C90: ; 0x02249C90
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	.balign 4, 0
	thumb_func_end ov71_02249C90

	thumb_func_start ov71_02249C98
ov71_02249C98: ; 0x02249C98
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249CE4
	mov r3, #0
	ldr r1, _02249CE8 ; =0x00001150
	str r3, [r4, #0xc]
	add r0, sp, #0
	strh r1, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	mov r1, #3
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl BgSetPosTextAndCommit
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x24]
	mov r1, #7
	add r3, #0xfd
	bl BgSetPosTextAndCommit
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov71_0224781C
	ldr r2, _02249CEC ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl SysTask_Destroy
_02249CE4:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02249CE8: .word 0x00001150
_02249CEC: .word 0x04000304
	thumb_func_end ov71_02249C98

