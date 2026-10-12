	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F2AA4

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
	thumb_func_start ov96_021F2AA4
ov96_021F2AA4: ; 0x021F2AA4
	add r1, r0, #0
	add r1, #0x44
	ldrb r1, [r1]
	cmp r1, #0
	beq _021F2AE0
	add r1, r0, #0
	add r1, #0x45
	ldrb r1, [r1]
	sub r2, r1, #1
	add r1, r0, #0
	add r1, #0x45
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x45
	ldrb r1, [r1]
	cmp r1, #0
	bne _021F2B20
	add r1, r0, #0
	mov r2, #0
	add r1, #0x45
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x44
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x8c
	ldrh r1, [r1]
	add r0, #0x8e
	strh r1, [r0]
	bx lr
_021F2AE0:
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	add r2, r1, #2
	add r1, r0, #0
	add r1, #0x8e
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x8c
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	cmp r1, r2
	bls _021F2B04
	add r1, r0, #0
	add r1, #0x8e
	strh r2, [r1]
_021F2B04:
	add r1, r0, #0
	add r1, #0x8e
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0x8c
	ldrh r1, [r1]
	cmp r2, r1
	bne _021F2B20
	add r1, r0, #0
	mov r2, #0
	add r1, #0x45
	strb r2, [r1]
	add r0, #0x44
	strb r2, [r0]
_021F2B20:
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F2AA4

