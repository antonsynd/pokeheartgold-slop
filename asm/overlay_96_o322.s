	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ED8DC
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E8A20
	.extern ov96_021EE0AC
	.extern ov96_021EE144
	.extern ov96_021EE1D8

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
	thumb_func_start ov96_021ED8DC
ov96_021ED8DC: ; 0x021ED8DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #0
	bne _021ED922
	mov r6, #0
_021ED8F8:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r6, r0
	bne _021ED90C
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021EE0AC
	b _021ED918
_021ED90C:
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE1D8
_021ED918:
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blt _021ED8F8
	pop {r4, r5, r6, pc}
_021ED922:
	mov r6, #0
_021ED924:
	add r0, r5, #0
	bl PokeathlonCourse_GetParticipantCount
	cmp r0, r6
	ble _021ED93C
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE144
	b _021ED948
_021ED93C:
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE1D8
_021ED948:
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blt _021ED924
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED8DC

