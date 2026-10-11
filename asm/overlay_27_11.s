	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225A714
	.public ov27_0225A7B0
	.extern ov27_0225A66C
	.extern ov27_0225A8E8
	.extern ov27_0225AAD4
	.extern ov27_0225B398

	.text

	.text
	thumb_func_start ov27_0225A714
ov27_0225A714: ; 0x0225A714
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0225A722
	bl GF_AssertFail
_0225A722:
	ldr r4, [r5, #0x10]
	ldr r6, [r5, #0xc]
	add r0, r4, #0
	add r0, #0xd2
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r0, #4
	bne _0225A75C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	bl MenuInputStateMgr_GetState
	cmp r0, #0
	bne _0225A74C
	add r0, r5, #0
	mov r1, #1
	bl ov27_0225A8E8
	b _0225A7AC
_0225A74C:
	add r0, r4, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x3f
	add r4, #0xd2
	bic r1, r0
	strb r1, [r4]
	b _0225A7AC
_0225A75C:
	cmp r0, #3
	bne _0225A7AC
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	bl MenuInputStateMgr_GetState
	cmp r0, #1
	bne _0225A792
	mov r0, #1
	strh r0, [r6]
	add r0, r4, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x3f
	bic r1, r0
	add r0, r4, #0
	add r0, #0xd2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x80
	add r4, #0xd2
	orr r0, r1
	strb r0, [r4]
	b _0225A7AC
_0225A792:
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	bl ov27_0225B398
	add r0, r4, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x3f
	add r4, #0xd2
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4]
_0225A7AC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov27_0225A714

	thumb_func_start ov27_0225A7B0
ov27_0225A7B0: ; 0x0225A7B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0203DF8C
	cmp r0, #1
	bne _0225A7C4
	add r0, r4, #0
	bl ov27_0225A66C
_0225A7C4:
	ldr r0, _0225A7D8 ; =0x0000051C
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	bne _0225A7D4
	add r0, r4, #0
	bl ov27_0225AAD4
_0225A7D4:
	pop {r4, pc}
	nop
_0225A7D8: .word 0x0000051C
	thumb_func_end ov27_0225A7B0

