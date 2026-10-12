	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EEDCC
	.extern ov96_0221B1D4
	.extern ov96_0221B1D8

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
	thumb_func_start ov96_021EEDCC
ov96_021EEDCC: ; 0x021EEDCC
	push {r3, r4, r5, lr}
	ldr r5, _021EEDFC ; =ov96_0221B1D4
	ldr r1, _021EEE00 ; =0x0000270F
	ldr r2, _021EEE04 ; =0x0000FFFF
	mov r4, #0
_021EEDD6:
	cmp r4, r2
	bne _021EEDDE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EEDDE:
	ldr r3, [r5]
	cmp r0, r3
	bne _021EEDEC
	ldr r0, _021EEE08 ; =ov96_0221B1D8
	lsl r1, r4, #3
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_021EEDEC:
	add r4, r4, #1
	add r5, #8
	cmp r4, r1
	blt _021EEDD6
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EEDFC: .word ov96_0221B1D4
_021EEE00: .word 0x0000270F
_021EEE04: .word 0x0000FFFF
_021EEE08: .word ov96_0221B1D8
	thumb_func_end ov96_021EEDCC

