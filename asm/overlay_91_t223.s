	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02261A00
	.extern ov91_02260364
	.extern ov91_022611D0
	.extern ov91_02261200

	.text

	.text
	thumb_func_start ov91_02261A00
ov91_02261A00: ; 0x02261A00
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r0, [r4, #2]
	add r5, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _02261B08
	ldrh r0, [r4]
	cmp r0, #5
	bhi _02261B08
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261A22: ; jump table
	.short _02261A2E - _02261A22 - 2 ; case 0
	.short _02261A8E - _02261A22 - 2 ; case 1
	.short _02261AA8 - _02261A22 - 2 ; case 2
	.short _02261AD4 - _02261A22 - 2 ; case 3
	.short _02261AEE - _02261A22 - 2 ; case 4
	.short _02261B02 - _02261A22 - 2 ; case 5
_02261A2E:
	mov r0, #3
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #3]
	ldrsb r1, [r4, r0]
	mov r0, #0x19
	lsl r0, r0, #0xc
	mul r0, r1
	mov r1, #0x3a
	bl _s32_div_f
	mov r1, #1
	add r2, r0, #0
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r1, r2, r1
	bl ov91_02261200
	mov r0, #3
	ldrsb r1, [r4, r0]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x3a
	bl _s32_div_f
	add r2, r0, #0
	mov r0, #7
	add r1, r0, #0
	add r1, #0xf9
	add r1, r2, r1
	bl GF_SndHandleSetTempoRatio
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0xc
	bne _02261A7C
	ldr r0, _02261B0C ; =0x00000587
	bl PlaySE
_02261A7C:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0x3a
	blt _02261B08
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02261A8E:
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x3f
	bl StartBrightnessTransition
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02261AA8:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #1
	bne _02261B08
	add r0, r5, #0
	bl ov91_022611D0
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ov91_02261200
	add r0, r6, #0
	mov r1, #1
	bl ov91_02260364
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02261AD4:
	mov r0, #1
	str r0, [sp]
	mov r0, #0xe
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x3f
	bl StartBrightnessTransition
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02261AEE:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #1
	bne _02261B08
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02261B02:
	mov r0, #0
	strb r0, [r4, #2]
	strh r0, [r4]
_02261B08:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02261B0C: .word 0x00000587
	thumb_func_end ov91_02261A00

