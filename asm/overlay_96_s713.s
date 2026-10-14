	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FC0FC
	.extern ov96_021FBF90

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
	thumb_func_start ov96_021FC0FC
ov96_021FC0FC: ; 0x021FC0FC
	push {r4, r5, r6, lr}
	add r3, r2, #0
	asr r2, r1, #2
	lsr r2, r2, #0x1d
	add r2, r1, r2
	asr r4, r2, #3
	beq _021FC13A
	lsl r2, r4, #3
	sub r2, r1, r2
	sub r1, r4, #1
	mov r4, #2
	lsl r4, r4, #8
	cmp r1, r4
	bge _021FC13A
	lsl r4, r3, #9
	add r4, r0, r4
	add r5, r4, r1
	ldr r4, _021FC13C ; =0x00000618
	ldrb r4, [r5, r4]
	cmp r4, #0
	beq _021FC13A
	ldr r4, _021FC140 ; =0x00000C18
	lsl r5, r3, #2
	add r6, r0, r4
	ldr r4, [r6, r5]
	cmp r4, r1
	bge _021FC13A
	str r1, [r6, r5]
	add r1, r3, #0
	bl ov96_021FBF90
_021FC13A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FC13C: .word 0x00000618
_021FC140: .word 0x00000C18
	thumb_func_end ov96_021FC0FC

