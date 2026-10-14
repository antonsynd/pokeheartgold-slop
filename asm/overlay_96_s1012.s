	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220B9A8
	.extern ov96_021E5F24
	.extern ov96_0220C54C
	.extern ov96_0220C578
	.extern ov96_0220C90C

	.text

	.extern PokeathlonCourse_RunSubStateLoop
	.extern PokeathlonCourse_InitStateInfo
	.extern PokeathlonCourse_InitPlayerProfiles
	.extern PokeathlonCourse_GetPlayerProfile
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern PokeathlonCourse_GetSaveData
	.extern PokeathlonCourse_GetFieldData
	.extern PokeathlonCourse_GetFieldData_AtIndex
	.extern PokeathlonCourse_GetFieldBA4
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_FreePtr4HeapAlloc
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_SetField1ED
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern ov96_021E5E04
	.extern PokeathlonCourse_GetField3D8_ForCurrentParticipant
	.extern PokeathlonCourse_GetField3D8_AtIndex
	.extern ov96_021E5E7C
	.extern PokeathlonCourse_GetCurrentParticipantIndex
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetField1EF
	.extern PokeathlonCourse_IncrementField1EF
	.extern PokeathlonCourse_ResetField1EF
	.extern PokeathlonCourse_GetSystem
	.extern ov96_021E5F24
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern PokeathlonCourse_GetField974_AtIndex
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_ResetDataCopyArea
	.extern PokeathlonCourse_SetField3A4
	.extern PokeathlonCourse_ResetField3A4
	.extern PokeathlonCourse_GetField3A4
	.extern PokeathlonCourse_GetUnkConstant4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_GetField5F0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateField07_IfDifferent
	.extern PokeathlonCourse_SetStateTransitionType
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern PokeathlonCourse_GetGraphicsSystem

	.text
	thumb_func_start ov96_0220B9A8
ov96_0220B9A8: ; 0x0220B9A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0x44]
	lsl r2, r1, #0x10
	lsr r2, r2, #0x1a
	cmp r2, #6
	bls _0220B9BA
	b _0220BD1A
_0220B9BA:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0220B9C6: ; jump table
	.short _0220B9D4 - _0220B9C6 - 2 ; case 0
	.short _0220BA02 - _0220B9C6 - 2 ; case 1
	.short _0220BA68 - _0220B9C6 - 2 ; case 2
	.short _0220BB4E - _0220B9C6 - 2 ; case 3
	.short _0220BC2E - _0220B9C6 - 2 ; case 4
	.short _0220BCB0 - _0220B9C6 - 2 ; case 5
	.short _0220BD10 - _0220B9C6 - 2 ; case 6
_0220B9D4:
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, _0220BD24 ; =0x000008B4
	bl PlaySE
	ldr r1, [r4, #0x44]
	ldr r0, _0220BD28 ; =0xFFFF03FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1a
	add r0, r0, #1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x10
	orr r0, r2
	add sp, #0x10
	str r0, [r4, #0x44]
	pop {r4, r5, r6, pc}
_0220BA02:
	ldr r0, _0220BD2C ; =0x00FFFFFF
	add r2, r1, #0
	and r2, r0
	lsr r0, r1, #0x18
	add r0, r0, #1
	lsl r0, r0, #0x18
	orr r0, r2
	str r0, [r4, #0x44]
	lsr r0, r0, #0x18
	cmp r0, #2
	bhs _0220BA1A
	b _0220BD1E
_0220BA1A:
	ldr r0, [r4, #0x20]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r1, [r4, #0x44]
	ldr r0, _0220BD2C ; =0x00FFFFFF
	add r2, r1, #0
	and r2, r0
	ldr r0, _0220BD28 ; =0xFFFF03FF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #0x10
	lsr r0, r0, #0x1a
	add r0, r0, #1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x10
	orr r0, r1
	add sp, #0x10
	str r0, [r4, #0x44]
	pop {r4, r5, r6, pc}
_0220BA68:
	add r1, sp, #0xc
	ldr r0, [r4, #0x20]
	add r1, #2
	add r2, sp, #0xc
	bl ManagedSprite_GetPositionXY
	mov r3, #8
	add r1, sp, #4
	add r0, r3, #0
	ldrsh r5, [r1, r3]
	sub r0, #0x48
	sub r2, r0, r5
	asr r0, r2, #1
	lsr r0, r0, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0xe
	asr r2, r0, #0x10
	add r0, r3, #0
	sub r0, #0x3c
	cmp r5, r0
	ble _0220BA96
	cmp r2, #0
	bne _0220BAF0
_0220BA96:
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	bpl _0220BAA6
	mov r5, #2
_0220BAA6:
	ldr r0, [r4, #0xc]
	bl ov96_021E5F24
	add r2, r0, #0
	mov r0, #0
	lsl r2, r2, #0x18
	lsl r3, r5, #0x18
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov96_0220C54C
	mov r2, #0x28
	add r0, sp, #4
	add r3, r2, #0
	strh r2, [r0, #0xa]
	sub r3, #0x50
	strh r3, [r0, #8]
	add r0, r4, #0
	mov r1, #6
	bl ov96_0220C90C
	ldr r1, [r4, #0x44]
	ldr r0, _0220BD28 ; =0xFFFF03FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1a
	add r0, r0, #1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x10
	orr r0, r2
	add sp, #0x10
	str r0, [r4, #0x44]
	pop {r4, r5, r6, pc}
_0220BAF0:
	mov r6, #0xa
	add r2, r5, r2
	lsl r2, r2, #0x10
	ldrsh r1, [r1, r6]
	ldr r0, [r4, #0x20]
	asr r2, r2, #0x10
	lsl r3, r3, #0x11
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add r1, sp, #0xc
	mov r3, #1
	ldr r0, [r4, #0x28]
	add r1, #2
	add r2, sp, #0xc
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r1, sp, #4
	mov r0, #8
	ldrsh r1, [r1, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	sub r2, r0, r1
	bpl _0220BB22
	neg r2, r2
_0220BB22:
	add r1, sp, #4
	mov r0, #8
	ldrsh r3, [r1, r0]
	asr r2, r2, #2
	add r2, r3, r2
	strh r2, [r1, #8]
	ldrsh r0, [r1, r0]
	cmp r0, #0xd8
	ble _0220BB36
	mov r0, #0xd8
_0220BB36:
	add r5, sp, #4
	strh r0, [r5, #8]
	mov r2, #0xa
	mov r3, #8
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, r4, #0
	mov r1, #6
	bl ov96_0220C90C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0220BB4E:
	add r1, sp, #8
	mov r3, #1
	ldr r0, [r4, #0x24]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r1, sp, #4
	mov r0, #4
	ldrsh r1, [r1, r0]
	mov r0, #0x88
	sub r0, r0, r1
	bpl _0220BB6C
	neg r0, r0
_0220BB6C:
	lsl r0, r0, #0xf
	asr r5, r0, #0x10
	cmp r1, #0x88
	bge _0220BBB6
	cmp r5, #0
	bne _0220BB7A
	mov r5, #1
_0220BB7A:
	add r6, sp, #4
	mov r3, #4
	ldrsh r0, [r6, r3]
	mov r2, #6
	mov r1, #5
	add r0, r0, r5
	strh r0, [r6, #4]
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r4, #0
	bl ov96_0220C90C
	add r1, sp, #8
	mov r3, #1
	ldr r0, [r4, #0x28]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	mov r3, #4
	ldrsh r0, [r6, r3]
	mov r1, #6
	add r0, r0, r5
	strh r0, [r6, #4]
	ldrsh r2, [r6, r1]
	ldrsh r3, [r6, r3]
	add r0, r4, #0
	bl ov96_0220C90C
_0220BBB6:
	ldr r1, [r4, #0x44]
	ldr r0, _0220BD2C ; =0x00FFFFFF
	add r2, r1, #0
	and r2, r0
	lsr r0, r1, #0x18
	add r0, r0, #1
	lsl r0, r0, #0x18
	orr r0, r2
	str r0, [r4, #0x44]
	lsr r0, r0, #0x18
	cmp r0, #4
	bhs _0220BBD0
	b _0220BD1E
_0220BBD0:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	mov r2, #0x28
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	mov r3, #0x30
	str r0, [r4, #0x2c]
	str r1, [r4, #0x30]
	add r0, r4, #0
	mov r1, #5
	bl ov96_0220C90C
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x28
	mov r3, #0x88
	bl ov96_0220C90C
	mov r1, #0x88
	add r2, r1, #0
	mov r3, #1
	ldr r0, [r4, #0x20]
	sub r2, #0x90
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, _0220BD30 ; =0x000008B5
	bl PlaySE
	ldr r1, [r4, #0x44]
	ldr r0, _0220BD2C ; =0x00FFFFFF
	add r2, r1, #0
	and r2, r0
	ldr r0, _0220BD28 ; =0xFFFF03FF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #0x10
	lsr r0, r0, #0x1a
	add r0, r0, #1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x10
	orr r0, r1
	add sp, #0x10
	str r0, [r4, #0x44]
	pop {r4, r5, r6, pc}
_0220BC2E:
	add r1, sp, #4
	ldr r0, [r4, #0x20]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	sub r0, #0x18
	sub r0, r0, r1
	bpl _0220BC48
	neg r0, r0
_0220BC48:
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	beq _0220BC56
	lsr r0, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0xf
	asr r2, r0, #0x10
_0220BC56:
	add r1, sp, #4
	mov r0, #0
	ldrsh r3, [r1, r0]
	add r2, r2, #2
	add r2, r3, r2
	strh r2, [r1]
	ldrsh r2, [r1, r0]
	cmp r2, #0x70
	blt _0220BCA0
	ldr r0, _0220BD34 ; =0x000008B6
	bl PlaySE
	ldr r0, [r4, #0x20]
	mov r1, #0x88
	mov r2, #0x70
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	ldr r1, [r4, #0x44]
	ldr r0, _0220BD28 ; =0xFFFF03FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1a
	add r0, r0, #1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x10
	orr r0, r2
	add sp, #0x10
	str r0, [r4, #0x44]
	pop {r4, r5, r6, pc}
_0220BCA0:
	mov r3, #2
	ldrsh r1, [r1, r3]
	ldr r0, [r4, #0x20]
	lsl r3, r3, #0x13
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0220BCB0:
	ldr r0, _0220BD2C ; =0x00FFFFFF
	add r2, r1, #0
	and r2, r0
	lsr r0, r1, #0x18
	add r0, r0, #1
	lsl r0, r0, #0x18
	orr r0, r2
	str r0, [r4, #0x44]
	lsr r0, r0, #0x18
	cmp r0, #2
	blo _0220BD1E
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0xc]
	bl ov96_021E5F24
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r3, [r4, #0x40]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1e
	lsl r3, r3, #0x18
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov96_0220C54C
	ldr r1, [r4, #0x44]
	ldr r0, _0220BD2C ; =0x00FFFFFF
	add r2, r1, #0
	and r2, r0
	ldr r0, _0220BD28 ; =0xFFFF03FF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #0x10
	lsr r0, r0, #0x1a
	add r0, r0, #1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x10
	orr r0, r1
	add sp, #0x10
	str r0, [r4, #0x44]
	pop {r4, r5, r6, pc}
_0220BD10:
	mov r1, #0
	bl ov96_0220C578
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0220BD1A:
	bl GF_AssertFail
_0220BD1E:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0220BD24: .word 0x000008B4
_0220BD28: .word 0xFFFF03FF
_0220BD2C: .word 0x00FFFFFF
_0220BD30: .word 0x000008B5
_0220BD34: .word 0x000008B6
	thumb_func_end ov96_0220B9A8

