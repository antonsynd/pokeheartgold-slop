	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EF430

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
	thumb_func_start ov96_021EF430
ov96_021EF430: ; 0x021EF430
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa
	blt _021EF440
	bl GF_AssertFail
_021EF440:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	str r0, [sp, #4]
	mov r2, #6
	ldr r0, [r5, #8]
	add r1, #0x20
	lsl r3, r2, #0xc
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	add r1, #0x2a
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	add r4, #0x34
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	add r1, r4, #0
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #4
	mov r1, #0
	bl BG_SetMaskColor
	mov r0, #0
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	bl OS_WaitVBlankIntr
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #4]
	mov r1, #7
	add r2, sp, #0x10
	bl SetBgAffine
	add r0, sp, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #7
	mov r2, #3
	bl Bg_SetTextDimAndAffineParams
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF430

