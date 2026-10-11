	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EAA24
	.public ov96_021EAA88
	.extern ov96_021E8B88
	.extern ov96_021E8B8C
	.extern ov96_021E90FC
	.extern ov96_021E9D08
	.extern ov96_021EABA8

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
	thumb_func_start ov96_021EAA24
ov96_021EAA24: ; 0x021EAA24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r1, #0x14]
	str r1, [sp, #4]
	bl ov96_021E8B88
	cmp r0, #0
	beq _021EAA82
	ldr r0, [sp, #4]
	mov r4, #0
	ldr r7, [r0, #8]
	ldr r0, [r0, #4]
	cmp r0, #0
	ble _021EAA76
	ldr r5, [sp, #4]
	add r6, r5, #0
	add r6, #0x1c
_021EAA48:
	ldr r0, [sp, #4]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021E8B8C
	str r0, [r5, #0x1c]
	add r0, r6, #0
	add r1, r7, #0
	bl ov96_021EABA8
	ldr r0, [r5, #0x1c]
	add r7, r7, #1
	bl ov96_021E90FC
	str r0, [r5, #0x44]
	ldr r0, [sp, #4]
	add r4, r4, #1
	ldr r0, [r0, #4]
	add r5, #0x44
	add r6, #0x44
	cmp r4, r0
	blt _021EAA48
_021EAA76:
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r0, [sp]
	bl SysTask_Destroy
_021EAA82:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAA24

	thumb_func_start ov96_021EAA88
ov96_021EAA88: ; 0x021EAA88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r6, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x18]
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0
	str r7, [sp]
	mvn r1, r1
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x30]
	add r3, r7, #0
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x34]
	str r2, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, sp, #0x68
	add r1, r7, #0
	mov r2, #0x17
	bl CreateSpriteResourcesHeader
	cmp r4, #3
	bne _021EAAEE
	mov r4, #1
_021EAAEE:
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r0, [sp, #0x38]
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	ldr r0, [r5]
	str r0, [sp, #0x64]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	str r4, [sp, #0x60]
	bl Sprite_CreateAffine
	add r4, r0, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EAA88

