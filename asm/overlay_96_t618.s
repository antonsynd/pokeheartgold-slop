	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220B8F0
	.extern ov96_021EAC5C

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
	thumb_func_start ov96_0220B8F0
ov96_0220B8F0: ; 0x0220B8F0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	add r6, #0x14
	add r7, r1, #0
_0220B8FC:
	ldr r0, [r6, #0x38]
	mov r1, #0xc
	lsl r0, r0, #7
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #4]
	bl ov96_021EAC5C
	ldr r0, [r6, #0x34]
	cmp r0, #0
	beq _0220B91C
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r6, #0x34]
_0220B91C:
	mov r4, #0
	add r5, r6, #0
_0220B920:
	ldr r0, [r5, #0x1c]
	add r1, r7, #0
	bl ManagedSprite_SetAnimateFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0220B920
	ldr r0, [sp]
	add r6, #0x3c
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #3
	blt _0220B8FC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220B8F0

