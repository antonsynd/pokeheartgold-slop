	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221A6B0
	.public ov96_0221A6D0
	.public ov96_0221A700
	.extern ov96_0221A61C

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
	thumb_func_start ov96_0221A6B0
ov96_0221A6B0: ; 0x0221A6B0
	push {r3, lr}
	bl _ffltu
	bl _f2d
	ldr r3, _0221A6CC ; =0x400C0000
	mov r2, #0
	bl _ddiv
	bl _d2f
	bl ov96_0221A61C
	pop {r3, pc}
	.balign 4, 0
_0221A6CC: .word 0x400C0000
	thumb_func_end ov96_0221A6B0

	thumb_func_start ov96_0221A6D0
ov96_0221A6D0: ; 0x0221A6D0
	push {r3, lr}
	bl _ffltu
	bl _f2d
	ldr r3, _0221A6F8 ; =0x40900000
	mov r2, #0
	bl _ddiv
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _0221A6FC ; =0x40240000
	mov r0, #0
	bl _dmul
	bl _d2f
	bl ov96_0221A61C
	pop {r3, pc}
	.balign 4, 0
_0221A6F8: .word 0x40900000
_0221A6FC: .word 0x40240000
	thumb_func_end ov96_0221A6D0

	thumb_func_start ov96_0221A700
ov96_0221A700: ; 0x0221A700
	push {r3, lr}
	bl _ffltu
	bl _f2d
	ldr r3, _0221A71C ; =0x3FF80000
	mov r2, #0
	bl _dmul
	bl _d2f
	bl ov96_0221A61C
	pop {r3, pc}
	.balign 4, 0
_0221A71C: .word 0x3FF80000
	thumb_func_end ov96_0221A700

