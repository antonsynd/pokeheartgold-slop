	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F80A8
	.extern ov96_021F82E4
	.extern ov96_021F8334
	.extern ov96_021F8378
	.extern ov96_021F87E0
	.extern ov96_021F8978

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
	thumb_func_start ov96_021F80A8
ov96_021F80A8: ; 0x021F80A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	str r2, [sp, #4]
	str r1, [sp]
	add r1, r7, #0
	ldr r0, [sp, #4]
	add r1, #0x59
	strb r0, [r1]
	ldr r0, [r7]
	add r1, r3, #0
	bl ov96_021F87E0
	mov r5, #0
	str r5, [sp, #0xc]
	add r6, r5, #0
_021F80C8:
	mov r2, #1
	mov r3, #0x9c
	add r4, r5, #0
	ldr r1, [sp]
	add r0, r7, #0
	lsl r2, r2, #8
	sub r3, r3, r6
	add r4, #0xa
	bl ov96_021F8378
	str r0, [sp, #8]
	bl ov96_021F8978
	cmp r0, #0
	bne _021F80E8
	add r4, #0xa
_021F80E8:
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r4, #0
	bl ov96_021F82E4
	ldr r0, [sp, #0xc]
	add r5, #0xa
	add r0, r0, #1
	add r6, #0x28
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _021F80C8
	ldr r0, [sp, #4]
	cmp r0, #4
	bls _021F811E
	mov r2, #1
	ldr r1, [sp]
	add r0, r7, #0
	lsl r2, r2, #8
	mov r3, #0x28
	bl ov96_021F8378
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	bl ov96_021F8334
_021F811E:
	mov r0, #1
	add r7, #0x58
	strb r0, [r7]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F80A8

