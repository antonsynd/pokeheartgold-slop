	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ED754
	.public ov96_021ED78C
	.public ov96_021ED7C4
	.extern PokeathlonCourse_GetDataCopyArea
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
	thumb_func_start ov96_021ED754
ov96_021ED754: ; 0x021ED754
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED76E
	bl GF_AssertFail
_021ED76E:
	cmp r6, #0
	bne _021ED776
	bl GF_AssertFail
_021ED776:
	cmp r4, #0
	bne _021ED77E
	bl GF_AssertFail
_021ED77E:
	ldr r0, [r4, #4]
	lsl r0, r0, #5
	lsr r0, r0, #0x14
	bl MATH_CountPopulation
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED754

	thumb_func_start ov96_021ED78C
ov96_021ED78C: ; 0x021ED78C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED7A6
	bl GF_AssertFail
_021ED7A6:
	cmp r6, #0
	bne _021ED7AE
	bl GF_AssertFail
_021ED7AE:
	cmp r4, #0
	bne _021ED7B6
	bl GF_AssertFail
_021ED7B6:
	ldr r0, [r4, #8]
	lsl r0, r0, #4
	lsr r0, r0, #0x14
	bl MATH_CountPopulation
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED78C

	thumb_func_start ov96_021ED7C4
ov96_021ED7C4: ; 0x021ED7C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED7DE
	bl GF_AssertFail
_021ED7DE:
	cmp r6, #0
	bne _021ED7E6
	bl GF_AssertFail
_021ED7E6:
	cmp r4, #0
	bne _021ED7EE
	bl GF_AssertFail
_021ED7EE:
	ldr r0, [r4, #4]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x14
	bl MATH_CountPopulation
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED7C4

