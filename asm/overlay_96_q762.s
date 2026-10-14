	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FF6DC

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
	thumb_func_start ov96_021FF6DC
ov96_021FF6DC: ; 0x021FF6DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xa5
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF6F8
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	add r0, #0x2c
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
_021FF6F8:
	mov r0, #0x1c
	add r4, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldr r0, [r0, #0x24]
	bl _f2d
	ldr r3, _021FF728 ; =0x40440000
	mov r2, #0
	bl _dleq
	bhi _021FF71C
	add r0, r5, r4
	add r0, #0x2d
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
_021FF71C:
	add r0, r5, r4
	add r0, #0x2e
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FF728: .word 0x40440000
	thumb_func_end ov96_021FF6DC

