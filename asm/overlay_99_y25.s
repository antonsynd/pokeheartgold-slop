	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6638
	.public ov99_021E677C
	.public ov99_021E6840
	.public ov99_021E6888
	.public ov99_021E6938
	.public ov99_021E695C
	.extern _021EA5CC
	.extern ov99_021E64E0
	.extern ov99_021E69D8
	.extern ov99_021E6A70
	.extern ov99_021E6A9C
	.extern ov99_021E6D34
	.extern ov99_021E6FD0
	.extern ov99_021E7060
	.extern ov99_021E9574
	.extern ov99_021E9576
	.extern ov99_021E95BC
	.extern ov99_021E9D88
	.extern ov99_021E9D9C
	.extern ov99_021E9DEC
	.extern ov99_021E9E60
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

	thumb_func_start ov99_021E6840
ov99_021E6840: ; 0x021E6840
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4]
	bl ov99_021E7060
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x18
	mov r2, #0x43
	bl ov98_0221E684
	ldr r0, [r4, #0x10]
	mov r1, #0xf
	bl ov98_0221EB84
	add r0, r4, #0
	bl ov99_021E6A70
	bl ov98_0221F0EC
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x84
	bl Heap_Destroy
	ldr r0, _021E6884 ; =FS_OVERLAY_ID(OVY_98)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6884: .word FS_OVERLAY_ID(OVY_98)
	thumb_func_end ov99_021E6840

	thumb_func_start ov99_021E6888
ov99_021E6888: ; 0x021E6888
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl OverlayManager_GetData
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _021E691A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E68A6: ; jump table
	.short _021E68B0 - _021E68A6 - 2 ; case 0
	.short _021E68CC - _021E68A6 - 2 ; case 1
	.short _021E68DA - _021E68A6 - 2 ; case 2
	.short _021E6906 - _021E68A6 - 2 ; case 3
	.short _021E6914 - _021E68A6 - 2 ; case 4
_021E68B0:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r4]
	b _021E6924
_021E68CC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E6924
	mov r0, #2
	str r0, [r4]
	b _021E6924
_021E68DA:
	bl ov98_0221EF24
	cmp r0, #0
	beq _021E6924
	ldr r0, _021E6930 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #3
	str r0, [r4]
	b _021E6924
_021E6906:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E6924
	mov r0, #4
	str r0, [r4]
	b _021E6924
_021E6914:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E691A:
	ldr r0, _021E6934 ; =_021EA5CC
	cmp r0, #0
	beq _021E6924
	bl GF_AssertFail
_021E6924:
	ldr r0, [r5, #0x14]
	bl ov98_0221E6CC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E6930: .word 0x000005DC
_021E6934: .word _021EA5CC
	thumb_func_end ov99_021E6888

	thumb_func_start ov99_021E6938
ov99_021E6938: ; 0x021E6938
	push {r4, lr}
	add r4, r0, #0
	bl SpriteSystem_TransferOam
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E6954 ; =0x027E0000
	ldr r1, _021E6958 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E6954: .word 0x027E0000
_021E6958: .word 0x00003FF8
	thumb_func_end ov99_021E6938

	thumb_func_start ov99_021E695C
ov99_021E695C: ; 0x021E695C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl BgConfig_Alloc
	add r3, sp, #0
	ldr r4, _021E69CC ; =ov99_021E9D9C
	str r0, [r5, #4]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021E69D0 ; =ov99_021E9E60
	add r3, sp, #0x10
	mov r2, #0xe
_021E6984:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6984
	ldr r4, _021E69D4 ; =ov99_021E9D88
	mov r7, #0
	add r6, sp, #0x10
_021E6992:
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	bl BgClearTilemapBufferAndCommit
	ldrb r0, [r4]
	ldr r3, [r5, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add r7, r7, #1
	add r6, #0x1c
	add r4, r4, #1
	cmp r7, #4
	blt _021E6992
	ldr r1, [r5, #0xc]
	mov r0, #0xb1
	bl NARC_New
	str r0, [r5, #8]
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E69CC: .word ov99_021E9D9C
_021E69D0: .word ov99_021E9E60
_021E69D4: .word ov99_021E9D88
	thumb_func_end ov99_021E695C

