	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02209910
	.extern ov96_021EA374
	.extern ov96_021EA584
	.extern ov96_0220D13C

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
	thumb_func_start ov96_02209910
ov96_02209910: ; 0x02209910
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r7, #0
	add r0, sp, #0x14
	str r7, [r0]
	str r7, [r0, #4]
	mov r6, #2
	str r7, [r0, #8]
	lsl r6, r6, #0xe
	add r4, r5, #0
_02209926:
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r6, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	bl SpriteManager_GetSpriteList
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	ldr r3, [r5]
	mov r2, #0
	bl ov96_021EA584
	str r0, [r4, #0x2c]
	add r1, sp, #0x14
	bl Sprite_SetMatrix
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl Sprite_SetDrawPriority
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #1
	lsl r0, r0, #0x10
	add r7, r7, #1
	add r6, r6, r0
	add r4, r4, #4
	cmp r7, #3
	blt _02209926
	mov r0, #0x19
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r2, #0xc0
	mov r3, #0xb8
	bl ov96_0220D13C
	str r0, [r5, #0x24]
	mov r7, #0
	add r4, r5, #0
	mov r6, #0xd4
_0220998A:
	mov r1, #0
	add r0, sp, #8
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r5, #0xc]
	bl SpriteManager_GetSpriteList
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	ldr r3, [r5]
	mov r2, #2
	bl ov96_021EA374
	str r0, [r4, #0x38]
	lsl r0, r6, #0xc
	str r0, [sp, #8]
	mov r0, #0x2e
	lsl r0, r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x38]
	add r1, sp, #8
	bl Sprite_SetMatrix
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r7, r7, #1
	add r4, r4, #4
	add r6, #0x10
	cmp r7, #2
	blt _0220998A
	mov r0, #0x13
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r2, #0x20
	mov r3, #0x10
	bl ov96_0220D13C
	str r0, [r5, #0x28]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02209910

