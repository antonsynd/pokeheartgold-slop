	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ECA18
	.public ov96_021ECA70
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021EAA04
	.extern ov96_021EAB38
	.extern ov96_021EC790

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
	thumb_func_start ov96_021ECA18
ov96_021ECA18: ; 0x021ECA18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r7, #1
	mov r4, #0
_021ECA24:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	str r7, [sp, #4]
	add r0, #0x6d
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #0x14
	bl SpriteSystem_LoadCharResObj
	add r4, r4, #1
	cmp r4, #3
	blt _021ECA24
	mov r0, #1
	str r0, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #0x15
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #0x16
	bl SpriteSystem_LoadAnimResObj
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ECA18

	thumb_func_start ov96_021ECA70
ov96_021ECA70: ; 0x021ECA70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	mov r7, #0
	mov r4, #1
	mov r5, #2
_021ECA84:
	lsl r1, r4, #0x18
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	str r0, [sp, #8]
	lsl r1, r5, #0x18
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0
	bl ov96_021EAB38
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl ov96_021EAB38
	add r7, r7, #1
	add r4, r4, #3
	add r5, r5, #3
	cmp r7, #4
	blt _021ECA84
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov96_021EC790
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ECA70

