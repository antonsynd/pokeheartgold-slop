	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221362C
	.extern ov96_0221D1F8
	.extern ov96_0221D360

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
	thumb_func_start ov96_0221362C
ov96_0221362C: ; 0x0221362C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r1, r7, #0
	ldr r0, [r7, #4]
	ldr r2, _0221369C ; =ov96_0221D1F8
	add r1, #8
	bl AddWindow
	add r5, r7, #0
	ldr r4, _022136A0 ; =ov96_0221D360
	mov r6, #0
	add r5, #0x18
_02213646:
	ldr r0, [r7, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #4
	blt _02213646
	mov r2, #0
	str r2, [sp]
	ldr r0, [r7, #4]
	mov r1, #3
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0
	str r1, [sp]
	ldr r0, [r7, #4]
	add r2, r1, #0
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r7, #0x58]
	mov r0, #0
	lsl r1, r1, #4
	bl LoadFontPal0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r7, #0x58]
	mov r1, #0x13
	str r0, [sp, #4]
	mov r0, #0xec
	add r3, r0, #0
	mov r2, #0
	add r3, #0xd4
	bl GfGfxLoader_GXLoadPal
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221369C: .word ov96_0221D1F8
_022136A0: .word ov96_0221D360
	thumb_func_end ov96_0221362C

