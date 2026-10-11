	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02200E80

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
	thumb_func_start ov96_02200E80
ov96_02200E80: ; 0x02200E80
	push {r4, r5, r6, r7}
	mov r5, #0
	mov r2, #1
_02200E86:
	ldr r3, [r1]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	str r4, [r0, #0x4c]
	ldr r3, [r1]
	asr r6, r3, #8
	asr r3, r3, #0x10
	lsl r6, r6, #0x18
	lsl r3, r3, #0x10
	lsr r6, r6, #0x18
	lsr r3, r3, #0x10
	cmp r4, #0
	beq _02200ED8
	str r2, [r0, #0x40]
	ldr r4, [r0, #0x4c]
	cmp r4, #2
	bne _02200EAE
	mov r4, #0x20
	str r4, [r0, #0x50]
	b _02200EBC
_02200EAE:
	cmp r4, #1
	bne _02200EB8
	mov r4, #0x30
	str r4, [r0, #0x50]
	b _02200EBC
_02200EB8:
	mov r4, #0x40
	str r4, [r0, #0x50]
_02200EBC:
	ldr r7, [r0, #0x50]
	add r6, #0x20
	lsr r4, r7, #0x1f
	add r4, r7, r4
	asr r4, r4, #1
	sub r3, r3, r4
	str r3, [r0, #0x44]
	ldr r4, [r0, #0x50]
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r3, r3, #1
	sub r3, r6, r3
	str r3, [r0, #0x48]
	b _02200EDC
_02200ED8:
	mov r3, #0
	str r3, [r0, #0x40]
_02200EDC:
	add r5, r5, #1
	add r1, r1, #4
	add r0, #0x14
	cmp r5, #0x1e
	blt _02200E86
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_02200E80

