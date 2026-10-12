	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F3C38

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
	thumb_func_start ov96_021F3C38
ov96_021F3C38: ; 0x021F3C38
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	add r5, r7, #0
_021F3C40:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	bl Heap_Free
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl Heap_Free
	add r4, r4, #1
	add r5, #8
	cmp r4, #0xc
	blt _021F3C40
	mov r6, #0x55
	mov r5, #0
	add r4, r7, #0
	lsl r6, r6, #2
_021F3C64:
	ldr r0, [r4, r6]
	bl Heap_Free
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _021F3C64
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl Heap_Free
	mov r6, #0x5a
	mov r5, #0
	add r4, r7, #0
	lsl r6, r6, #2
_021F3C84:
	ldr r0, [r4, r6]
	bl Heap_Free
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _021F3C84
	ldr r0, [r7, #0x60]
	bl MessageFormat_Delete
	ldr r0, [r7, #0x5c]
	bl DestroyMsgData
	add r4, r7, #0
	mov r5, #0
	add r4, #0xc
_021F3CA4:
	add r0, r4, #0
	bl RemoveWindow
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #5
	blt _021F3CA4
	add r0, r7, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F3C38

