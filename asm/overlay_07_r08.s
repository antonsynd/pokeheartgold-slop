	.include "macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221C01C
	.extern ov07_0221BE44
	.extern ov07_0221C3DC
	.extern ov07_0221C69C
	.extern ov07_02234C64

	.text

	.text
	thumb_func_start ov07_0221C01C
ov07_0221C01C: ; 0x0221C01C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl ov07_0221C69C
	add r0, r4, #0
	bl ov07_0221C3DC
	cmp r0, #0
	bne _0221C03C
	add sp, #0x6c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221C03C:
	mov r3, #0
	mov r2, #1
	add r1, r3, #0
_0221C042:
	add r0, r4, r3
	add r0, #0x6c
	strb r2, [r0]
	add r0, r4, r3
	add r0, #0x7c
	add r3, r3, #1
	strb r1, [r0]
	cmp r3, #0x10
	blt _0221C042
	add r3, r4, #0
	mov r0, #0
_0221C058:
	add r2, r3, #0
	add r2, #0x94
	add r1, r1, #1
	add r3, r3, #4
	str r0, [r2]
	cmp r1, #0xa
	blt _0221C058
	add r3, r4, #0
	mov r2, #0
_0221C06A:
	str r2, [r3, #0x30]
	add r1, r3, #0
	str r2, [r3, #0x28]
	add r1, #0x2c
	strb r2, [r1]
	add r1, r3, #0
	add r1, #0x2d
	add r0, r0, #1
	add r3, #0xc
	strb r2, [r1]
	cmp r0, #3
	blt _0221C06A
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r5]
	ldr r0, [r0]
	mov r3, #1
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #2]
	ldr r0, [r0]
	strh r1, [r0, #2]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r5, #4]
	ldr r0, [r0]
	str r1, [r0, #4]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #8]
	ldr r0, [r0]
	strh r1, [r0, #8]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #0xc]
	ldr r0, [r0]
	strh r1, [r0, #0xa]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r5, #0x10]
	ldr r0, [r0]
	str r1, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #0xa]
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r5, #0x54]
	ldr r0, [r0]
	strh r1, [r0, #0x12]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #0x14]
	ldr r0, [r0]
	strh r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r1, [r5, #0x16]
	ldr r0, [r0]
	strh r1, [r0, #0x16]
	add r0, r4, #0
	add r0, #0xc0
	ldr r2, [r0]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	bic r1, r3
	ldrh r3, [r5, #0xe]
	lsl r3, r3, #0x1e
	lsr r6, r3, #0x1f
	mov r3, #1
	and r3, r6
	orr r1, r3
	str r1, [r2, r0]
	add r1, r4, #0
	add r1, #0xc0
	ldr r2, [r1]
	mov r3, #2
	ldr r1, [r2, r0]
	bic r1, r3
	ldrh r3, [r5, #0xe]
	lsl r3, r3, #0x1d
	lsr r3, r3, #0x1f
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1e
	orr r1, r3
	str r1, [r2, r0]
	add r1, r4, #0
	add r1, #0xc0
	ldr r2, [r1]
	mov r3, #4
	ldr r1, [r2, r0]
	bic r1, r3
	ldrh r3, [r5, #0xe]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1f
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1d
	orr r1, r3
	str r1, [r2, r0]
	ldr r0, [sp, #4]
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, #0xac
	str r1, [r0]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0221C15C
	bl GF_AssertFail
_0221C15C:
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r1, [r0, #4]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0]
	ldr r0, [sp, #4]
	add r7, r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x30]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, #0xd4
	str r1, [r0]
	ldr r0, [sp, #4]
	add r1, r2, #0
	add r3, r0, #0
	mov ip, r3
_0221C18A:
	add r5, r4, #0
	add r5, #0xc0
	ldr r5, [r5]
	ldr r3, [r0, #0xc]
	add r5, r5, r1
	add r5, #0xb0
	str r3, [r5]
	ldr r3, [sp, #4]
	add r5, r4, #0
	add r5, #0xc0
	add r6, r3, r2
	ldr r5, [r5]
	ldrb r3, [r6, #0x1c]
	add r5, r5, r2
	add r5, #0xc0
	strb r3, [r5]
	add r5, r4, #0
	add r5, #0xc0
	ldr r5, [r5]
	ldr r3, [r0, #0x20]
	add r5, r5, r1
	add r5, #0xc4
	str r3, [r5]
	add r5, r4, #0
	add r5, #0xc0
	mov r3, ip
	ldr r5, [r5]
	ldrh r3, [r3, #0x34]
	add r5, r5, r7
	add r5, #0xd8
	strh r3, [r5]
	add r5, r4, #0
	add r3, r6, #0
	add r5, #0xc0
	add r3, #0x3c
	ldr r5, [r5]
	ldrb r3, [r3]
	add r5, r5, r2
	add r5, #0xe0
	strb r3, [r5]
	add r3, r6, #0
	add r5, r4, #0
	add r5, #0xc0
	add r3, #0x40
	ldr r5, [r5]
	ldrb r3, [r3]
	add r5, r5, r2
	add r5, #0xe4
	strb r3, [r5]
	add r5, r4, #0
	add r5, #0xc0
	add r6, #0x44
	ldr r5, [r5]
	ldrb r3, [r6]
	add r5, r5, r2
	add r5, #0xe8
	strb r3, [r5]
	add r5, r4, #0
	add r5, #0xc0
	ldr r5, [r5]
	ldr r3, [r0, #0x48]
	add r5, r5, r1
	add r5, #0xec
	str r3, [r5]
	add r5, r4, #0
	add r5, #0xc0
	ldr r5, [r5]
	ldr r3, [r0, #0x58]
	add r5, r5, r1
	add r5, #0xfc
	str r3, [r5]
	mov r3, ip
	add r3, r3, #2
	add r2, r2, #1
	add r0, r0, #4
	add r1, r1, #4
	add r7, r7, #2
	mov ip, r3
	cmp r2, #4
	blt _0221C18A
	ldr r5, [sp, #4]
	mov r2, #0x19
	lsl r2, r2, #4
	add r5, #0x6c
	add r3, r4, r2
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #4]
	add r0, #0x84
	ldr r3, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0]
	add r0, r2, #0
	sub r0, #0x84
	str r3, [r1, r0]
	ldr r0, [sp, #4]
	add r0, #0x8c
	ldr r3, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0]
	add r0, r2, #0
	sub r0, #0x7c
	str r3, [r1, r0]
	ldr r0, [sp, #4]
	add r0, #0x88
	ldr r3, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0]
	add r0, r2, #0
	sub r0, #0x80
	str r3, [r1, r0]
	ldr r0, [sp]
	sub r2, #0x6e
	cmp r0, r2
	bne _0221C2AA
	ldr r5, _0221C37C ; =ov07_02234C64
	add r3, sp, #8
	mov r2, #0xc
_0221C284:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221C284
	ldr r0, [r5]
	str r0, [r3]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldrh r0, [r0, #0x12]
	cmp r0, #0x18
	blo _0221C2A2
	mov r0, #0xa1
	str r0, [sp]
	b _0221C2AA
_0221C2A2:
	lsl r1, r0, #2
	add r0, sp, #8
	ldr r0, [r0, r1]
	str r0, [sp]
_0221C2AA:
	ldr r0, [sp]
	cmp r0, #0
	beq _0221C2B6
	ldr r1, _0221C380 ; =0x000001D3
	cmp r0, r1
	ble _0221C2BA
_0221C2B6:
	mov r0, #1
	str r0, [sp]
_0221C2BA:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x68]
	str r0, [r4, #4]
	ldr r1, [sp]
	ldr r2, [r4]
	bl AllocAndReadWholeNarcMemberByIdPair
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _0221C2DA
	bne _0221C2D4
	bl GF_AssertFail
_0221C2D4:
	add sp, #0x6c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221C2DA:
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #0
	bl GetBgPriority
	mov r1, #0x6b
	lsl r1, r1, #2
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #1
	bl GetBgPriority
	ldr r1, _0221C384 ; =0x000001AD
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #2
	bl GetBgPriority
	ldr r1, _0221C388 ; =0x000001AE
	strb r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #3
	bl GetBgPriority
	ldr r1, _0221C38C ; =0x000001AF
	mov r2, #0
	strb r0, [r4, r1]
	add r1, r4, #0
	add r5, r2, #0
_0221C324:
	add r0, r1, #0
	add r0, #0xdc
	add r2, r2, #1
	add r1, r1, #4
	str r5, [r0]
	cmp r2, #0xa
	blt _0221C324
	mov r0, #0x4f
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, #0
	mov r3, #0
	add r1, #0x14
_0221C33E:
	str r3, [r2, r0]
	str r3, [r2, r1]
	add r5, r5, #1
	add r2, r2, #4
	cmp r5, #5
	blt _0221C33E
	mov r0, #6
	add r1, r4, #0
	mov r2, #0
	lsl r0, r0, #6
_0221C352:
	add r3, r3, #1
	str r2, [r1, r0]
	add r1, r1, #4
	cmp r3, #4
	blt _0221C352
	add r0, r4, #0
	ldr r1, _0221C390 ; =ov07_0221BE44
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x8d
	mov r1, #0xff
	strb r2, [r0]
	add r0, r1, #0
	add r0, #0xa9
	str r1, [r4, r0]
	mov r0, #1
	str r0, [r4, #0x10]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_0221C37C: .word ov07_02234C64
_0221C380: .word 0x000001D3
_0221C384: .word 0x000001AD
_0221C388: .word 0x000001AE
_0221C38C: .word 0x000001AF
_0221C390: .word ov07_0221BE44
	thumb_func_end ov07_0221C01C

