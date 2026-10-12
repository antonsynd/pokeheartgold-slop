	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8D88
	.public ov99_021E8EBC
	.public ov99_021E8F50
	.public ov99_021E8FEC
	.extern ov99_021E8518
	.extern ov99_021E86D4
	.extern ov99_021E9464
	.extern ov99_021E94CC
	.extern ov99_021EA394

	.text

	.text
	thumb_func_start ov99_021E8D88
ov99_021E8D88: ; 0x021E8D88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r0, #0
	mov r0, #0
	add r2, sp, #0x2c
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [sp, #0x20]
	str r0, [r2]
	str r0, [sp, #0x18]
	mov r0, #0x48
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x10]
_021E8DAE:
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r7, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x24]
_021E8DCC:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	mov r2, #0x18
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021E8EB8 ; =ov99_021EA394
	add r1, sp, #0x40
	bl MI_CpuCopy8
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	add r0, sp, #0x2c
	strh r1, [r0]
	ldr r1, [sp, #0x24]
	strh r1, [r0, #2]
	mov r0, #0
	str r0, [sp, #0x34]
	mov r1, #0x10
	add r0, sp, #0x2c
	strh r1, [r0, #6]
	add r0, r4, #0
	add r0, #0xc
	lsl r0, r0, #2
	add r6, r5, r0
	ldr r0, [r5, #0x14]
	add r1, sp, #0x2c
	bl ov98_0221E6E0
	str r0, [r6, #0x18]
	lsl r0, r4, #2
	str r0, [sp, #0x28]
	add r0, r5, r0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _021E8E1C
	mov r1, #1
	b _021E8E1E
_021E8E1C:
	mov r1, #0
_021E8E1E:
	ldr r0, [r6, #0x18]
	bl ManagedSprite_SetDrawFlag
	mov r0, #1
	str r0, [sp, #0x34]
	mov r1, #4
	add r0, sp, #0x2c
	strh r1, [r0, #6]
	add r0, r4, #2
	lsl r0, r0, #2
	add r6, r5, r0
	ldr r0, [r5, #0x14]
	add r1, sp, #0x2c
	bl ov98_0221E6E0
	lsl r1, r4, #0x18
	str r0, [r6, #0x18]
	add r0, r5, #0
	asr r1, r1, #0x18
	mov r2, #1
	bl ov99_021E8518
	add r1, r0, #0
	ldr r0, [r6, #0x18]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r6, #0x18]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [sp, #0x28]
	add r0, r5, r0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _021E8E6A
	mov r0, #1
	b _021E8E6C
_021E8E6A:
	mov r0, #0
_021E8E6C:
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r2, r7, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	asr r2, r2, #0x10
	bl ov99_021E86D4
	ldr r0, [sp, #0xc]
	add r7, r7, #6
	add r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #5
	blo _021E8DCC
	ldr r0, [sp, #0x18]
	add r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x40
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #2
	bhs _021E8EB4
	b _021E8DAE
_021E8EB4:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8EB8: .word ov99_021EA394
	thumb_func_end ov99_021E8D88

	thumb_func_start ov99_021E8EBC
ov99_021E8EBC: ; 0x021E8EBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r6, r0, #0
	mov r0, #0
	add r2, sp, #0x14
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [sp, #0xc]
	str r0, [r2]
	str r0, [sp, #8]
	str r0, [sp, #4]
	mov r0, #0x2c
	str r0, [sp]
_021E8EE0:
	ldr r0, [sp]
	mov r4, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r5, #0x3c
	str r0, [sp, #0x10]
_021E8EEC:
	ldr r0, [sp, #8]
	add r0, r4, r0
	add r1, r0, #2
	str r1, [sp, #0x28]
	mov r1, #2
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	str r1, [sp, #0x24]
	ldr r1, [sp, #4]
	add r0, #0x16
	add r2, r5, r1
	add r1, sp, #0x14
	strh r2, [r1]
	ldr r2, [sp, #0x10]
	lsl r0, r0, #2
	strh r2, [r1, #2]
	mov r1, #3
	sub r1, r1, r4
	str r1, [sp, #0x1c]
	add r7, r6, r0
	ldr r0, [r6, #0x14]
	add r1, sp, #0x14
	bl ov98_0221E6E0
	mov r1, #1
	str r0, [r7, #0x18]
	bl ManagedSprite_SetAnimateFlag
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #3
	blo _021E8EEC
	ldr r0, [sp, #8]
	add r0, r0, #3
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	blo _021E8EE0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov99_021E8EBC

	thumb_func_start ov99_021E8F50
ov99_021E8F50: ; 0x021E8F50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r7, #0
	add r5, r0, #0
	str r7, [sp, #8]
_021E8F5A:
	mov r1, #0xac
	add r3, r5, #0
	add r3, #0xb0
	lsl r2, r7, #0x18
	ldrsb r1, [r5, r1]
	ldr r0, [r5]
	ldr r3, [r3]
	lsr r2, r2, #0x18
	bl ov99_021E94CC
	ldr r1, _021E8FE8 ; =0x0000FFFF
	cmp r0, r1
	beq _021E8FD6
	mov r4, #0
_021E8F76:
	mov r1, #0
	add r0, sp, #0xc
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #8]
	str r4, [sp]
	add r6, r4, r0
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	mov r2, #0xac
	str r0, [sp, #4]
	ldrsb r2, [r5, r2]
	ldr r0, [r5]
	add r1, sp, #0xc
	add r3, r7, #0
	add r6, #0x16
	bl ov99_021E9464
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	beq _021E8FD0
	lsl r0, r6, #2
	add r6, r5, r0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, [r6, #0x18]
	add r2, sp, #0xc
	mov r3, #0
	bl ov98_0221E970
	ldr r0, [r6, #0x18]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	cmp r7, #0
	bne _021E8FD0
	mov r1, #6
	ldr r0, [r6, #0x18]
	lsl r1, r1, #0xa
	bl ManagedSprite_SetAnimSpeed
_021E8FD0:
	add r4, r4, #1
	cmp r4, #3
	blt _021E8F76
_021E8FD6:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #3
	str r0, [sp, #8]
	cmp r7, #5
	blt _021E8F5A
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8FE8: .word 0x0000FFFF
	thumb_func_end ov99_021E8F50

	thumb_func_start ov99_021E8FEC
ov99_021E8FEC: ; 0x021E8FEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	str r0, [sp]
	add r7, r1, #0
	str r4, [sp, #4]
_021E8FF8:
	ldr r0, [sp]
	lsl r1, r4, #2
	mov r6, #0
	add r5, r0, r1
_021E9000:
	ldr r0, [r5, #0x70]
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021E9000
	ldr r0, [sp, #4]
	add r4, r4, #3
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021E8FF8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov99_021E8FEC

