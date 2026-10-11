	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022195E8

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
	thumb_func_start ov96_022195E8
ov96_022195E8: ; 0x022195E8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bne _022195F2
	bl GF_AssertFail
_022195F2:
	ldr r0, [r6, #0x24]
	bl NARC_Delete
	mov r4, #0
	add r5, r6, #0
_022195FC:
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl String_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _022195FC
	ldr r0, [r6, #0x28]
	bl Heap_Free
	add r4, r6, #0
	mov r5, #0
	add r4, #0x30
_0221961A:
	add r0, r4, #0
	bl RemoveWindow
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #3
	blt _0221961A
	mov r5, #0
	add r4, r6, #0
_0221962C:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	bne _02219636
	bl GF_AssertFail
_02219636:
	ldr r0, [r4, #0x60]
	bl Sprite_DeleteAndFreeResources
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x12
	blt _0221962C
	add r0, r6, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_022195E8

