	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02203CE4
	.public ov96_02203D74
	.public ov96_02203DCC
	.public ov96_02203E30
	.extern ov96_021E634C
	.extern ov96_021EB408
	.extern ov96_021EB4F4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_021EB594
	.extern ov96_021EB630
	.extern ov96_02203F0C
	.extern ov96_02203F50

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

	thumb_func_start ov96_02203D74
ov96_02203D74: ; 0x02203D74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r5, sp, #0x18
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r6, #0
	add r4, r7, #0
	str r5, [sp, #0x14]
_02203D86:
	ldr r0, [r4, #0x54]
	bl ov96_021EB594
	ldr r1, [r0]
	ldr r3, [sp, #0xc]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	strh r1, [r5]
	ldr r1, [r0, #4]
	ldr r2, [sp, #0x10]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #2]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, [r7, #4]
	bl ov96_021E634C
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _02203D86
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02203D74

	thumb_func_start ov96_02203DCC
ov96_02203DCC: ; 0x02203DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	mov r0, #0
	add r5, r1, #0
	str r0, [sp, #0xc]
	add r4, r6, #0
	add r7, sp, #0x10
_02203DDC:
	ldrb r0, [r5, #6]
	mov r3, #0
	str r0, [sp]
	ldrh r0, [r5, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	str r0, [sp, #8]
	ldrh r1, [r5]
	ldrb r2, [r5, #7]
	add r0, sp, #0x10
	bl GetMonSpriteCharAndPlttNarcIdsEx
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldrh r0, [r7]
	ldrh r1, [r7, #2]
	ldr r2, [r6]
	ldr r3, [r5, #0xc]
	bl sub_0201457C
	str r0, [r4, #0x24]
	ldrh r0, [r7]
	ldrh r1, [r7, #4]
	ldr r2, [r6]
	bl sub_02014450
	str r0, [r4, #0x28]
	ldr r0, [sp, #0xc]
	add r5, #0x10
	add r0, r0, #1
	add r4, #8
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _02203DDC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02203DCC

	thumb_func_start ov96_02203E30
ov96_02203E30: ; 0x02203E30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r4, #0
	mov r5, #2
	mov r6, #3
_02203E40:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0x65
	str r5, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #3
	blt _02203E40
	mov r0, #0x10
	ldr r6, [sp, #8]
	ldr r4, [sp, #4]
	mov r5, #0
	str r0, [sp, #0xc]
_02203E5E:
	add r0, r7, #0
	mov r1, #0x65
	mov r2, #2
	bl ov96_021EB4F4
	str r0, [r4, #0x54]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	mov r2, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	str r0, [sp]
	ldrh r3, [r6, #2]
	ldrh r0, [r6]
	ldrb r1, [r6, #7]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl GetMonPicHeightBySpeciesGenderForm
	mov r1, #0x5e
	lsl r1, r1, #2
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x54]
	add r1, sp, #0x10
	bl ov96_021EB588
	ldr r0, [r4, #0x54]
	add r1, r5, #1
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r4, #0x54]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r1, #0x13
	ldr r0, [r4, #0x54]
	sub r1, r1, r5
	bl ov96_021EB630
	add r0, r7, #0
	mov r1, #0x65
	mov r2, #5
	bl ov96_021EB4F4
	str r0, [r4, #0x60]
	mov r1, #0
	bl ov96_021EB564
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x60]
	add r1, sp, #0x10
	bl ov96_021EB588
	ldr r0, [r4, #0x60]
	mov r1, #4
	bl ov96_021EB630
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, #0x32
	add r6, #0x10
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r5, #3
	blt _02203E5E
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov96_02203DCC
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl ov96_02203F50
	ldr r0, [sp, #4]
	bl ov96_02203F0C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_02203E30

