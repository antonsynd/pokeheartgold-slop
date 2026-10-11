	.include "asm/macros.inc"
	.include "overlay_120.inc"
	.include "global.inc"
	.public ov120_0225F038
	.public ov120_0225F040
	.public ov120_0225F08C

	.text

	.text
	thumb_func_start ov120_0225F038
ov120_0225F038: ; 0x0225F038
	ldr r3, _0225F03C ; =Heap_Free
	bx r3
	.balign 4, 0
_0225F03C: .word Heap_Free
	thumb_func_end ov120_0225F038

	thumb_func_start ov120_0225F040
ov120_0225F040: ; 0x0225F040
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0225F056
	bl GF_AssertFail
_0225F056:
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r3, r7, #0
	bl ov01_021EFE34
	add r0, r5, #0
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x28]
	add r0, #0x14
	add r3, r7, #0
	bl ov01_021EFE34
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x28]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	strh r4, [r5, #0x2c]
	add r0, r5, #0
	strh r6, [r5, #0x2e]
	add r0, #0x31
	strb r1, [r0]
	mov r0, #1
	add r5, #0x30
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov120_0225F040

	thumb_func_start ov120_0225F08C
ov120_0225F08C: ; 0x0225F08C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #0
	bne _0225F0A2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F0A2:
	bl ov01_021EFE44
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	bl ov01_021EFE44
	add r7, r5, #0
	ldr r1, [r4]
	orr r7, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r5, r0, #1
	mov r0, #0x2c
	ldr r1, [r4, #0x14]
	ldrsh r3, [r4, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r6, r0, #1
	mov r0, #0x2e
	ldrsh r2, [r4, r0]
	add r0, r3, r5
	lsl r0, r0, #0x10
	sub r1, r2, r6
	asr r0, r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x31
	ldrb r0, [r0]
	add r2, r2, r6
	sub r3, r3, r5
	str r0, [sp, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r4, #0x28]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov01_021F0960
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov120_0225F08C

