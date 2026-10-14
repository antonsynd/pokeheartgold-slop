	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EAA24
	.extern ov96_021E8B88
	.extern ov96_021E8B8C
	.extern ov96_021E90FC
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

