	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220D554
	.extern ov96_021E8BB0
	.extern ov96_021E90FC
	.extern ov96_021EAA20
	.extern ov96_021EABE0
	.extern ov96_021EABF4

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
	thumb_func_start ov96_0220D554
ov96_0220D554: ; 0x0220D554
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	bl ov96_021EAA20
	add r5, r0, #0
	bl ov96_021E90FC
	add r4, r0, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl ov96_021E8BB0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0220D58A
	add r0, r6, #0
	mov r1, #1
	mov r5, #0x40
	bl ov96_021EABE0
	b _0220D594
_0220D58A:
	add r0, r6, #0
	mov r1, #2
	mov r5, #0x20
	bl ov96_021EABE0
_0220D594:
	cmp r7, #0
	beq _0220D5B2
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	lsl r0, r0, #0xc
	sub r1, r5, r4
	str r0, [sp]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r4, r0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	b _0220D5C2
_0220D5B2:
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	sub r0, r5, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
_0220D5C2:
	add r0, r6, #0
	add r1, sp, #0
	bl ov96_021EABF4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220D554

