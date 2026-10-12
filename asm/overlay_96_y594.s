	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02203CE4

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
	thumb_func_start ov96_02203CE4
ov96_02203CE4: ; 0x02203CE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _02203D4C
	add r0, r5, #0
	add r0, #0x71
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x71
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x71
	ldrb r0, [r0]
	mov r1, #0x1f
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r3
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #3
	neg r4, r1
	cmp r0, #0xa
	blo _02203D26
	add r0, r5, #0
	mov r4, #0
	add r0, #0x70
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x71
	strb r4, [r0]
_02203D26:
	ldr r0, [r5, #8]
	mov r1, #4
	mov r2, #3
	add r3, r4, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5, #8]
	mov r1, #5
	mov r2, #3
	add r3, r4, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5, #8]
	mov r1, #6
	mov r2, #3
	add r3, r4, #0
	bl ScheduleSetBgPosText
	pop {r3, r4, r5, pc}
_02203D4C:
	ldr r0, [r5, #8]
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5, #8]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5, #8]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl ScheduleSetBgPosText
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_02203CE4

