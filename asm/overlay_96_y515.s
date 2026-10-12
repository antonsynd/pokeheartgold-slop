	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FC1A8

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
	thumb_func_start ov96_021FC1A8
ov96_021FC1A8: ; 0x021FC1A8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x62
	lsl r7, r7, #2
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	add r6, r7, #4
_021FC1B6:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Sprite_Delete
	ldr r0, [r5, r7]
	bl Sprite_Delete
	ldr r0, [r5, r6]
	bl Sprite_Delete
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xc
	blt _021FC1B6
	mov r1, #0x52
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl SpriteTransfer_DeleteCharTransferTask
	mov r1, #0x53
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r6, #0x13
	ldr r4, [sp]
	mov r5, #0
	lsl r6, r6, #4
_021FC1F4:
	ldr r0, [r4, r6]
	bl Destroy2DGfxResObjMan
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _021FC1F4
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl SpriteList_Delete
	ldr r0, [sp]
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC1A8

