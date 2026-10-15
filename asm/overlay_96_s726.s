	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FC450
	.extern ov96_021FC248
	.extern ov96_021FC5E0

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
	thumb_func_start ov96_021FC450
ov96_021FC450: ; 0x021FC450
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp]
	add r7, r1, #0
	ldr r1, [sp]
	mov r0, #0x14
	ldr r1, [r1]
	bl NARC_New
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bl Heap_AllocAtEnd
	ldr r1, [sp]
	mov r3, #0x16
	str r0, [sp, #0x10]
	lsl r3, r3, #4
	add r2, r1, #0
	add r2, r2, r3
	add r0, sp, #0x24
	mov r3, #2
	bl ov96_021FC5E0
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r5, [sp]
	mov r4, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_021FC498:
	add r0, sp, #0x24
	bl Sprite_CreateAffine
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, sp, #0x24
	bl Sprite_CreateAffine
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0xc
	bl Sprite_SetAnimCtrlSeq
	add r0, sp, #0x24
	bl Sprite_CreateAffine
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	cmp r4, #8
	bge _021FC4F8
	add r0, r1, #0
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x10
	bl Sprite_SetAnimCtrlSeq
_021FC4F8:
	ldrh r0, [r7, #2]
	ldrh r6, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r6, #0
	bne _021FC52A
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_021FC52A:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl Sprite_SetDrawPriority
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl Sprite_SetDrawPriority
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl ov96_021FC248
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	bl GetMonIconNaixEx
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl NARC_ReadWholeMember
	ldr r0, [sp, #0x10]
	add r1, sp, #0x20
	bl NNS_G2dGetUnpackedBGCharacterData
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0
	bl GetMonIconPaletteEx
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x14]
	bl DC_FlushRange
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x14]
	ldr r2, [sp, #0x1c]
	bl GXS_LoadOBJ
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Sprite_SetPaletteOverride
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, #0x20
	add r5, #0x10
	add r7, r7, #4
	str r0, [sp, #4]
	cmp r4, #0xc
	bge _021FC5CE
	b _021FC498
_021FC5CE:
	ldr r0, [sp, #0x10]
	bl Heap_Free
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC450

