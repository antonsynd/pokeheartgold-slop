	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220D360

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
	thumb_func_start ov96_0220D360
ov96_0220D360: ; 0x0220D360
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0220D370
	mov r1, #1
	b _0220D374
_0220D370:
	mov r1, #0
	mvn r1, r1
_0220D374:
	mov r0, #0xc
	ldrsb r0, [r5, r0]
	mov r2, #3
	add r4, r0, #0
	mul r4, r1
	add r3, r4, #0
	ldr r0, [r5, #4]
	mov r1, #1
	add r3, #8
	bl ScheduleSetBgPosText
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #3
	add r3, r4, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5]
	bl SpriteSystem_GetRenderer
	neg r2, r4
	mov r1, #0
	lsl r2, r2, #0xc
	bl G2dRenderer_SetMainSurfaceCoords
	mov r0, #0xd
	ldrsb r0, [r5, r0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	cmp r0, #1
	bne _0220D3C2
	mov r0, #0xc
	ldrsb r0, [r5, r0]
	sub r0, r0, #1
	strb r0, [r5, #0xc]
_0220D3C2:
	ldr r0, [r5, #0x10]
	mov r1, #1
	eor r0, r1
	str r0, [r5, #0x10]
	mov r0, #0xd
	ldrsb r2, [r5, r0]
	sub r2, r2, #1
	strb r2, [r5, #0xd]
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bgt _0220D406
	ldr r0, [r5, #4]
	mov r2, #3
	mov r3, #8
	bl ScheduleSetBgPosText
	mov r1, #0
	ldr r0, [r5, #4]
	mov r2, #3
	add r3, r1, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5]
	bl SpriteSystem_GetRenderer
	mov r1, #0
	add r2, r1, #0
	bl G2dRenderer_SetMainSurfaceCoords
	mov r0, #0
	str r0, [r5, #8]
	add r0, r6, #0
	bl SysTask_Destroy
_0220D406:
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_0220D360

