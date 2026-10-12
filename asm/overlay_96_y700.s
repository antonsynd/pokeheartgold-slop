	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220C9A0
	.public ov96_0220C9CC
	.extern ov96_0220CA28
	.extern ov96_0220CF50

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
	thumb_func_start ov96_0220C9A0
ov96_0220C9A0: ; 0x0220C9A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	mov r6, #0
	cmp r0, #0
	bls _0220C9CA
	add r4, r5, #0
	add r4, #8
_0220C9B0:
	add r0, r4, #0
	bl ov96_0220CA28
	add r1, r0, #0
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl ov96_0220CF50
	ldr r0, [r5, #0x74]
	add r6, r6, #1
	add r4, #0x24
	cmp r6, r0
	blo _0220C9B0
_0220C9CA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_0220C9A0

	thumb_func_start ov96_0220C9CC
ov96_0220C9CC: ; 0x0220C9CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	mov r6, #0
	cmp r0, #0
	bls _0220C9F2
	add r4, r5, #0
	add r4, #8
	add r7, r6, #0
_0220C9DE:
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov96_0220CF50
	ldr r0, [r5, #0x74]
	add r6, r6, #1
	add r4, #0x24
	cmp r6, r0
	blo _0220C9DE
_0220C9F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220C9CC

