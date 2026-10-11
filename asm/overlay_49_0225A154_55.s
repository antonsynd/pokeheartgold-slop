	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225AF30
	.public ov49_0225B058

    .text

	thumb_func_start ov49_0225AF30
ov49_0225AF30: ; 0x0225AF30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0225AF46
	bl GF_AssertFail
_0225AF46:
	ldrh r0, [r4, #0x12]
	lsl r0, r0, #1
	cmp r0, #0x12
	blt _0225AF52
	bl GF_AssertFail
_0225AF52:
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, r5, #0
	add r1, #0x20
	str r1, [r5, #0xc]
	ldrh r0, [r4, #0x10]
	add r3, sp, #0x18
	mov r2, #1
	strh r0, [r5, #0x3a]
	ldr r0, _0225AFD4 ; =ov49_0225B058
	str r0, [r5, #4]
	ldrb r0, [r3, #0x1c]
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x12]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	str r0, [sp, #0x10]
	ldrb r3, [r3, #0x18]
	ldr r0, [r6]
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x20
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl DrawFrameAndWindow1
	add r2, sp, #0x18
	ldr r3, [sp, #0x2c]
	ldrh r2, [r2, #0x10]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r3, r3, #0x18
	bl ListMenuInit
	str r0, [r5, #0x30]
	add r5, #0x20
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225AFD4: .word ov49_0225B058
	thumb_func_end ov49_0225AF30

