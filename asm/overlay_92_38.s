	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225D9A8
	.public ov92_0225D9B4
	.public ov92_0225DA2C
	.public ov92_0225DD48
	.public ov92_0225DF58
	.public ov92_0225DFA4
	.public ov92_0225EDB4
	.public ov92_0225EE04
	.public ov92_0225EE60
	.public ov92_0225EEBC
	.public ov92_0225EF4C
	.public ov92_0225F254
	.public ov92_0225F338
	.public ov92_0225F530
	.public ov92_0225F878
	.public ov92_0225F8B0
	.public ov92_0225F8EC
	.public ov92_0225F968
	.public ov92_0225F9C4
	.public ov92_02260428
	.public ov92_02260860
	.public ov92_02260870
	.public ov92_022630E8
	.public ov92_02263C34
	.public ov92_02263CD0
	.public ov92_02263CD4

	.text

	thumb_func_start ov92_0225EE04
ov92_0225EE04: ; 0x0225EE04
	push {r3, r4, r5, lr}
	ldr r2, _0225EE54 ; =0x000029D0
	add r3, r0, r2
	mov r2, #0x44
	mul r2, r1
	add r3, r3, r2
	ldr r2, [r3, #0x30]
	cmp r2, #1
	beq _0225EE52
	ldr r4, _0225EE58 ; =0x00002BB4
	ldr r2, [r0, r4]
	sub r4, #0xac
	str r2, [r3, #0x40]
	mov r2, #1
	add r5, r0, r4
	lsl r4, r1, #2
	str r2, [r3, #0x30]
	add r4, r5, r4
	str r4, [r3, #0x2c]
	ldr r4, [r4]
	lsl r1, r1, #1
	add r1, r0, r1
	str r4, [r3, #0x28]
	add r1, #0xf4
	ldrh r1, [r1]
	lsl r2, r2, #0xc
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r1, [r1, #0x34]
	str r1, [r3, #0xc]
	mov r1, #0
	str r1, [r3]
	str r1, [r3, #4]
	ldr r0, [r0, #0x14]
	add r1, r3, #0
	str r0, [r3, #0x3c]
	ldr r0, _0225EE5C ; =ov92_0225F338
	bl SysTask_CreateOnMainQueue
_0225EE52:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225EE54: .word 0x000029D0
_0225EE58: .word 0x00002BB4
_0225EE5C: .word ov92_0225F338
	thumb_func_end ov92_0225EE04

	thumb_func_start ov92_0225EE60
ov92_0225EE60: ; 0x0225EE60
	push {r3, lr}
	ldr r2, _0225EEA8 ; =0x000029D0
	add r3, r0, r2
	mov r2, #0x44
	mul r2, r1
	add r1, r3, r2
	ldr r2, [r1, #0x30]
	cmp r2, #1
	beq _0225EEA4
	ldr r3, _0225EEAC ; =0x00002BB4
	ldr r2, [r0, r3]
	sub r3, #0xc8
	str r2, [r1, #0x40]
	mov r2, #1
	str r2, [r1, #0x30]
	add r3, r0, r3
	str r3, [r1, #0x2c]
	ldr r3, [r3]
	lsl r2, r2, #0xc
	str r3, [r1, #0x28]
	ldr r3, _0225EEB0 ; =0x00001BB0
	add r3, r0, r3
	str r3, [r1, #0x34]
	ldr r3, _0225EEB4 ; =0x00001DBC
	add r3, r0, r3
	str r3, [r1, #0x38]
	mov r3, #0
	str r3, [r1]
	str r3, [r1, #4]
	ldr r0, [r0, #0x14]
	str r0, [r1, #0x3c]
	ldr r0, _0225EEB8 ; =ov92_0225F530
	bl SysTask_CreateOnMainQueue
_0225EEA4:
	pop {r3, pc}
	nop
_0225EEA8: .word 0x000029D0
_0225EEAC: .word 0x00002BB4
_0225EEB0: .word 0x00001BB0
_0225EEB4: .word 0x00001DBC
_0225EEB8: .word ov92_0225F530
	thumb_func_end ov92_0225EE60

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

	thumb_func_start ov92_0225F254
ov92_0225F254: ; 0x0225F254
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl ManagedSprite_GetAnimationFrame
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225F274
	ldr r0, [r4, #0x2c]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225F284
_0225F274:
	add r0, r5, #0
	bl SysTask_Destroy
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0225F284:
	ldr r0, [r4]
	cmp r0, #0
	beq _0225F290
	cmp r0, #1
	beq _0225F2D4
	b _0225F300
_0225F290:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ManagedSprite_GetSpritePositionFxXY
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0225F2B8
	mov r2, #2
	add r0, r4, #0
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	add r0, #0x14
	add r2, r1, r2
	mov r3, #0x10
	bl ov92_02260860
	b _0225F2CA
_0225F2B8:
	mov r2, #2
	add r0, r4, #0
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	add r0, #0x14
	sub r2, r1, r2
	mov r3, #4
	bl ov92_02260860
_0225F2CA:
	ldr r0, [r4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225F2D4:
	add r0, r4, #0
	add r0, #0x14
	bl ov92_02260870
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	add r1, sp, #4
	add r2, sp, #0
	bl ManagedSprite_GetSpritePositionFxXY
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #4]
	ldr r2, [r4, #0x14]
	bl ManagedSprite_SetPositonFxXY
	cmp r5, #0
	beq _0225F332
	ldr r0, [r4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225F300:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _0225F31E
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x23
	blt _0225F332
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225F31E:
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	blt _0225F332
	add r0, r5, #0
	bl SysTask_Destroy
	add r0, r4, #0
	bl Heap_Free
_0225F332:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov92_0225F254

	thumb_func_start ov92_0225F338
ov92_0225F338: ; 0x0225F338
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225F352
	ldr r0, [r4, #0x3c]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225F360
_0225F352:
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #8
	pop {r3, r4, r5, pc}
_0225F360:
	ldr r0, [r4]
	cmp r0, #5
	bls _0225F368
	b _0225F4F2
_0225F368:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F374: ; jump table
	.short _0225F380 - _0225F374 - 2 ; case 0
	.short _0225F3F4 - _0225F374 - 2 ; case 1
	.short _0225F426 - _0225F374 - 2 ; case 2
	.short _0225F43C - _0225F374 - 2 ; case 3
	.short _0225F46C - _0225F374 - 2 ; case 4
	.short _0225F4BC - _0225F374 - 2 ; case 5
_0225F380:
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetDrawPriority
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r4, #0xc]
	add r1, sp, #4
	add r2, sp, #0
	bl ManagedSprite_GetAffineScale
	ldr r0, [sp]
	mov r1, #0
	bl _fgr
	ldr r0, _0225F524 ; =0x45800000
	bls _0225F3C0
	ldr r1, [sp]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225F3CE
_0225F3C0:
	ldr r1, [sp]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225F3CE:
	bl _ffix
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	add r0, #0x10
	lsl r2, r2, #0xc
	mov r3, #2
	bl ov92_02260860
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0xc]
	ldr r1, [r1]
	sub r1, r1, #1
	bl ManagedSprite_SetPaletteOverrideOffset
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0225F3F4:
	add r0, r4, #0
	add r0, #0x10
	bl ov92_02260870
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl _fflt
	ldr r1, _0225F524 ; =0x45800000
	bl _fdiv
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl ManagedSprite_SetAffineScale
	cmp r5, #0
	bne _0225F41C
	b _0225F520
_0225F41C:
	ldr r0, [r4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225F426:
	add r0, r4, #0
	mov r1, #2
	ldr r2, _0225F528 ; =0x00000666
	add r0, #0x10
	lsl r1, r1, #0xc
	mov r3, #4
	bl ov92_02260860
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0225F43C:
	add r0, r4, #0
	add r0, #0x10
	bl ov92_02260870
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl _fflt
	ldr r1, _0225F524 ; =0x45800000
	bl _fdiv
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl ManagedSprite_SetAffineScale
	cmp r5, #0
	beq _0225F520
	ldr r0, [r4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225F46C:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r0, [r0]
	cmp r1, r0
	beq _0225F47C
	mov r0, #0
	str r0, [r4]
	b _0225F4A6
_0225F47C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0225F492
	add r0, r4, #0
	ldr r1, _0225F528 ; =0x00000666
	ldr r2, _0225F52C ; =0x00000CCD
	add r0, #0x10
	mov r3, #2
	bl ov92_02260860
	b _0225F4A0
_0225F492:
	ldr r1, _0225F52C ; =0x00000CCD
	add r0, r4, #0
	add r0, #0x10
	lsr r2, r1, #1
	mov r3, #4
	bl ov92_02260860
_0225F4A0:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0225F4A6:
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	cmp r0, #0
	bne _0225F520
	mov r0, #0xff
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225F4BC:
	add r0, r4, #0
	add r0, #0x10
	bl ov92_02260870
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl _fflt
	ldr r1, _0225F524 ; =0x45800000
	bl _fdiv
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl ManagedSprite_SetAffineScale
	cmp r5, #0
	beq _0225F520
	mov r0, #4
	str r0, [r4]
	ldr r1, [r4, #4]
	mov r0, #1
	eor r0, r1
	add sp, #8
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0225F4F2:
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ManagedSprite_SetDrawPriority
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl SysTask_Destroy
_0225F520:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225F524: .word 0x45800000
_0225F528: .word 0x00000666
_0225F52C: .word 0x00000CCD
	thumb_func_end ov92_0225F338

	thumb_func_start ov92_0225F530
ov92_0225F530: ; 0x0225F530
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	ldr r6, [r4, #0x34]
	ldr r5, [r4, #0x38]
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225F550
	ldr r2, [r4, #0x3c]
	add r0, r2, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225F59A
_0225F550:
	add r0, r6, #0
	bl ov92_0225DA2C
	add r0, r5, #0
	bl ov92_0225DA2C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020180F8
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl SysTask_Destroy
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0225F59A:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	sub r3, r1, #1
	bmi _0225F5A6
	cmp r3, #4
	ble _0225F5A8
_0225F5A6:
	mov r3, #0
_0225F5A8:
	ldr r0, [r4]
	cmp r0, #5
	bls _0225F5B0
	b _0225F81E
_0225F5B0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F5BC: ; jump table
	.short _0225F5C8 - _0225F5BC - 2 ; case 0
	.short _0225F5E8 - _0225F5BC - 2 ; case 1
	.short _0225F69C - _0225F5BC - 2 ; case 2
	.short _0225F6BC - _0225F5BC - 2 ; case 3
	.short _0225F798 - _0225F5BC - 2 ; case 4
	.short _0225F7C4 - _0225F5BC - 2 ; case 5
_0225F5C8:
	ldr r1, [r2]
	ldr r2, _0225F868 ; =ov92_02263CD0
	lsl r3, r3, #3
	ldr r2, [r2, r3]
	add r0, r6, #0
	bl ov92_0225D9A8
	ldr r1, [r4, #0x40]
	add r0, r6, #0
	bl ov92_0225D9B4
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F5E8:
	mov r0, #0x71
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r6, #0
	ldr r2, [r2]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x27
	bl sub_020180BC
	add r1, r6, #0
	ldr r2, [r4, #0x3c]
	mov r0, #0x71
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r2, [r2]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x28
	bl sub_020180BC
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x88
	bl sub_020181D4
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x9c
	bl sub_020181D4
	add r0, r6, #0
	add r0, #0x88
	mov r1, #0
	bl sub_02018198
	add r0, r6, #0
	add r0, #0x9c
	mov r1, #0
	bl sub_02018198
	add r0, r6, #0
	mov r1, #0
	bl sub_020182A0
	mov r0, #0x7b
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	sub r0, #0x5c
	add r0, r6, r0
	bl ov92_022630E8
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r6, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225F86C ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225F86C ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r6, #0
	add r2, r1, #0
	bl ov92_02260428
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F69C:
	ldr r1, [r2]
	ldr r2, _0225F870 ; =ov92_02263CD4
	lsl r3, r3, #3
	ldr r2, [r2, r3]
	add r0, r5, #0
	bl ov92_0225D9A8
	ldr r1, [r4, #0x40]
	add r0, r5, #0
	bl ov92_0225D9B4
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F6BC:
	mov r0, #0x71
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	ldr r2, [r2]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x29
	bl sub_020180BC
	add r1, r5, #0
	ldr r2, [r4, #0x3c]
	mov r0, #0x71
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [r2]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x2a
	bl sub_020180BC
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x88
	bl sub_020181D4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x9c
	bl sub_020181D4
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0
	bl sub_02018198
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0
	bl sub_02018198
	add r0, r5, #0
	mov r1, #1
	bl sub_020182A0
	mov r0, #0x7b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x5c
	add r0, r5, r0
	bl ov92_022630E8
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225F86C ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225F86C ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	add r2, r1, #0
	bl ov92_02260428
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0225F78E
	mov r1, #0
	ldr r2, _0225F874 ; =0xFFFF8000
	add r0, r6, #0
	add r3, r1, #0
	bl sub_020182A8
	mov r1, #0
	ldr r2, _0225F874 ; =0xFFFF8000
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020182A8
	mov r0, #0x79
	ldr r1, _0225F874 ; =0xFFFF8000
	lsl r0, r0, #2
	str r1, [r6, r0]
	str r1, [r5, r0]
_0225F78E:
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F798:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0225F864
	add r0, r6, #0
	mov r1, #1
	bl sub_020182A0
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
	mov r0, #0x7b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225F7C4:
	cmp r1, #0
	bne _0225F7CE
	mov r0, #0xff
	str r0, [r4]
	b _0225F814
_0225F7CE:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _0225F814
	add r0, r6, #0
	bl ov92_0225DA2C
	add r0, r5, #0
	bl ov92_0225DA2C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020180F8
	mov r0, #0
	str r0, [r4]
_0225F814:
	ldr r0, [r4, #0x2c]
	add sp, #0xc
	ldr r0, [r0]
	str r0, [r4, #0x28]
	pop {r4, r5, r6, r7, pc}
_0225F81E:
	add r0, r6, #0
	bl ov92_0225DA2C
	add r0, r5, #0
	bl ov92_0225DA2C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020180F8
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020180F8
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl SysTask_Destroy
_0225F864:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225F868: .word ov92_02263CD0
_0225F86C: .word 0x3F4CCCCD
_0225F870: .word ov92_02263CD4
_0225F874: .word 0xFFFF8000
	thumb_func_end ov92_0225F530

	thumb_func_start ov92_0225F878
ov92_0225F878: ; 0x0225F878
	push {r3, r4}
	sub sp, #8
	ldr r3, _0225F8A8 ; =ov92_02263C34
	add r2, sp, #0
	ldrh r4, [r3, #0x10]
	add r1, sp, #0
	strh r4, [r2]
	ldrh r4, [r3, #0x12]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0x14]
	ldrh r3, [r3, #0x16]
	strh r4, [r2, #4]
	strh r3, [r2, #6]
	ldr r3, _0225F8AC ; =0x00002AF0
	sub r2, r3, #4
	ldr r2, [r0, r2]
	ldr r4, [r0, r3]
	lsl r2, r2, #1
	ldrh r1, [r1, r2]
	add r1, r4, r1
	str r1, [r0, r3]
	add sp, #8
	pop {r3, r4}
	bx lr
	.balign 4, 0
_0225F8A8: .word ov92_02263C34
_0225F8AC: .word 0x00002AF0
	thumb_func_end ov92_0225F878

	thumb_func_start ov92_0225F8B0
ov92_0225F8B0: ; 0x0225F8B0
	push {r3, r4}
	sub sp, #8
	ldr r3, _0225F8E4 ; =ov92_02263C34
	add r1, sp, #0
	ldrh r4, [r3, #0x18]
	add r2, sp, #0
	strh r4, [r1]
	ldrh r4, [r3, #0x1a]
	strh r4, [r1, #2]
	ldrh r4, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	strh r4, [r1, #4]
	ldr r4, _0225F8E8 ; =0x00002AF0
	strh r3, [r1, #6]
	sub r3, r4, #4
	ldr r3, [r0, r3]
	ldr r1, [r0, r4]
	sub r3, r3, #1
	lsl r3, r3, #1
	ldrh r2, [r2, r3]
	add r1, r1, r2
	str r1, [r0, r4]
	add sp, #8
	pop {r3, r4}
	bx lr
	nop
_0225F8E4: .word ov92_02263C34
_0225F8E8: .word 0x00002AF0
	thumb_func_end ov92_0225F8B0

	thumb_func_start ov92_0225F8EC
ov92_0225F8EC: ; 0x0225F8EC
	ldr r2, _0225F958 ; =0x00002B18
	ldr r1, _0225F95C ; =0x0000010D
	ldr r3, [r0, r2]
	cmp r3, r1
	bgt _0225F906
	bge _0225F926
	cmp r3, #0
	bgt _0225F900
	beq _0225F946
	b _0225F94C
_0225F900:
	cmp r3, #0x77
	beq _0225F91E
	b _0225F94C
_0225F906:
	ldr r1, _0225F960 ; =0x00000239
	cmp r3, r1
	bgt _0225F916
	bge _0225F936
	sub r1, #0x96
	cmp r3, r1
	beq _0225F92E
	b _0225F94C
_0225F916:
	add r1, #0x96
	cmp r3, r1
	beq _0225F93E
	b _0225F94C
_0225F91E:
	mov r1, #1
	sub r2, #0x30
	str r1, [r0, r2]
	b _0225F94C
_0225F926:
	mov r1, #2
	sub r2, #0x30
	str r1, [r0, r2]
	b _0225F94C
_0225F92E:
	mov r1, #3
	sub r2, #0x30
	str r1, [r0, r2]
	b _0225F94C
_0225F936:
	mov r1, #4
	sub r2, #0x30
	str r1, [r0, r2]
	b _0225F94C
_0225F93E:
	mov r1, #5
	sub r2, #0x30
	str r1, [r0, r2]
	b _0225F94C
_0225F946:
	mov r1, #0
	sub r2, #0x30
	str r1, [r0, r2]
_0225F94C:
	ldr r2, _0225F958 ; =0x00002B18
	ldr r3, _0225F964 ; =ov92_0225F968
	ldr r1, [r0, r2]
	sub r2, #0x2c
	add r2, r0, r2
	bx r3
	.balign 4, 0
_0225F958: .word 0x00002B18
_0225F95C: .word 0x0000010D
_0225F960: .word 0x00000239
_0225F964: .word ov92_0225F968
	thumb_func_end ov92_0225F8EC

	thumb_func_start ov92_0225F968
ov92_0225F968: ; 0x0225F968
	ldr r0, _0225F9B8 ; =0x00000257
	cmp r1, r0
	bgt _0225F980
	bge _0225F998
	cmp r1, #0
	bgt _0225F978
	beq _0225F9B0
	b _0225F9B4
_0225F978:
	lsr r0, r0, #1
	cmp r1, r0
	beq _0225F992
	b _0225F9B4
_0225F980:
	ldr r0, _0225F9BC ; =0x00000383
	cmp r1, r0
	bgt _0225F98A
	beq _0225F9A0
	b _0225F9B4
_0225F98A:
	ldr r0, _0225F9C0 ; =0x000004AF
	cmp r1, r0
	beq _0225F9A8
	b _0225F9B4
_0225F992:
	mov r0, #1
	str r0, [r2]
	bx lr
_0225F998:
	mov r0, #2
	str r0, [r2]
	mov r0, #1
	bx lr
_0225F9A0:
	mov r0, #3
	str r0, [r2]
	mov r0, #1
	bx lr
_0225F9A8:
	mov r0, #4
	str r0, [r2]
	mov r0, #1
	bx lr
_0225F9B0:
	mov r0, #0
	str r0, [r2]
_0225F9B4:
	mov r0, #0
	bx lr
	.balign 4, 0
_0225F9B8: .word 0x00000257
_0225F9BC: .word 0x00000383
_0225F9C0: .word 0x000004AF
	thumb_func_end ov92_0225F968

	thumb_func_start ov92_0225F9C4
ov92_0225F9C4: ; 0x0225F9C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0225FAA0
	ldr r0, _0225FAA4 ; =0x00002B08
	add r7, r5, #0
	add r0, r5, r0
	str r0, [sp]
	add r6, r5, #0
_0225F9DE:
	ldr r0, [r5]
	cmp r4, r0
	beq _0225FA8E
	ldr r0, _0225FAA8 ; =0x00002B9C
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0225F9F6
	cmp r0, #1
	beq _0225FA36
	cmp r0, #2
	beq _0225FA76
	b _0225FA8E
_0225F9F6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov92_0225DFA4
	cmp r0, #1
	beq _0225FA0C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov92_0225DF58
_0225FA0C:
	mov r1, #0x2b
	lsl r1, r1, #8
	ldrsh r1, [r6, r1]
	ldr r2, [sp]
	add r0, r5, #0
	bl ov92_0225F968
	cmp r0, #0
	beq _0225FA26
	add r0, r5, #0
	add r1, r4, #0
	bl ov92_0225EE04
_0225FA26:
	mov r0, #0x2b
	lsl r0, r0, #8
	ldrsh r0, [r6, r0]
	add r1, r0, #1
	mov r0, #0x2b
	lsl r0, r0, #8
	strh r1, [r6, r0]
	b _0225FA8E
_0225FA36:
	ldr r0, _0225FAAC ; =0x00002AFE
	mov r1, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r1, [r6, r0]
	ldr r0, _0225FAA4 ; =0x00002B08
	str r1, [r7, r0]
	ldr r0, _0225FAB0 ; =0x000021A4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov92_0225DFA4
	cmp r0, #3
	beq _0225FA8E
	ldr r0, _0225FAB4 ; =0x00002BB8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0225FA8E
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov92_0225DF58
	add r0, r5, #0
	add r1, r4, #0
	bl ov92_0225EDB4
	ldr r0, _0225FAB4 ; =0x00002BB8
	mov r1, #1
	str r1, [r5, r0]
	b _0225FA8E
_0225FA76:
	ldr r0, _0225FAB4 ; =0x00002BB8
	mov r1, #0
	str r1, [r5, r0]
	sub r0, #0xba
	strh r1, [r5, r0]
	mov r0, #0x2b
	lsl r0, r0, #8
	strh r1, [r6, r0]
	add r0, #8
	str r1, [r7, r0]
	ldr r0, _0225FAA8 ; =0x00002B9C
	str r1, [r7, r0]
_0225FA8E:
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r6, r6, #2
	cmp r4, r0
	blt _0225F9DE
_0225FAA0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FAA4: .word 0x00002B08
_0225FAA8: .word 0x00002B9C
_0225FAAC: .word 0x00002AFE
_0225FAB0: .word 0x000021A4
_0225FAB4: .word 0x00002BB8
	thumb_func_end ov92_0225F9C4

