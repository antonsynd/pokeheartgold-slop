	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02209A14
	.public ov96_02209B04

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
	thumb_func_start ov96_02209A14
ov96_02209A14: ; 0x02209A14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #0xc]
	ldr r4, [r6, #8]
	mov r7, #1
	str r7, [sp]
	ldr r0, _02209AF8 ; =0x00002710
	str r7, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xea
	mov r3, #8
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02209AF8 ; =0x00002710
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xea
	mov r3, #7
	bl SpriteSystem_LoadPlttResObj
	add r0, r7, #0
	str r0, [sp]
	ldr r0, _02209AF8 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xea
	mov r3, #9
	bl SpriteSystem_LoadCellResObj
	add r0, r7, #0
	str r0, [sp]
	ldr r0, _02209AF8 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xea
	mov r3, #0xa
	bl SpriteSystem_LoadAnimResObj
	mov r0, #1
	str r0, [sp]
	mov r7, #2
	ldr r0, _02209AFC ; =0x00002711
	str r7, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xea
	mov r3, #0xc
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02209AFC ; =0x00002711
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xea
	mov r3, #0xb
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _02209AFC ; =0x00002711
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xea
	mov r3, #0xd
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _02209AFC ; =0x00002711
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xea
	mov r3, #0xe
	bl SpriteSystem_LoadAnimResObj
	bl sub_02074490
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02209B00 ; =0x00002712
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x14
	bl SpriteSystem_LoadPlttResObj
	mov r1, #0x85
	lsl r1, r1, #2
	strh r0, [r6, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02209AF8: .word 0x00002710
_02209AFC: .word 0x00002711
_02209B00: .word 0x00002712
	thumb_func_end ov96_02209A14

	thumb_func_start ov96_02209B04
ov96_02209B04: ; 0x02209B04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #1
	str r4, [sp]
	ldr r2, _02209BA4 ; =0x00002712
	str r4, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0xea
	mov r3, #0x10
	add r5, r0, #0
	add r6, r1, #0
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	str r0, [sp, #4]
	ldr r0, _02209BA8 ; =0x00002713
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0xea
	mov r3, #0xf
	bl SpriteSystem_LoadPlttResObj
	mov r7, #2
	mov r4, #0
_02209B3C:
	mov r0, #1
	str r0, [sp]
	ldr r0, _02209BA8 ; =0x00002713
	str r7, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0xea
	mov r3, #0x10
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02209BAC ; =0x00002714
	str r7, [sp, #8]
	add r0, r4, r0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0xea
	mov r3, #0xf
	bl SpriteSystem_LoadPlttResObj
	add r4, r4, #1
	cmp r4, #2
	blt _02209B3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02209BA4 ; =0x00002712
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0xea
	mov r3, #0x11
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _02209BA4 ; =0x00002712
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0xea
	mov r3, #0x12
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02209BA4: .word 0x00002712
_02209BA8: .word 0x00002713
_02209BAC: .word 0x00002714
	thumb_func_end ov96_02209B04

