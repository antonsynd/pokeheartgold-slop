	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F2F7C
	.public ov96_021F2FBC
	.extern ov96_021EB06C

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
	thumb_func_start ov96_021F2F7C
ov96_021F2F7C: ; 0x021F2F7C
	push {lr}
	sub sp, #0xc
	add r3, sp, #4
	str r3, [sp]
	asr r3, r1, #0xb
	lsr r3, r3, #0x14
	add r3, r1, r3
	asr r1, r3, #0xc
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #8
	bl ov96_021EB06C
	ldr r0, [sp, #8]
	cmp r0, #0x10
	blt _021F2FAE
	cmp r0, #0xf0
	bge _021F2FAE
	ldr r0, [sp, #4]
	cmp r0, #0x10
	blt _021F2FAE
	cmp r0, #0xb0
	blt _021F2FB4
_021F2FAE:
	add sp, #0xc
	mov r0, #1
	pop {pc}
_021F2FB4:
	mov r0, #0
	add sp, #0xc
	pop {pc}
	.balign 4, 0
	thumb_func_end ov96_021F2F7C

	thumb_func_start ov96_021F2FBC
ov96_021F2FBC: ; 0x021F2FBC
	ldrh r3, [r1, #2]
	ldrh r2, [r0, #2]
	cmp r2, r3
	bls _021F2FCA
	mov r0, #0
	mvn r0, r0
	bx lr
_021F2FCA:
	cmp r2, r3
	bhs _021F2FD2
	mov r0, #1
	bx lr
_021F2FD2:
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r0, r1
	bhs _021F2FE0
	mov r0, #0
	mvn r0, r0
	bx lr
_021F2FE0:
	cmp r0, r1
	bls _021F2FE8
	mov r0, #1
	bx lr
_021F2FE8:
	mov r0, #0
	bx lr
	thumb_func_end ov96_021F2FBC

