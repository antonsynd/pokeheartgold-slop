	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E9858
	.public ov96_021E9870
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField1EF
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetUnkConstant4
	.extern PokeathlonCourse_IncrementField1EF
	.extern PokeathlonCourse_ResetField1EF
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateTransitionType
	.extern ov96_021E5F24
	.extern ov96_021E8A20

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
	thumb_func_start ov96_021E9858
ov96_021E9858: ; 0x021E9858
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #0xa
	bl PokeathlonCourse_SetStateTransitionType
	add r0, r4, #0
	mov r1, #0x12
	bl PokeathlonCourse_SetStateField07
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9858

	thumb_func_start ov96_021E9870
ov96_021E9870: ; 0x021E9870
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	add r7, r0, #0
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E98CE
	add r0, r5, #0
	bl PokeathlonCourse_GetUnkConstant4
	add r7, #0x28
	add r4, r0, #0
	add r0, r7, #0
	bl ov96_021E8A20
	add r1, r6, #0
	mul r1, r4
	add r0, r0, r1
	ldr r1, [sp]
	add r2, r4, #0
	bl memcpy
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1EF
	add r0, r5, #0
	bl PokeathlonCourse_GetParticipantCount
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetField1EF
	cmp r4, r0
	bne _021E98CE
	add r0, r5, #0
	bl PokeathlonCourse_ResetField1EF
	add r0, r5, #0
	mov r1, #0x15
	bl PokeathlonCourse_SetStateField07
_021E98CE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E9870

