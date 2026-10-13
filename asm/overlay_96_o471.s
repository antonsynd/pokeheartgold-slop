	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F30F8

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
	thumb_func_start ov96_021F30F8
ov96_021F30F8: ; 0x021F30F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r5, #0xf
	bne _021F3104
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F3104:
	cmp r5, #1
	bhs _021F310C
	mov r0, #0
	b _021F311E
_021F310C:
	cmp r5, #6
	bhs _021F3114
	mov r0, #1
	b _021F311E
_021F3114:
	cmp r5, #0xa
	bhs _021F311C
	mov r0, #2
	b _021F311E
_021F311C:
	mov r0, #3
_021F311E:
	cmp r1, #1
	bne _021F3128
	mov r4, #1
	mov r6, #5
	b _021F3136
_021F3128:
	cmp r1, #2
	bne _021F3132
	mov r4, #6
	mov r6, #4
	b _021F3136
_021F3132:
	mov r4, #0xa
	mov r6, #5
_021F3136:
	cmp r1, r0
	bne _021F316C
	cmp r5, r4
	bhs _021F3142
	bl GF_AssertFail
_021F3142:
	bl LCRandom
	sub r1, r6, #1
	bl _s32_div_f
	sub r0, r5, r4
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
_021F316C:
	bl LCRandom
	add r1, r6, #0
	bl _s32_div_f
	add r0, r4, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F30F8

