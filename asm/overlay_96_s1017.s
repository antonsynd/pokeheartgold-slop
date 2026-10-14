	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220C15C
	.extern ov96_021EAB38
	.extern ov96_021EAB74

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
	thumb_func_start ov96_0220C15C
ov96_0220C15C: ; 0x0220C15C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4, #0x38]
	lsl r2, r1, #0x1a
	lsr r2, r2, #0x1c
	cmp r2, #6
	bls _0220C16E
	b _0220C3CA
_0220C16E:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0220C17A: ; jump table
	.short _0220C188 - _0220C17A - 2 ; case 0
	.short _0220C1B2 - _0220C17A - 2 ; case 1
	.short _0220C216 - _0220C17A - 2 ; case 2
	.short _0220C274 - _0220C17A - 2 ; case 3
	.short _0220C2B2 - _0220C17A - 2 ; case 4
	.short _0220C33E - _0220C17A - 2 ; case 5
	.short _0220C3B6 - _0220C17A - 2 ; case 6
_0220C188:
	ldr r5, [r4, #0x2c]
	add r0, r5, #0
	bl ManagedSprite_ResetSpriteAnimCtrlState
	add r0, r5, #0
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r2, [r4, #0x38]
	mov r1, #0x3c
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1a
	orr r0, r1
	add sp, #8
	str r0, [r4, #0x38]
	pop {r3, r4, r5, pc}
_0220C1B2:
	ldr r0, _0220C3D4 ; =0xFFFFC03F
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x18
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x12
	orr r1, r0
	lsl r0, r1, #0x12
	lsr r0, r0, #0x18
	str r1, [r4, #0x38]
	cmp r0, #2
	blo _0220C294
	lsl r0, r1, #7
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r5, [r4, #0x30]
	ldr r0, [r0, #4]
	mov r1, #0
	bl ov96_021EAB38
	add r0, r5, #0
	mov r1, #0x1b
	bl ManagedSprite_SetAnim
	add r0, r5, #0
	mov r1, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r5, #0
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r1, [r4, #0x38]
	ldr r0, _0220C3D4 ; =0xFFFFC03F
	add r2, r1, #0
	and r2, r0
	mov r0, #0x3c
	add r1, r2, #0
	bic r1, r0
	lsl r0, r2, #0x1a
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	add sp, #8
	str r0, [r4, #0x38]
	pop {r3, r4, r5, pc}
_0220C216:
	add r1, sp, #4
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	mov r3, #4
	add r1, sp, #0
	add r0, r3, #0
	ldrsh r5, [r1, r3]
	sub r0, #0x44
	sub r2, r0, r5
	asr r0, r2, #1
	lsr r0, r0, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0xe
	asr r2, r0, #0x10
	add r0, r3, #0
	sub r0, #0x44
	cmp r5, r0
	ble _0220C244
	cmp r2, #0
	bne _0220C25E
_0220C244:
	ldr r2, [r4, #0x38]
	mov r1, #0x3c
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1a
	orr r0, r1
	add sp, #8
	str r0, [r4, #0x38]
	pop {r3, r4, r5, pc}
_0220C25E:
	ldr r0, [r4, #0x30]
	mov r4, #6
	add r2, r5, r2
	lsl r2, r2, #0x10
	ldrsh r1, [r1, r4]
	asr r2, r2, #0x10
	lsl r3, r3, #0x12
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add sp, #8
	pop {r3, r4, r5, pc}
_0220C274:
	add r0, r1, #0
	lsl r1, r1, #0x12
	lsr r1, r1, #0x18
	ldr r3, _0220C3D4 ; =0xFFFFC03F
	add r1, r1, #1
	lsl r1, r1, #0x18
	and r0, r3
	lsr r1, r1, #0x12
	orr r0, r1
	str r0, [r4, #0x38]
	lsl r0, r0, #0x12
	add r2, r4, #0
	lsr r0, r0, #0x18
	add r2, #0x38
	cmp r0, #4
	bhs _0220C296
_0220C294:
	b _0220C3CE
_0220C296:
	ldr r0, [r2]
	add sp, #8
	and r3, r0
	mov r0, #0x3c
	add r1, r3, #0
	bic r1, r0
	lsl r0, r3, #0x1a
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r2]
	pop {r3, r4, r5, pc}
_0220C2B2:
	add r1, sp, #0
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	sub r0, #0x18
	sub r0, r0, r1
	bpl _0220C2CC
	neg r0, r0
_0220C2CC:
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	beq _0220C2DA
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r1, r0, #0x10
_0220C2DA:
	add r5, sp, #0
	mov r0, #0
	ldrsh r2, [r5, r0]
	add r1, r1, #2
	add r1, r2, r1
	strh r1, [r5]
	ldrsh r2, [r5, r0]
	cmp r2, #0x30
	blt _0220C32E
	ldr r0, [r4, #0x38]
	mov r2, #0x30
	lsl r0, r0, #3
	lsr r0, r0, #0x1e
	lsl r0, r0, #6
	add r0, #0x48
	strh r0, [r5, #2]
	strh r2, [r5]
	mov r1, #2
	ldrsh r1, [r5, r1]
	ldr r0, [r4, #0x30]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [r4, #0x2c]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	ldr r2, [r4, #0x38]
	mov r1, #0x3c
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1a
	orr r0, r1
	add sp, #8
	str r0, [r4, #0x38]
	pop {r3, r4, r5, pc}
_0220C32E:
	mov r3, #2
	ldrsh r1, [r5, r3]
	ldr r0, [r4, #0x30]
	lsl r3, r3, #0x13
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add sp, #8
	pop {r3, r4, r5, pc}
_0220C33E:
	ldr r0, _0220C3D4 ; =0xFFFFC03F
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x18
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x12
	orr r0, r1
	str r0, [r4, #0x38]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x18
	cmp r0, #2
	blo _0220C3CE
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x38]
	mov r1, #1
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl ov96_021EAB38
	ldr r0, [r4, #0x38]
	mov r1, #0
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl ov96_021EAB74
	ldr r1, [r4, #0x38]
	ldr r0, _0220C3D8 ; =0xFE7FFFFF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x1e
	lsr r0, r0, #7
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0220C3D4 ; =0xFFFFC03F
	add r2, r1, #0
	and r2, r0
	mov r0, #0x3c
	add r1, r2, #0
	bic r1, r0
	lsl r0, r2, #0x1a
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	add sp, #8
	str r0, [r4, #0x38]
	pop {r3, r4, r5, pc}
_0220C3B6:
	mov r1, #0
	str r1, [r4, #0x34]
	ldr r2, [r4, #0x38]
	ldr r1, _0220C3DC ; =0xFFFFBFFF
	and r1, r2
	str r1, [r4, #0x38]
	bl SysTask_Destroy
	add sp, #8
	pop {r3, r4, r5, pc}
_0220C3CA:
	bl GF_AssertFail
_0220C3CE:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0220C3D4: .word 0xFFFFC03F
_0220C3D8: .word 0xFE7FFFFF
_0220C3DC: .word 0xFFFFBFFF
	thumb_func_end ov96_0220C15C

