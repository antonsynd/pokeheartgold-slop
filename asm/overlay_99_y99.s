	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8D88
	.public ov99_021E8EBC
	.public ov99_021E8F50
	.public ov99_021E8FEC
	.public ov99_021E9020
	.public ov99_021E9038
	.public ov99_021E90F4
	.public ov99_021E92EC
	.extern ov99_021E8518
	.extern ov99_021E86D4
	.extern ov99_021E9464
	.extern ov99_021E94CC
	.extern ov99_021EA350
	.extern ov99_021EA394
	.extern ov99_021EA3C4

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

	thumb_func_start ov99_021E9020
ov99_021E9020: ; 0x021E9020
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E9026:
	add r1, r4, #0
	ldr r0, [r5, #0x10]
	add r1, #0xc
	bl ov98_0221EE84
	add r4, r4, #1
	cmp r4, #5
	blt _021E9026
	pop {r3, r4, r5, pc}
	thumb_func_end ov99_021E9020

	thumb_func_start ov99_021E9038
ov99_021E9038: ; 0x021E9038
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0xc]
_021E9048:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	mov r7, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
_021E905A:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021E9072
	mov r6, #1
	b _021E9084
_021E9072:
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xbc
	ldr r1, [r1]
	cmp r1, #0
	bne _021E9082
	mov r6, #1
	b _021E9084
_021E9082:
	mov r6, #0
_021E9084:
	add r2, r4, #0
	add r2, #0xc
	cmp r0, #0
	beq _021E9090
	mov r1, #0
	b _021E9092
_021E9090:
	add r1, r6, #0
_021E9092:
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetDrawFlag
	lsl r1, r4, #0x18
	add r0, r5, #0
	asr r1, r1, #0x18
	mov r2, #1
	bl ov99_021E8518
	add r1, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	bl ManagedSprite_SetDrawFlag
	lsl r2, r7, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	asr r2, r2, #0x10
	bl ov99_021E86D4
	ldr r0, [sp, #0x14]
	add r7, r7, #6
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #5
	blo _021E905A
	ldr r0, [sp, #0x10]
	add r0, r0, #5
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #2
	blo _021E9048
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov99_021E9038

	thumb_func_start ov99_021E90F4
ov99_021E90F4: ; 0x021E90F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xac
	ldrsb r4, [r5, r0]
	ldr r0, _021E92DC ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _021E9154
	ldr r0, _021E92E0 ; =ov99_021EA3C4
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E9114
	b _021E923A
_021E9114:
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	strb r1, [r0]
	ldr r0, [r5, #0x18]
	mov r1, #0xb
	bl ManagedSprite_SetAnim
	ldr r0, _021E92E4 ; =0x000005DC
	bl PlaySE
	mov r0, #0xac
	ldrsb r1, [r5, r0]
	sub r0, #0xad
	cmp r1, r0
	bne _021E914A
	add r0, r5, #0
	mov r1, #1
	add r0, #0xb4
	str r1, [r0]
	ldr r0, [r5, #0x18]
	mov r1, #0xd
	bl ManagedSprite_SetAnim
	ldr r0, _021E92E4 ; =0x000005DC
	bl PlaySE
_021E914A:
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	b _021E923A
_021E9154:
	ldr r0, _021E92E8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	beq _021E9176
	cmp r4, #0xa
	bne _021E9164
	b _021E92D8
_021E9164:
	sub r1, r0, #2
	cmp r4, r1
	bne _021E9176
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1]
	ldr r0, _021E92E4 ; =0x000005DC
	bl PlaySE
_021E9176:
	mov r0, #0xac
	ldrsb r1, [r5, r0]
	sub r0, #0xad
	cmp r1, r0
	bne _021E9196
	ldr r0, _021E92E8 ; =gSystem
	ldr r1, [r0, #0x40]
	mov r0, #0x80
	tst r0, r1
	beq _021E923A
	mov r0, #0xad
	ldrsb r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xac
	strb r1, [r0]
	b _021E923A
_021E9196:
	cmp r1, #0xa
	bne _021E91B2
	ldr r0, _021E92E8 ; =gSystem
	ldr r1, [r0, #0x40]
	mov r0, #0x40
	tst r0, r1
	beq _021E923A
	mov r0, #0xad
	ldrsb r0, [r5, r0]
	add r1, r0, #5
	add r0, r5, #0
	add r0, #0xac
	strb r1, [r0]
	b _021E923A
_021E91B2:
	ldr r0, _021E92E8 ; =gSystem
	mov r2, #0x10
	ldr r0, [r0, #0x40]
	tst r2, r0
	beq _021E91C6
	add r0, r5, #0
	add r1, r1, #1
	add r0, #0xac
	strb r1, [r0]
	b _021E9202
_021E91C6:
	mov r2, #0x20
	tst r2, r0
	beq _021E91D6
	add r0, r5, #0
	sub r1, r1, #1
	add r0, #0xac
	strb r1, [r0]
	b _021E9202
_021E91D6:
	mov r2, #0x80
	tst r2, r0
	beq _021E91E6
	add r0, r5, #0
	add r1, r1, #5
	add r0, #0xac
	strb r1, [r0]
	b _021E9202
_021E91E6:
	mov r2, #0x40
	tst r0, r2
	beq _021E9202
	cmp r1, #0xa
	bne _021E91F4
	mov r1, #1
	b _021E91F6
_021E91F4:
	mov r1, #5
_021E91F6:
	mov r0, #0xac
	ldrsb r0, [r5, r0]
	sub r1, r0, r1
	add r0, r5, #0
	add r0, #0xac
	strb r1, [r0]
_021E9202:
	mov r1, #0xac
	ldrsb r2, [r5, r1]
	cmp r2, #0xa
	ble _021E920E
	mov r2, #0xa
	b _021E921A
_021E920E:
	add r0, r1, #0
	sub r0, #0xad
	cmp r2, r0
	bge _021E921A
	add r2, r1, #0
	sub r2, #0xad
_021E921A:
	add r0, r5, #0
	add r0, #0xac
	mov r1, #0xac
	strb r2, [r0]
	ldrsb r0, [r5, r1]
	sub r1, #0xad
	cmp r0, r1
	beq _021E923A
	cmp r0, #0xa
	beq _021E923A
	mov r1, #5
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0xad
	strb r1, [r0]
_021E923A:
	mov r0, #0xac
	ldrsb r0, [r5, r0]
	cmp r4, r0
	beq _021E92D6
	ldr r0, _021E92E4 ; =0x000005DC
	bl PlaySE
	mov r0, #0xac
	ldrsb r1, [r5, r0]
	sub r0, #0xad
	cmp r1, r0
	bne _021E9266
	ldr r0, [r5, #0x18]
	mov r1, #0xe0
	mov r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x18]
	mov r1, #0xc
	bl ManagedSprite_SetAnim
	b _021E92D6
_021E9266:
	cmp r1, #0xa
	bne _021E927E
	ldr r0, [r5, #0x18]
	mov r1, #0xe0
	mov r2, #0xb0
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x18]
	mov r1, #0xc
	bl ManagedSprite_SetAnim
	b _021E92D6
_021E927E:
	cmp r1, #5
	blt _021E9286
	mov r2, #1
	b _021E9288
_021E9286:
	mov r2, #0
_021E9288:
	cmp r2, #0
	beq _021E9292
	sub r0, r1, #5
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
_021E9292:
	mov r3, #0x30
	mul r3, r1
	lsl r2, r2, #6
	add r3, #0x20
	add r2, #0x48
	lsl r1, r3, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x18]
	bl ManagedSprite_GetActiveAnim
	cmp r0, #0xb
	beq _021E92BC
	ldr r0, [r5, #0x18]
	mov r1, #0xa
	bl ManagedSprite_SetAnim
_021E92BC:
	cmp r4, #0xa
	bne _021E92C8
	mov r0, #0xac
	ldrsb r0, [r5, r0]
	cmp r0, #9
	beq _021E92D6
_021E92C8:
	add r0, r5, #0
	mov r1, #0
	bl ov99_021E8FEC
	mov r0, #1
	add r5, #0xb8
	str r0, [r5]
_021E92D6:
	mov r0, #0
_021E92D8:
	pop {r3, r4, r5, pc}
	nop
_021E92DC: .word gSystem + 0x40
_021E92E0: .word ov99_021EA3C4
_021E92E4: .word 0x000005DC
_021E92E8: .word gSystem
	thumb_func_end ov99_021E90F4

	thumb_func_start ov99_021E92EC
ov99_021E92EC: ; 0x021E92EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	str r2, [sp, #8]
	add r1, r2, #0
	mov r2, #0x6e
	lsl r2, r2, #2
	bl MI_CpuCopy8
	ldr r1, _021E93D8 ; =ov99_021EA350
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r1, #4]
	add r0, sp, #0x20
	strh r2, [r0]
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #8]
	strh r2, [r0, #2]
	strh r1, [r0, #4]
_021E9316:
	ldr r0, [sp, #0xc]
	mov r6, #0
	lsl r0, r0, #0x18
	ldr r4, [sp, #4]
	lsr r5, r0, #0x18
	add r7, r6, #0
_021E9322:
	ldrh r2, [r4]
	add r0, r5, #0
	add r1, r7, #0
	bl ov98_0221EFB4
	cmp r0, #0
	beq _021E9338
	add r6, r6, #1
	add r4, #8
	cmp r6, #5
	blt _021E9322
_021E9338:
	cmp r6, #0
	bne _021E9344
	ldr r0, [sp]
	mov r1, #1
	add r0, #0xbc
	str r1, [r0]
_021E9344:
	add r0, sp, #0x20
	ldrh r0, [r0]
	ldr r4, [sp, #8]
	ldr r5, [sp, #4]
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	ldrh r0, [r0, #2]
	mov r7, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
_021E9364:
	cmp r7, r6
	bne _021E938E
	ldr r1, [sp, #0x10]
	add r0, sp, #0x20
	strh r1, [r0, #6]
	ldr r1, [sp, #0x14]
	mov r2, #6
	strh r1, [r0, #8]
	ldr r1, [sp, #0x18]
	strh r1, [r0, #0xa]
	add r0, sp, #0x24
	add r0, #2
	add r1, r4, #2
	bl MI_CpuCopy8
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl ov98_0221EFA4
	strh r0, [r4]
	b _021E93AC
_021E938E:
	cmp r7, r6
	ble _021E93AC
	add r0, r5, #0
	sub r0, #8
	ldrh r0, [r0]
	strh r0, [r4]
	sub r0, r5, #6
	ldrh r0, [r0]
	strh r0, [r4, #2]
	sub r0, r5, #4
	ldrh r0, [r0]
	strh r0, [r4, #4]
	sub r0, r5, #2
	ldrh r0, [r0]
	strh r0, [r4, #6]
_021E93AC:
	add r7, r7, #1
	add r4, #8
	add r5, #8
	cmp r7, #5
	blt _021E9364
	ldr r0, [sp, #4]
	add r0, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, #0x2c
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0xa
	blt _021E9316
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021E93D8: .word ov99_021EA350
	thumb_func_end ov99_021E92EC

