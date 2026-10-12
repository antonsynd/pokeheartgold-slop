	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F4484
	.extern ov96_021E6168

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
	thumb_func_start ov96_021F4484
ov96_021F4484: ; 0x021F4484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, sp, #0x10
_021F4490:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	ldr r0, [r6, #4]
	ldr r1, [sp, #0xc]
	add r3, sp, #0x10
	bl ov96_021E6168
	ldrb r0, [r7, #6]
	mov r3, #2
	str r0, [sp]
	ldrh r0, [r7, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldrh r1, [r7]
	ldrb r2, [r7, #7]
	add r0, sp, #0x20
	bl GetMonSpriteCharAndPlttNarcIdsEx
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrh r0, [r7]
	str r0, [sp, #8]
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	ldr r2, [r6]
	ldr r3, [sp, #0x1c]
	bl sub_0201457C
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x14]
	ldr r2, [r6]
	bl sub_02014450
	add r1, r5, #0
	add r1, #0x9c
	add r4, r4, #1
	add r5, #8
	str r0, [r1]
	cmp r4, #0xc
	blt _021F4490
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F4484

