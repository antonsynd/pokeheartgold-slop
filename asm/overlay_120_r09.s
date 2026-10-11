	.include "asm/macros.inc"
	.include "overlay_120.inc"
	.include "global.inc"
	.public ov120_0225F294
	.public ov120_0225F2B8
	.public ov120_0225F318
	.public ov120_0225F4DC
	.public ov120_0225F6AC
	.public ov120_0225F6BC
	.extern ov120_0225F038
	.extern ov120_0225F040
	.extern ov120_0225F08C
	.extern ov120_022602E4
	.extern ov120_022602FC
	.extern ov120_02260314
	.extern ov120_0226032C

	.text

	.text
	thumb_func_start ov120_0225F294
ov120_0225F294: ; 0x0225F294
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bne _0225F29E
	bl GF_AssertFail
_0225F29E:
	mov r4, #0
	add r5, r6, #0
_0225F2A2:
	ldr r0, [r5, #4]
	bl ov120_0225F038
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x30
	blt _0225F2A2
	add r0, r6, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
	thumb_func_end ov120_0225F294

	thumb_func_start ov120_0225F2B8
ov120_0225F2B8: ; 0x0225F2B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bne _0225F2C8
	bl GF_AssertFail
_0225F2C8:
	str r7, [r5]
	add r0, sp, #8
	ldrb r1, [r0, #0x10]
	add r0, r5, #0
	add r0, #0xc9
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xc6
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0xc7
	strb r6, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xc4
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xc5
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xc8
	strb r4, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xca
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xcb
	ldrb r0, [r0]
	mov r2, #1
	add r5, #0xcb
	bic r0, r2
	ldr r2, [sp, #0x1c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	and r1, r2
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov120_0225F2B8

	thumb_func_start ov120_0225F318
ov120_0225F318: ; 0x0225F318
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	bne _0225F324
	bl GF_AssertFail
_0225F324:
	add r0, r5, #0
	add r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225F334
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F334:
	add r0, r5, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0x18
	bhs _0225F436
	mov r1, #0xc8
	ldrsb r0, [r5, r1]
	sub r2, r0, #1
	add r0, r5, #0
	add r0, #0xc8
	strb r2, [r0]
	ldrsb r0, [r5, r1]
	cmp r0, #0
	bgt _0225F436
	add r0, r5, #0
	add r0, #0xc6
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xc8
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xcb
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225F372
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0225F4D4 ; =ov120_0226032C
	b _0225F37A
_0225F372:
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0225F4D8 ; =ov120_022602FC
_0225F37A:
	ldrb r2, [r0, r1]
	ldr r0, [r5]
	mov r1, #0x1d
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xc9
	ldrb r0, [r0]
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x1d
	sub r3, r3, r4
	ror r3, r1
	add r1, r4, r3
	asr r3, r2, #2
	lsr r3, r3, #0x1d
	str r0, [sp, #0x14]
	lsl r0, r2, #2
	add r3, r2, r3
	asr r2, r3, #3
	add r3, r5, #0
	add r3, #0xc7
	add r0, r5, r0
	lsl r1, r1, #5
	lsl r2, r2, #5
	ldrb r3, [r3]
	ldr r0, [r0, #4]
	add r1, #0x10
	add r2, #0x10
	bl ov120_0225F040
	add r0, r5, #0
	add r0, #0xcb
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225F3D6
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0225F4D4 ; =ov120_0226032C
	b _0225F3DE
_0225F3D6:
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0225F4D8 ; =ov120_022602FC
_0225F3DE:
	ldrb r1, [r0, r1]
	mov r0, #0x2f
	sub r2, r0, r1
	ldr r0, [r5]
	lsr r4, r2, #0x1f
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	lsl r3, r2, #0x1d
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xc9
	ldrb r0, [r0]
	sub r3, r3, r4
	mov r1, #0x1d
	ror r3, r1
	add r1, r4, r3
	asr r3, r2, #2
	lsr r3, r3, #0x1d
	str r0, [sp, #0x14]
	lsl r0, r2, #2
	add r3, r2, r3
	asr r2, r3, #3
	add r3, r5, #0
	add r3, #0xc7
	add r0, r5, r0
	lsl r1, r1, #5
	lsl r2, r2, #5
	ldrb r3, [r3]
	ldr r0, [r0, #4]
	add r1, #0x10
	add r2, #0x10
	bl ov120_0225F040
	add r0, r5, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc4
	strb r1, [r0]
_0225F436:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r4, [r0]
	add r0, r5, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r4, r0
	bge _0225F4B0
	ldr r0, _0225F4D4 ; =ov120_0226032C
	add r7, r0, r4
	ldr r0, _0225F4D8 ; =ov120_022602FC
	add r6, r0, r4
	add r0, r5, #0
	str r0, [sp, #0x24]
	add r0, #0xc5
	str r0, [sp, #0x24]
_0225F456:
	add r0, r5, #0
	add r0, #0xcb
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225F46C
	ldrb r0, [r7]
	mov r1, #0x2f
	sub r1, r1, r0
	str r1, [sp, #0x18]
	b _0225F474
_0225F46C:
	ldrb r0, [r6]
	mov r1, #0x2f
	sub r1, r1, r0
	str r1, [sp, #0x18]
_0225F474:
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov120_0225F08C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov120_0225F08C
	ldr r1, [sp, #0x20]
	orr r0, r1
	str r0, [sp, #0x1c]
	cmp r0, #1
	bne _0225F4A0
	ldr r0, [sp, #0x24]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x24]
	strb r1, [r0]
_0225F4A0:
	add r0, r5, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r4, r4, #1
	add r7, r7, #1
	add r6, r6, #1
	cmp r4, r0
	blt _0225F456
_0225F4B0:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #0x18
	blo _0225F4CC
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0225F4CC
	mov r0, #0
	add r5, #0xca
	strb r0, [r5]
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F4CC:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225F4D4: .word ov120_0226032C
_0225F4D8: .word ov120_022602FC
	thumb_func_end ov120_0225F318

	thumb_func_start ov120_0225F4DC
ov120_0225F4DC: ; 0x0225F4DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	bne _0225F4E8
	bl GF_AssertFail
_0225F4E8:
	add r0, r5, #0
	add r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225F4F8
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F4F8:
	add r0, r5, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0x18
	bhs _0225F602
	mov r1, #0xc8
	ldrsb r0, [r5, r1]
	sub r2, r0, #1
	add r0, r5, #0
	add r0, #0xc8
	strb r2, [r0]
	ldrsb r0, [r5, r1]
	cmp r0, #0
	bgt _0225F602
	add r0, r5, #0
	add r0, #0xc6
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xc8
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xcb
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225F538
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0225F6A4 ; =ov120_02260314
	ldrb r2, [r0, r1]
	b _0225F546
_0225F538:
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0225F6A4 ; =ov120_02260314
	ldrb r1, [r0, r1]
	mov r0, #0x2f
	sub r2, r0, r1
_0225F546:
	ldr r0, [r5]
	lsr r4, r2, #0x1f
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	lsl r3, r2, #0x1d
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xc9
	ldrb r0, [r0]
	sub r3, r3, r4
	mov r1, #0x1d
	ror r3, r1
	add r1, r4, r3
	asr r3, r2, #2
	lsr r3, r3, #0x1d
	str r0, [sp, #0x14]
	lsl r0, r2, #2
	add r3, r2, r3
	asr r2, r3, #3
	add r3, r5, #0
	add r3, #0xc7
	add r0, r5, r0
	lsl r1, r1, #5
	lsl r2, r2, #5
	ldrb r3, [r3]
	ldr r0, [r0, #4]
	add r1, #0x10
	add r2, #0x10
	bl ov120_0225F040
	add r0, r5, #0
	add r0, #0xcb
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225F5A2
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0225F6A8 ; =ov120_022602E4
	ldrb r2, [r0, r1]
	b _0225F5B0
_0225F5A2:
	add r0, r5, #0
	add r0, #0xc4
	ldrb r1, [r0]
	ldr r0, _0225F6A8 ; =ov120_022602E4
	ldrb r1, [r0, r1]
	mov r0, #0x2f
	sub r2, r0, r1
_0225F5B0:
	ldr r0, [r5]
	lsr r4, r2, #0x1f
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	lsl r3, r2, #0x1d
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xc9
	ldrb r0, [r0]
	sub r3, r3, r4
	mov r1, #0x1d
	ror r3, r1
	add r1, r4, r3
	asr r3, r2, #2
	lsr r3, r3, #0x1d
	str r0, [sp, #0x14]
	lsl r0, r2, #2
	add r3, r2, r3
	asr r2, r3, #3
	add r3, r5, #0
	add r3, #0xc7
	add r0, r5, r0
	lsl r1, r1, #5
	lsl r2, r2, #5
	ldrb r3, [r3]
	ldr r0, [r0, #4]
	add r1, #0x10
	add r2, #0x10
	bl ov120_0225F040
	add r0, r5, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc4
	strb r1, [r0]
_0225F602:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r7, [r0]
	add r0, r5, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r7, r0
	bge _0225F680
	ldr r0, _0225F6A4 ; =ov120_02260314
	add r6, r0, r7
	ldr r0, _0225F6A8 ; =ov120_022602E4
	add r4, r0, r7
	add r0, r5, #0
	str r0, [sp, #0x24]
	add r0, #0xc5
	str r0, [sp, #0x24]
_0225F622:
	add r0, r5, #0
	add r0, #0xcb
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225F636
	ldrb r1, [r4]
	ldrb r0, [r6]
	str r1, [sp, #0x18]
	b _0225F644
_0225F636:
	ldrb r1, [r6]
	ldrb r2, [r4]
	mov r0, #0x2f
	sub r0, r0, r1
	mov r1, #0x2f
	sub r1, r1, r2
	str r1, [sp, #0x18]
_0225F644:
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov120_0225F08C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl ov120_0225F08C
	ldr r1, [sp, #0x20]
	orr r0, r1
	str r0, [sp, #0x1c]
	cmp r0, #1
	bne _0225F670
	ldr r0, [sp, #0x24]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x24]
	strb r1, [r0]
_0225F670:
	add r0, r5, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r7, r7, #1
	add r6, r6, #1
	add r4, r4, #1
	cmp r7, r0
	blt _0225F622
_0225F680:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #0x18
	blo _0225F69C
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0225F69C
	mov r0, #0
	add r5, #0xca
	strb r0, [r5]
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F69C:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225F6A4: .word ov120_02260314
_0225F6A8: .word ov120_022602E4
	thumb_func_end ov120_0225F4DC

	thumb_func_start ov120_0225F6AC
ov120_0225F6AC: ; 0x0225F6AC
	strh r1, [r0]
	strh r1, [r0, #2]
	sub r1, r2, r1
	strh r1, [r0, #4]
	strh r3, [r0, #6]
	mov r1, #0
	strh r1, [r0, #8]
	bx lr
	thumb_func_end ov120_0225F6AC

	thumb_func_start ov120_0225F6BC
ov120_0225F6BC: ; 0x0225F6BC
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #8]
	mov r0, #2
	ldrsh r1, [r4, r0]
	asr r2, r2, #4
	lsl r3, r2, #2
	ldr r2, _0225F6F4 ; =FX_SinCosTable_
	mov r0, #4
	ldrsh r0, [r4, r0]
	ldrsh r2, [r2, r3]
	mul r2, r0
	asr r0, r2, #0xc
	add r0, r1, r0
	strh r0, [r4]
	mov r0, #6
	ldrsh r1, [r4, r0]
	ldr r0, _0225F6F8 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	ldrh r1, [r4, #8]
	add r0, r1, r0
	strh r0, [r4, #8]
	pop {r4, pc}
	nop
_0225F6F4: .word FX_SinCosTable_
_0225F6F8: .word 0x0000FFFF
	thumb_func_end ov120_0225F6BC

