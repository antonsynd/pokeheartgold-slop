	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221DAF4
	.public ov07_0221DCA8
	.public ov07_0221DCC0
	.public ov07_0221DCD4
	.public ov07_0221DCF0
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_0221D3CC
	.extern ov07_0221D55C
	.extern ov07_0221DAD0
	.extern ov07_0221FA48
	.extern ov07_0221FAB0
	.extern ov07_02231924

	.text

	.text
	thumb_func_start ov07_0221DAF4
ov07_0221DAF4: ; 0x0221DAF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r6, r5, #0
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1]
	add r6, #0x54
	str r0, [sp]
	add r0, r1, #4
	str r0, [r5, #0x18]
	ldr r2, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	lsl r4, r2, #4
	str r0, [sp, #8]
	add r0, #0x4c
	lsl r1, r1, #2
	str r0, [sp, #8]
	str r5, [r0, r4]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	add r2, r5, r4
	str r3, [r2, #0x50]
	add r1, r5, r1
	add r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	str r0, [r6, r4]
	mov r0, #1
	str r0, [r2, #0x58]
	ldr r0, [r6, r4]
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #0
	bl ov07_0221FAB0
	cmp r0, #1
	beq _0221DB50
	b _0221DC9E
_0221DB50:
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	add r0, r5, #0
	bl ov07_02231924
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov07_0221C470
	add r1, r0, #0
	add r0, r5, #0
	bl ov07_02231924
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl ov07_0221D3CC
	add r1, r0, #0
	add r0, r5, #0
	bl ov07_0221FA48
	cmp r0, #0
	beq _0221DB8C
	mov r1, #6
	bl Pokepic_GetAttr
	b _0221DB8E
_0221DB8C:
	mov r0, #0
_0221DB8E:
	cmp r0, #1
	ldr r0, [r6, r4]
	bne _0221DB9C
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _0221DBA2
_0221DB9C:
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_0221DBA2:
	ldr r0, [sp]
	cmp r0, #3
	bhi _0221DC90
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221DBB4: ; jump table
	.short _0221DBBC - _0221DBB4 - 2 ; case 0
	.short _0221DC0A - _0221DBB4 - 2 ; case 1
	.short _0221DBE2 - _0221DBB4 - 2 ; case 2
	.short _0221DC4E - _0221DBB4 - 2 ; case 3
_0221DBBC:
	ldr r0, [sp, #4]
	sub r0, r0, #3
	cmp r0, #1
	bhi _0221DBCE
	ldr r0, [r6, r4]
	mov r1, #1
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DBCE:
	add r5, #0x54
	ldr r0, [r5, r4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, r4]
	mov r1, #0xff
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DBE2:
	ldr r0, [sp, #4]
	cmp r0, #5
	beq _0221DBEC
	cmp r0, #2
	bne _0221DBF6
_0221DBEC:
	ldr r0, [r6, r4]
	mov r1, #1
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DBF6:
	add r5, #0x54
	ldr r0, [r5, r4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, r4]
	mov r1, #0xff
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DC0A:
	cmp r7, #5
	bhi _0221DC90
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221DC1A: ; jump table
	.short _0221DC90 - _0221DC1A - 2 ; case 0
	.short _0221DC90 - _0221DC1A - 2 ; case 1
	.short _0221DC26 - _0221DC1A - 2 ; case 2
	.short _0221DC30 - _0221DC1A - 2 ; case 3
	.short _0221DC3A - _0221DC1A - 2 ; case 4
	.short _0221DC44 - _0221DC1A - 2 ; case 5
_0221DC26:
	ldr r0, [r6, r4]
	mov r1, #0xff
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DC30:
	ldr r0, [r6, r4]
	mov r1, #1
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DC3A:
	ldr r0, [r6, r4]
	mov r1, #1
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DC44:
	ldr r0, [r6, r4]
	mov r1, #0xff
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DC4E:
	cmp r7, #5
	bhi _0221DC90
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221DC5E: ; jump table
	.short _0221DC90 - _0221DC5E - 2 ; case 0
	.short _0221DC90 - _0221DC5E - 2 ; case 1
	.short _0221DC6A - _0221DC5E - 2 ; case 2
	.short _0221DC74 - _0221DC5E - 2 ; case 3
	.short _0221DC7E - _0221DC5E - 2 ; case 4
	.short _0221DC88 - _0221DC5E - 2 ; case 5
_0221DC6A:
	ldr r0, [r6, r4]
	mov r1, #1
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DC74:
	ldr r0, [r6, r4]
	mov r1, #0xff
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DC7E:
	ldr r0, [r6, r4]
	mov r1, #0xff
	bl ManagedSprite_SetDrawPriority
	b _0221DC90
_0221DC88:
	ldr r0, [r6, r4]
	mov r1, #1
	bl ManagedSprite_SetDrawPriority
_0221DC90:
	ldr r1, [sp, #8]
	mov r2, #1
	ldr r0, _0221DCA4 ; =ov07_0221DAD0
	add r1, r1, r4
	lsl r2, r2, #0xc
	bl SysTask_CreateOnMainQueue
_0221DC9E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0221DCA4: .word ov07_0221DAD0
	thumb_func_end ov07_0221DAF4

	thumb_func_start ov07_0221DCA8
ov07_0221DCA8: ; 0x0221DCA8
	ldr r1, [r0, #0x18]
	mov r2, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1]
	add r1, r1, #4
	str r1, [r0, #0x18]
	lsl r1, r3, #4
	add r0, r0, r1
	str r2, [r0, #0x58]
	bx lr
	.balign 4, 0
	thumb_func_end ov07_0221DCA8

	thumb_func_start ov07_0221DCC0
ov07_0221DCC0: ; 0x0221DCC0
	ldr r1, [r0, #0x18]
	ldr r3, _0221DCD0 ; =ov07_0221D55C
	add r2, r1, #4
	str r2, [r0, #0x18]
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r0, #0x18]
	bx r3
	.balign 4, 0
_0221DCD0: .word ov07_0221D55C
	thumb_func_end ov07_0221DCC0

	thumb_func_start ov07_0221DCD4
ov07_0221DCD4: ; 0x0221DCD4
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1]
	add r1, r1, #4
	str r1, [r0, #0x18]
	add r0, r0, r3
	add r0, #0x6c
	strb r2, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov07_0221DCD4

	thumb_func_start ov07_0221DCF0
ov07_0221DCF0: ; 0x0221DCF0
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1]
	add r1, r1, #4
	str r1, [r0, #0x18]
	add r0, r0, r3
	add r0, #0x7c
	strb r2, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov07_0221DCF0

