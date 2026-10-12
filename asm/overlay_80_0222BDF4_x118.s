	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222D968
	.public ov80_0222DAAC
	.public ov80_0222DC14
	.extern ov80_0222D63C
	.extern ov80_0222D644

	.text

	.text
	thumb_func_start ov80_0222D968
ov80_0222D968: ; 0x0222D968
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0222D97E
	cmp r0, #1
	beq _0222D99A
	cmp r0, #2
	beq _0222DA54
	b _0222DA8E
_0222D97E:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	add r3, r5, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, #0xc
	bl ov80_0223AC24
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0222DA94
_0222D99A:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0222DA94
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r1, _0222DA9C ; =0x00000608
	mov r0, #0x65
	bl Heap_Alloc
	ldr r1, _0222DAA0 ; =0x00000604
	str r0, [r5, #0x24]
	mov r2, #1
	str r2, [r0, r1]
	ldr r0, _0222DAA4 ; =0x04000020
	add r1, sp, #4
	mov r2, #0x65
	bl ov80_0223B544
	mov r7, #0
	mov r1, #6
	ldr r2, [r5, #0x24]
	lsl r1, r1, #8
	str r0, [r2, r1]
	add r6, r7, #0
	add r4, r7, #0
_0222D9D6:
	ldr r0, [r5, #0x24]
	strh r6, [r0, r4]
	ldr r1, [r5, #0x24]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	add r1, r1, #2
	strh r1, [r0, #2]
	mov r0, #0x31
	sub r2, r0, r7
	lsr r1, r2, #0x1f
	lsl r3, r2, #0x1d
	sub r3, r3, r1
	mov r0, #0x1d
	ror r3, r0
	add r0, r1, r3
	ldr r1, [r5, #0x24]
	add r1, r1, r4
	strh r0, [r1, #4]
	asr r0, r2, #1
	lsr r0, r0, #0x1e
	add r0, r2, r0
	asr r1, r0, #2
	ldr r0, [r5, #0x24]
	add r0, r0, r4
	strh r1, [r0, #6]
	ldr r0, [r5, #0x24]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #8]
	ldr r0, [r5, #0x24]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #0xa]
	add r1, r0, #0
	bl ov80_0222D63C
	ldr r1, [r5, #0x24]
	add r7, r7, #1
	add r1, r1, r4
	str r0, [r1, #0xc]
	add r6, r6, #2
	add r4, #0x10
	cmp r7, #0x60
	blt _0222D9D6
	mov r0, #1
	str r0, [sp]
	mov r0, #0x28
	add r1, r0, #0
	sub r1, #0x38
	mov r2, #0
	mov r3, #0x1e
	bl StartBrightnessTransition
	mov r2, #1
	ldr r0, _0222DAA8 ; =ov80_0222D644
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl SysTask_CreateOnMainQueue
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0222DA94
_0222DA54:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _0222DA94
	mov r0, #1
	str r0, [r5, #0x10]
	mov r0, #3
	mov r1, #0
	bl ToggleBgLayer
	ldr r0, [r5]
	mov r2, #0
	ldr r0, [r0]
	mov r1, #3
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r5]
	mov r1, #3
	ldr r0, [r0]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0222DA94
_0222DA8E:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222DA94:
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0222DA9C: .word 0x00000608
_0222DAA0: .word 0x00000604
_0222DAA4: .word 0x04000020
_0222DAA8: .word ov80_0222D644
	thumb_func_end ov80_0222D968

	thumb_func_start ov80_0222DAAC
ov80_0222DAAC: ; 0x0222DAAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0222DAC2
	cmp r0, #1
	beq _0222DADE
	cmp r0, #2
	beq _0222DBBC
	b _0222DBF6
_0222DAC2:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	add r3, r5, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, #0xc
	bl ov80_0223AC24
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0222DBFC
_0222DADE:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0222DAE6
	b _0222DBFC
_0222DAE6:
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r1, _0222DC04 ; =0x00000608
	mov r0, #0x65
	bl Heap_Alloc
	ldr r1, _0222DC08 ; =0x00000604
	str r0, [r5, #0x24]
	mov r2, #2
	str r2, [r0, r1]
	ldr r0, _0222DC0C ; =0x04000020
	add r1, sp, #4
	mov r2, #0x65
	bl ov80_0223B544
	mov r6, #0
	mov r1, #6
	ldr r2, [r5, #0x24]
	lsl r1, r1, #8
	str r0, [r2, r1]
	add r7, r6, #0
	add r4, r6, #0
_0222DB1C:
	ldr r0, [r5, #0x24]
	lsr r2, r6, #0x1f
	strh r7, [r0, r4]
	ldr r1, [r5, #0x24]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	add r1, r1, #2
	strh r1, [r0, #2]
	mov r0, #0x30
	sub r1, r0, r6
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	add r1, r0, #1
	ldr r0, [r5, #0x24]
	add r0, r0, r4
	strh r1, [r0, #4]
	lsl r1, r6, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222DB5A
	ldr r0, [r5, #0x24]
	mov r1, #4
	add r0, r0, r4
	ldrsh r2, [r0, r1]
	sub r1, r1, #5
	mul r1, r2
	strh r1, [r0, #4]
_0222DB5A:
	cmp r6, #0x30
	bge _0222DB66
	ldr r0, [r5, #0x24]
	add r0, r0, r4
	strh r6, [r0, #6]
	b _0222DB70
_0222DB66:
	mov r0, #0x60
	sub r1, r0, r6
	ldr r0, [r5, #0x24]
	add r0, r0, r4
	strh r1, [r0, #6]
_0222DB70:
	ldr r0, [r5, #0x24]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #8]
	ldr r0, [r5, #0x24]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #0xa]
	add r1, r0, #0
	bl ov80_0222D63C
	ldr r1, [r5, #0x24]
	add r6, r6, #1
	add r1, r1, r4
	str r0, [r1, #0xc]
	add r7, r7, #2
	add r4, #0x10
	cmp r6, #0x60
	blt _0222DB1C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x28
	add r1, r0, #0
	sub r1, #0x38
	mov r2, #0
	mov r3, #0x1c
	bl StartBrightnessTransition
	mov r2, #1
	ldr r0, _0222DC10 ; =ov80_0222D644
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl SysTask_CreateOnMainQueue
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0222DBFC
_0222DBBC:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _0222DBFC
	mov r0, #1
	str r0, [r5, #0x10]
	mov r0, #3
	mov r1, #0
	bl ToggleBgLayer
	ldr r0, [r5]
	mov r2, #0
	ldr r0, [r0]
	mov r1, #3
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r5]
	mov r1, #3
	ldr r0, [r0]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0222DBFC
_0222DBF6:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222DBFC:
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0222DC04: .word 0x00000608
_0222DC08: .word 0x00000604
_0222DC0C: .word 0x04000020
_0222DC10: .word ov80_0222D644
	thumb_func_end ov80_0222DAAC

	thumb_func_start ov80_0222DC14
ov80_0222DC14: ; 0x0222DC14
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0222DC26
	cmp r0, #1
	beq _0222DC38
	b _0222DC62
_0222DC26:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0x65
	bl ov80_0223B424
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0222DC62
_0222DC38:
	mov r0, #0x12
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _0222DC68 ; =0x0400001C
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r4, #0
	ldr r3, _0222DC6C ; =0x000002AA
	add r0, #0x18
	mov r2, #0xbf
	bl ov80_0223B440
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_0222DC62:
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_0222DC68: .word 0x0400001C
_0222DC6C: .word 0x000002AA
	thumb_func_end ov80_0222DC14

