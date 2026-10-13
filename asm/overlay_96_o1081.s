	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220EB3C

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
	thumb_func_start ov96_0220EB3C
ov96_0220EB3C: ; 0x0220EB3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r4, [r0, #0xc]
	ldr r5, [r0, #0x10]
	cmp r4, #0
	bne _0220EB4C
	bl GF_AssertFail
_0220EB4C:
	cmp r5, #0
	bne _0220EB54
	bl GF_AssertFail
_0220EB54:
	mov r6, #1
	str r6, [sp]
	ldr r0, _0220EC94 ; =0x00002710
	str r6, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xed
	mov r3, #0x16
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0220EC94 ; =0x00002710
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xed
	mov r3, #0x13
	bl SpriteSystem_LoadPlttResObj
	add r0, r6, #0
	str r0, [sp]
	ldr r0, _0220EC94 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xed
	mov r3, #0x15
	bl SpriteSystem_LoadCellResObj
	add r0, r6, #0
	str r0, [sp]
	ldr r0, _0220EC94 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xed
	mov r3, #0x14
	bl SpriteSystem_LoadAnimResObj
	mov r0, #1
	str r0, [sp]
	mov r6, #2
	ldr r0, _0220EC98 ; =0x00002711
	str r6, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xed
	mov r3, #0x1a
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _0220EC98 ; =0x00002711
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xed
	mov r3, #0x17
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _0220EC98 ; =0x00002711
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xed
	mov r3, #0x19
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _0220EC98 ; =0x00002711
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xed
	mov r3, #0x18
	bl SpriteSystem_LoadAnimResObj
	mov r6, #1
	str r6, [sp]
	ldr r0, _0220EC9C ; =0x00002712
	str r6, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xed
	mov r3, #0x12
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	str r0, [sp, #4]
	ldr r0, _0220EC9C ; =0x00002712
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xed
	mov r3, #0xf
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	mov r6, #2
	ldr r0, _0220ECA0 ; =0x00002713
	str r6, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xed
	mov r3, #0x12
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0220ECA0 ; =0x00002713
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xed
	mov r3, #0xf
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _0220EC9C ; =0x00002712
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xed
	mov r3, #0x11
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _0220EC9C ; =0x00002712
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xed
	mov r3, #0x10
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220EC94: .word 0x00002710
_0220EC98: .word 0x00002711
_0220EC9C: .word 0x00002712
_0220ECA0: .word 0x00002713
	thumb_func_end ov96_0220EB3C

