	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02207E7C
	.extern ov96_021EB2BC
	.extern ov96_021EB2F4
	.extern ov96_021EB334
	.extern ov96_021EB36C
	.extern ov96_0221CBCC

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
	thumb_func_start ov96_02207E7C
ov96_02207E7C: ; 0x02207E7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _02207F14 ; =ov96_0221CBCC
	add r5, r1, #0
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r4, sp, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r6, #0
	mov r7, #2
_02207E92:
	str r7, [sp]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #9
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #6
	bl ov96_021EB2F4
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB334
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB36C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _02207E92
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xe2
	mov r2, #0xd
	mov r3, #0x65
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xe2
	mov r2, #0xa
	mov r3, #0x65
	bl ov96_021EB2F4
	add r0, r5, #0
	mov r1, #0xe2
	mov r2, #0xc
	mov r3, #0x65
	bl ov96_021EB334
	add r0, r5, #0
	mov r1, #0xe2
	mov r2, #0xb
	mov r3, #0x65
	bl ov96_021EB36C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02207F14: .word ov96_0221CBCC
	thumb_func_end ov96_02207E7C

