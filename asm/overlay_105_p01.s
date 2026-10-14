	.include "asm/macros.inc"
	.include "overlay_105.inc"
	.include "global.inc"
	.public ov105_021E59DC
	.extern ov105_021E5BCC
	.extern ov105_021E5DD4
	.extern ov105_021E5E08

	.text

	.text
	thumb_func_start ov105_021E59DC
ov105_021E59DC: ; 0x021E59DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r6, r1, #0
	bl OverlayManager_GetData
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x9f
	ldrb r2, [r1]
	mov r1, #0x7c
	add r0, r5, #4
	mul r1, r2
	add r4, r0, r1
	ldr r0, [r6]
	mov r7, #0
	cmp r0, #0
	beq _021E5A04
	cmp r0, #1
	beq _021E5A28
	b _021E5A6C
_021E5A04:
	ldr r1, [r4, #0x6c]
	mov r0, #1
	ldr r2, [r1]
	ldr r1, [r1, #8]
	lsl r0, r0, #0xc
	ldrh r1, [r1, #4]
	add r0, r2, r0
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _021E5A6C
	mov r0, #1
	mov r1, #0x97
	bl sub_020880CC
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E5A6C
_021E5A28:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5A6C
	add r0, r5, #0
	add r0, #0x9f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x9f
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	blo _021E5A5A
	mov r7, #1
	b _021E5A6C
_021E5A5A:
	add r0, r5, #0
	bl ov105_021E5BCC
	add r0, r7, #0
	mov r1, #0x97
	bl sub_020880CC
	add r0, r7, #0
	str r0, [r6]
_021E5A6C:
	add r0, r5, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #0x1e
	bne _021E5A9A
	add r0, r5, #0
	add r0, #0xa4
	add r5, #0x9f
	ldr r1, [r0]
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
_021E5A9A:
	mov r3, #1
	mov r2, #0
	lsl r3, r3, #0xc
_021E5AA0:
	lsl r0, r2, #2
	add r0, r4, r0
	ldr r1, [r0, #0x6c]
	ldr r5, [r1, #8]
	ldr r0, [r1]
	ldrh r5, [r5, #4]
	add r0, r0, r3
	lsl r5, r5, #0xc
	cmp r0, r5
	bge _021E5AB6
	str r0, [r1]
_021E5AB6:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _021E5AA0
	ldr r5, _021E5B0C ; =ov105_021E5E08
	add r3, sp, #0x18
	mov r2, #4
_021E5AC6:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5AC6
	ldr r0, [r5]
	add r2, sp, #0xc
	str r0, [r3]
	ldr r3, _021E5B10 ; =ov105_021E5DD4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0
	str r0, [r2]
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl Thunk_G3X_Reset
	bl Camera_PushLookAtToNNSGlb
	add r0, r4, #0
	add r1, sp, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl GF3dRender_DrawModel
	mov r0, #1
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add r0, r7, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021E5B0C: .word ov105_021E5E08
_021E5B10: .word ov105_021E5DD4
	thumb_func_end ov105_021E59DC

