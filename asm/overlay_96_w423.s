	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F8AFC
	.extern ov96_021F8A98
	.extern ov96_021F8ACC

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
	thumb_func_start ov96_021F8AFC
ov96_021F8AFC: ; 0x021F8AFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r2, #0
	mov r2, #0xb6
	add r3, r0, #0
	lsl r2, r2, #2
	add r5, r1, #0
	add r0, sp, #0x14
	add r1, r3, #0
	add r2, r3, r2
	mov r3, #1
	bl ov96_021F8A98
	add r0, sp, #0x14
	mov r1, #0x11
	mov r2, #4
	bl ov96_021F8ACC
	str r0, [r4]
	add r0, sp, #0x14
	mov r1, #5
	mov r2, #0
	bl ov96_021F8ACC
	str r0, [r4, #4]
	add r0, sp, #0x14
	mov r1, #0x12
	mov r2, #1
	bl ov96_021F8ACC
	str r0, [r4, #8]
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #2
	bl ov96_021F8ACC
	str r0, [r4, #0xc]
	add r4, r0, #0
	bl Sprite_GetVramType
	add r6, r0, #0
	add r0, r4, #0
	bl Sprite_GetImageProxy
	add r7, r0, #0
	add r0, r4, #0
	bl Sprite_GetPaletteProxy
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl NNS_G2dGetImageLocation
	str r0, [sp, #4]
	lsl r0, r5, #9
	str r0, [sp, #8]
	add r0, r7, #0
	bl NNS_G2dInitImageProxy
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r3, r2
	bl NNS_G2dSetImageLocation
	ldr r0, [sp]
	add r1, r6, #0
	bl NNS_G2dGetImagePaletteLocation
	str r0, [sp, #0xc]
	add r0, r5, #6
	lsl r0, r0, #5
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl NNS_G2dInitImagePaletteProxy
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r3, r2
	bl NNS_G2dSetImagePaletteLocation
	add r0, r4, #0
	add r1, r7, #0
	bl Sprite_SetImageProxy
	ldr r1, [sp]
	add r0, r4, #0
	bl Sprite_SetPaletteProxy
	add r0, r4, #0
	add r1, r5, #0
	bl Sprite_SetPalOffset
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8AFC

