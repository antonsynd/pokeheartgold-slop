	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225EEBC
	.public ov92_0225EF4C
	.extern ov92_0225DD48
	.extern ov92_02260428
	.extern ov92_02260860
	.extern ov92_02260870
	.extern ov92_022630E8

	.text

	.text
	thumb_func_start ov92_0225EEBC
ov92_0225EEBC: ; 0x0225EEBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x71
	mov r1, #0x7c
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x7c
	add r4, r0, #0
	bl memset
	mov r0, #0x11
	lsl r0, r0, #4
	add r1, r5, r0
	str r1, [r4, #0xc]
	mov r1, #0x32
	lsl r1, r1, #4
	add r1, r5, r1
	add r0, r0, #4
	add r2, r4, #0
	str r1, [r4, #0x10]
	add r0, r5, r0
	str r0, [r4, #0x14]
	ldr r0, _0225EF3C ; =0x00001FC8
	add r2, #0x20
	add r3, r5, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldr r0, _0225EF40 ; =0x00002BB4
	ldr r0, [r5, r0]
	str r0, [r4, #0x74]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x78]
	add r0, r5, #0
	bl ov92_0225DD48
	mov r0, #0xea
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02018198
	ldr r0, _0225EF44 ; =0x000005B4
	mov r1, #0
	add r0, r5, r0
	bl sub_02018198
	mov r0, #0x1f
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl sub_02018198
	mov r2, #1
	ldr r0, _0225EF48 ; =ov92_0225EF4C
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	nop
_0225EF3C: .word 0x00001FC8
_0225EF40: .word 0x00002BB4
_0225EF44: .word 0x000005B4
_0225EF48: .word ov92_0225EF4C
	thumb_func_end ov92_0225EEBC

	thumb_func_start ov92_0225EF4C
ov92_0225EF4C: ; 0x0225EF4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0x28]
	lsl r0, r0, #4
	asr r5, r0, #0x10
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225EF6C
	ldr r0, [r4, #0x78]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225EF7C
_0225EF6C:
	add r0, r6, #0
	bl SysTask_Destroy
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0225EF7C:
	ldr r0, [r4]
	cmp r0, #3
	bls _0225EF84
	b _0225F1DE
_0225EF84:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225EF90: ; jump table
	.short _0225EF98 - _0225EF90 - 2 ; case 0
	.short _0225F04A - _0225EF90 - 2 ; case 1
	.short _0225F166 - _0225EF90 - 2 ; case 2
	.short _0225F1AA - _0225EF90 - 2 ; case 3
_0225EF98:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	cmp r0, #0
	bne _0225EFEC
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #3
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x44
	add r2, r1, r2
	mov r3, #4
	bl ov92_02260860
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _0225EFD4
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov92_02260860
	b _0225F036
_0225EFD4:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #4
	bl ov92_02260860
	b _0225F036
_0225EFEC:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #3
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x44
	add r2, r1, r2
	mov r3, #8
	bl ov92_02260860
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _0225F020
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #8
	bl ov92_02260860
	b _0225F036
_0225F020:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov92_02260860
_0225F036:
	ldr r0, _0225F240 ; =0x0000060A
	bl PlaySE
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F04A:
	add r0, r4, #0
	add r0, #0x44
	bl ov92_02260870
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x5c
	bl ov92_02260870
	add r6, r0, #0
	mov r0, #0x79
	ldr r2, [r4, #0x44]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r1, r0, #4
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x10]
	cmp r7, #0
	str r3, [r2, r1]
	beq _0225F078
	cmp r6, #0
	bne _0225F07A
_0225F078:
	b _0225F23A
_0225F07A:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _0225F114
	ldr r1, [r4, #0xc]
	mov r2, #1
	str r2, [r1]
	ldr r1, [r4, #0x10]
	sub r0, #0x54
	add r0, r1, r0
	bl ov92_022630E8
	mov r0, #0x1a
	ldr r1, [r4, #0x10]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225F244 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225F244 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov92_02260428
	mov r0, #0x79
	mov r2, #3
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x44
	sub r2, r1, r2
	mov r3, #8
	bl ov92_02260860
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _0225F0FC
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #8
	bl ov92_02260860
	b _0225F15C
_0225F0FC:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #8
	bl ov92_02260860
	b _0225F15C
_0225F114:
	ldr r1, [r4, #0x10]
	mov r2, #3
	ldr r1, [r1, r0]
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x44
	sub r2, r1, r2
	mov r3, #4
	bl ov92_02260860
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _0225F146
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #4
	bl ov92_02260860
	b _0225F15C
_0225F146:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov92_02260860
_0225F15C:
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F166:
	add r0, r4, #0
	add r0, #0x44
	bl ov92_02260870
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x5c
	bl ov92_02260870
	mov r1, #0x79
	ldr r3, [r4, #0x44]
	ldr r2, [r4, #0x10]
	lsl r1, r1, #2
	str r3, [r2, r1]
	add r1, r1, #4
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x10]
	cmp r5, #0
	str r3, [r2, r1]
	beq _0225F23A
	cmp r0, #0
	beq _0225F23A
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0225F1A0
	mov r0, #0x63
	lsl r0, r0, #4
	bl PlaySE
_0225F1A0:
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F1AA:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _0225F1D6
	ldr r0, [r4, #8]
	cmp r0, #8
	bne _0225F1BC
	ldr r0, _0225F248 ; =0x0000058D
	bl PlaySE
_0225F1BC:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x28
	blt _0225F23A
	ldr r0, [r4, #0xc]
	mov r1, #2
	str r1, [r0]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F1D6:
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F1DE:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _0225F208
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x2d
	blt _0225F23A
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0]
	ldr r0, _0225F240 ; =0x0000060A
	bl PlaySE
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_0225F208:
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	blt _0225F23A
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0225F21A
	ldr r2, _0225F24C ; =0xFFFF8000
	b _0225F21C
_0225F21A:
	ldr r2, _0225F250 ; =0xFFFEC000
_0225F21C:
	mov r0, #0x79
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	str r2, [r1, r0]
	mov r0, #0x7a
	ldr r1, [r4, #0x10]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r6, #0
	bl SysTask_Destroy
	add r0, r4, #0
	bl Heap_Free
_0225F23A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225F240: .word 0x0000060A
_0225F244: .word 0x3F4CCCCD
_0225F248: .word 0x0000058D
_0225F24C: .word 0xFFFF8000
_0225F250: .word 0xFFFEC000
	thumb_func_end ov92_0225EF4C

