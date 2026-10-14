	.include "macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6C30
	.extern ov99_021E9DBC
	.extern ov99_021E9DD4

	.text

	.text
	thumb_func_start ov99_021E6C30
ov99_021E6C30: ; 0x021E6C30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp]
	ldr r0, [sp, #0x64]
	add r5, r2, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x6c]
	str r1, [sp, #4]
	str r0, [sp, #0x6c]
	mov r0, #0
	add r2, sp, #0x14
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	ldr r0, [sp, #4]
	add r7, r3, #0
	bl ov98_0221F150
	mov r4, #0
	cmp r7, #0
	bls _021E6CE6
	add r1, sp, #0x50
	ldrb r2, [r1, #0x18]
	sub r0, r7, r0
	lsl r3, r5, #2
	str r2, [sp, #8]
	ldr r2, [sp]
	add r6, r4, #0
	add r5, r2, r3
	mov r2, #0x10
	ldrsh r1, [r1, r2]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
_021E6C7C:
	sub r1, r7, r4
	lsl r1, r1, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov98_0221F120
	add r1, sp, #0x14
	strh r0, [r1, #6]
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	beq _021E6C96
	ldr r0, _021E6CEC ; =ov99_021E9DBC
	b _021E6C98
_021E6C96:
	ldr r0, _021E6CF0 ; =ov99_021E9DD4
_021E6C98:
	add r1, sp, #0x28
	mov r2, #0x18
	bl MI_CpuCopy8
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	beq _021E6CAA
	mov r0, #1
	b _021E6CAC
_021E6CAA:
	mov r0, #2
_021E6CAC:
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	add r1, r0, r6
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x64]
	strh r1, [r0, #2]
	ldr r0, [sp]
	add r1, sp, #0x14
	ldr r0, [r0, #0x14]
	bl ov98_0221E6E0
	mov r1, #1
	str r0, [r5, #0x18]
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [sp, #0xc]
	cmp r0, r4
	bls _021E6CDA
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_021E6CDA:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, r6, r0
	add r5, r5, #4
	cmp r4, r7
	blo _021E6C7C
_021E6CE6:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6CEC: .word ov99_021E9DBC
_021E6CF0: .word ov99_021E9DD4
	thumb_func_end ov99_021E6C30

