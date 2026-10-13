	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E90F4
	.extern ov99_021E8FEC
	.extern ov99_021EA3C4

	.text

	.text
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

