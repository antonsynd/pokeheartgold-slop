	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F8728
	.extern ov96_021F8E94

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
	thumb_func_start ov96_021F8728
ov96_021F8728: ; 0x021F8728
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r0, #0
	str r0, [sp]
	mov r7, #0
	add r6, #0x24
	add r4, #0x34
	add r5, r0, #0
_021F8738:
	add r0, r6, #0
	bl ov96_021F8E94
	add r0, r4, #0
	bl ov96_021F8E94
	ldr r0, [r5, #0x14]
	bl Sprite_Delete
	ldr r0, [r5, #0x18]
	bl Sprite_Delete
	ldr r0, [r5, #0x1c]
	bl Sprite_Delete
	ldr r0, [r5, #0x20]
	bl Sprite_Delete
	add r7, r7, #1
	add r6, #0x48
	add r4, #0x48
	add r5, #0x48
	cmp r7, #5
	blt _021F8738
	mov r1, #0xbf
	ldr r0, [sp]
	lsl r1, r1, #2
	mov r4, #0
	add r5, r0, r1
_021F8772:
	ldr r0, [r5, #0x10]
	bl sub_02013938
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #2
	blt _021F8772
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	bl sub_020135AC
	mov r1, #0xb
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bl SpriteTransfer_DeleteCharTransferTask
	mov r1, #0xb1
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r6, #0xaa
	ldr r4, [sp]
	mov r5, #0
	lsl r6, r6, #2
_021F87AE:
	ldr r0, [r4, r6]
	bl Destroy2DGfxResObjMan
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _021F87AE
	mov r1, #0x5f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl SpriteList_Delete
	ldr r0, [sp]
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8728

