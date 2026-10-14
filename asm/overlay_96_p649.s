	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F8F94
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern ov96_021EB408
	.extern ov96_021EB4F4
	.extern ov96_021EB52C
	.extern ov96_021EB5B8
	.extern ov96_021F9134

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
	thumb_func_start ov96_021F8F94
ov96_021F8F94: ; 0x021F8F94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x28]
	mov r0, #8
	str r0, [sp, #0x24]
	add r0, r2, #0
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	add r0, r2, #0
	add r0, #0x18
	lsl r0, r0, #0xc
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp, #0x1c]
_021F8FB8:
	mov r0, #3
	str r0, [sp]
	ldr r0, [r6, #4]
	mov r1, #0
	mov r2, #2
	mov r3, #0x68
	bl ov96_021EB408
	mov r1, #0
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x28]
	add r4, r0, #0
	lsl r1, r1, #0xc
	str r1, [sp, #0x38]
	ldr r1, [sp, #0x20]
	str r1, [sp, #0x3c]
	add r1, sp, #0x38
	bl Sprite_SetMatrix
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	bl Sprite_SetPalIndexRespectVramOffset
	add r0, r4, #0
	mov r1, #2
	bl Sprite_SetDrawPriority
	ldr r5, [sp, #0x24]
	mov r7, #0
_021F9002:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #4]
	mov r1, #0
	mov r2, #2
	mov r3, #0x68
	bl ov96_021EB408
	mov r1, #0
	str r1, [sp, #0x40]
	lsl r1, r5, #0xc
	str r1, [sp, #0x38]
	ldr r1, [sp, #0x1c]
	add r4, r0, #0
	str r1, [sp, #0x3c]
	add r1, sp, #0x38
	bl Sprite_SetMatrix
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetDrawPriority
	add r7, r7, #1
	add r5, #0x10
	cmp r7, #3
	blt _021F9002
	ldr r0, [sp, #0x28]
	add r0, #0x40
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, #0x40
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #4
	blt _021F8FB8
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	str r0, [sp, #0x30]
	add r0, #0x24
	str r0, [sp, #0x30]
	add r0, r6, #0
	str r0, [sp, #0x2c]
	add r0, #0x34
	add r7, r6, #0
	str r0, [sp, #0x2c]
_021F9072:
	ldr r0, [r6, #4]
	mov r1, #0x68
	mov r2, #3
	bl ov96_021EB4F4
	ldr r1, [sp, #0x30]
	str r0, [r1]
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r4, [sp, #0x30]
	mov r5, #0
_021F908C:
	ldr r0, [r6, #4]
	mov r1, #0x68
	mov r2, #4
	bl ov96_021EB4F4
	mov r1, #1
	add r2, r1, #0
	str r0, [r4, #4]
	bl ov96_021EB52C
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _021F908C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	bl PokeathlonCourse_GetPlayerProfileFromData
	ldr r1, [r6]
	bl PlayerProfile_GetPlayerName_NewString
	add r4, r0, #0
	ldr r0, [r7, #0x24]
	bl ov96_021EB5B8
	mov r1, #0
	str r1, [sp]
	sub r1, #0x10
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, r6, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, #0xc
	add r2, r4, #0
	mov r3, #2
	bl ov96_021F9134
	add r0, r4, #0
	bl String_Delete
	ldr r0, [r7, #0x34]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [r7, #0x48]
	ldr r0, [sp, #0x30]
	add r7, #0x28
	add r0, #0x28
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, #0x28
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _021F9072
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8F94

