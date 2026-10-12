	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6638
	.public ov99_021E677C
	.extern ov99_021E64E0
	.extern ov99_021E6938
	.extern ov99_021E695C
	.extern ov99_021E69D8
	.extern ov99_021E6A9C
	.extern ov99_021E6D34
	.extern ov99_021E6FD0
	.extern ov99_021E9574
	.extern ov99_021E9576
	.extern ov99_021E95BC
	.extern ov99_021E9DEC
	.extern ov99_021E9ED0

	.text

	.text
	thumb_func_start ov99_021E6638
ov99_021E6638: ; 0x021E6638
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021E6764 ; =gSystem
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	add r4, r5, #0
	mov r0, #0x80
	ldr r1, [r2, #0x48]
	mov r3, #2
	add r4, #0x80
	ldrsb r6, [r5, r0]
	tst r3, r1
	beq _021E6656
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6656:
	ldr r3, _021E6768 ; =gSystem + 0x40
	ldrh r3, [r3, #0x24]
	cmp r3, #0
	beq _021E669E
	ldr r0, _021E676C ; =ov99_021E95BC
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021E66EE
	cmp r7, #5
	bne _021E6678
	mov r0, #1
	str r0, [sp]
	b _021E669A
_021E6678:
	mov r1, #0
	ldrsb r0, [r4, r1]
	cmp r0, r7
	bge _021E6682
	mov r1, #1
_021E6682:
	str r1, [r4, #4]
	ldr r0, [r5, #0x18]
	mov r1, #9
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	ldr r0, _021E6770 ; =0x000005DC
	bl PlaySE
_021E669A:
	strb r7, [r4]
	b _021E66EE
_021E669E:
	ldr r2, [r2, #0x4c]
	mov r3, #0x10
	tst r3, r2
	bne _021E66AA
	tst r0, r2
	beq _021E66C2
_021E66AA:
	cmp r6, #5
	bge _021E66EE
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, _021E6770 ; =0x000005DC
	bl PlaySE
	b _021E66EE
_021E66C2:
	mov r0, #0x20
	tst r0, r2
	bne _021E66CE
	mov r0, #0x40
	tst r0, r2
	beq _021E66E4
_021E66CE:
	cmp r6, #0
	ble _021E66EE
	mov r0, #0
	ldrsb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4]
	str r0, [r4, #4]
	ldr r0, _021E6770 ; =0x000005DC
	bl PlaySE
	b _021E66EE
_021E66E4:
	mov r0, #1
	tst r1, r0
	beq _021E66EE
	cmp r6, #5
	beq _021E6760
_021E66EE:
	mov r0, #0
	ldrsb r1, [r4, r0]
	cmp r1, #5
	ble _021E66FA
	mov r1, #5
	b _021E6700
_021E66FA:
	cmp r1, #0
	bge _021E6700
	add r1, r0, #0
_021E6700:
	strb r1, [r4]
	mov r1, #0
	add r0, r5, #0
	ldrsb r2, [r4, r1]
	add r0, #0x88
	str r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r6, r0
	beq _021E675E
	ldr r1, _021E6774 ; =ov99_021E9574
	lsl r2, r0, #2
	ldr r3, _021E6778 ; =ov99_021E9576
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, #0x18]
	bl ManagedSprite_SetPositionXY
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	ldr r0, [r5, #0x18]
	bne _021E6734
	mov r1, #0xc
	bl ManagedSprite_SetAnim
	b _021E675E
_021E6734:
	bl ManagedSprite_GetActiveAnim
	cmp r0, #9
	beq _021E6744
	ldr r0, [r5, #0x18]
	mov r1, #8
	bl ManagedSprite_SetAnim
_021E6744:
	cmp r6, #5
	bne _021E6750
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #4
	beq _021E675E
_021E6750:
	add r0, r5, #0
	mov r1, #0
	bl ov99_021E64E0
	mov r0, #1
	add r5, #0x90
	str r0, [r5]
_021E675E:
	ldr r0, [sp]
_021E6760:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6764: .word gSystem
_021E6768: .word gSystem + 0x40
_021E676C: .word ov99_021E95BC
_021E6770: .word 0x000005DC
_021E6774: .word ov99_021E9574
_021E6778: .word ov99_021E9576
	thumb_func_end ov99_021E6638

	thumb_func_start ov99_021E677C
ov99_021E677C: ; 0x021E677C
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _021E682C ; =FS_OVERLAY_ID(OVY_98)
	mov r1, #2
	bl HandleLoadOverlay
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	bne _021E6798
	bl GF_AssertFail
_021E6798:
	mov r0, #3
	mov r1, #0x84
	lsl r2, r0, #0x10
	bl Heap_Create
	mov r1, #0x49
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x84
	bl OverlayManager_CreateAndGetData
	mov r2, #0x49
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x84
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	bl ov99_021E6FD0
	bl ov98_0221F090
	add r0, r4, #0
	bl ov99_021E695C
	add r0, r4, #0
	bl ov99_021E69D8
	ldr r0, _021E6830 ; =0x0000013A
	ldr r3, _021E6834 ; =ov99_021E9ED0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	mov r2, #0xf
	bl ov98_0221EABC
	add r3, sp, #4
	ldr r5, _021E6838 ; =ov99_021E9DEC
	str r0, [r4, #0x10]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	ldr r0, [r4, #0xc]
	mov r2, #0x43
	bl ov98_0221E5E0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov99_021E6A9C
	add r0, r4, #0
	bl ov99_021E6D34
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	ldr r0, _021E683C ; =ov99_021E6938
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_021E682C: .word FS_OVERLAY_ID(OVY_98)
_021E6830: .word 0x0000013A
_021E6834: .word ov99_021E9ED0
_021E6838: .word ov99_021E9DEC
_021E683C: .word ov99_021E6938
	thumb_func_end ov99_021E677C

