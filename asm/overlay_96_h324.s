	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EDF84

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
	thumb_func_start ov96_021EDF84
ov96_021EDF84: ; 0x021EDF84
	push {r4, r5}
	mov r4, #0
	add r3, r4, #0
	add r5, r1, #0
_021EDF8C:
	ldr r2, [r5, #0x44]
	add r3, r3, #1
	add r4, r4, r2
	add r5, r5, #4
	cmp r3, #0xa
	blt _021EDF8C
	ldr r2, [r1, #4]
	mov r5, #0
	str r2, [r0]
	ldr r2, [r1, #8]
	add r3, r1, #0
	str r2, [r0, #4]
	ldr r2, [r1, #0xc]
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	ldr r2, [r1, #0x6c]
	add r4, r0, #0
	str r2, [r0, #0x10]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x14]
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x18]
	ldr r2, [r1, #0x18]
	str r2, [r0, #0x1c]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x20]
	ldr r2, [r1, #0x20]
	str r2, [r0, #0x24]
	ldr r2, [r1, #0x24]
	str r2, [r0, #0x28]
	ldr r2, [r1, #0x28]
	str r2, [r0, #0x2c]
	ldr r2, [r1, #0x2c]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x34]
	ldr r2, [r1, #0x38]
	str r2, [r0, #0x38]
	ldr r2, [r1, #0x3c]
	str r2, [r0, #0x3c]
	ldr r2, [r1, #0x40]
	str r2, [r0, #0x40]
_021EDFE0:
	ldr r2, [r3, #0x44]
	add r5, r5, #1
	str r2, [r4, #0x44]
	add r3, r3, #4
	add r4, r4, #4
	cmp r5, #0xa
	blt _021EDFE0
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x6c]
	ldr r1, [r1, #0x70]
	str r1, [r0, #0x70]
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EDF84

