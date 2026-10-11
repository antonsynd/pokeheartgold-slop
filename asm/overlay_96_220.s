	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ECFF8
	.extern ov96_0221B0F0

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
	thumb_func_start ov96_021ECFF8
ov96_021ECFF8: ; 0x021ECFF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _021ED050 ; =ov96_0221B0F0
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #6
_021ED008:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021ED008
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5]
	bl ManagedSprite_GetActiveAnim
	sub r0, #0xb
	add r1, sp, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0xc]
	asr r0, r0, #0xc
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	asr r0, r0, #0xc
	strh r0, [r1, #2]
	ldr r0, [r5]
	bl Sprite_DeleteAndFreeResources
	mov r3, #0x83
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	lsl r3, r3, #0xe
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	str r0, [r5]
	bl ManagedSprite_SetAnimateFlag
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021ED050: .word ov96_0221B0F0
	thumb_func_end ov96_021ECFF8

