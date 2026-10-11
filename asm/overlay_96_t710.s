	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02214ABC

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
	thumb_func_start ov96_02214ABC
ov96_02214ABC: ; 0x02214ABC
	push {r3, r4, r5, r6}
	sub sp, #8
	add r1, sp, #0
	add r5, r0, #0
	mov r4, #0
	add r1, #3
	add r0, sp, #0
_02214ACA:
	lsl r2, r4, #2
	add r2, r5, r2
	ldr r3, [r2, #0x18]
	add r2, r3, #0
	add r6, r3, #0
	add r2, #0x73
	add r6, #0x70
	ldrb r2, [r2]
	ldrb r6, [r6]
	add r3, #0x75
	add r6, r2, r6
	strb r6, [r1, r4]
	ldrb r3, [r3]
	add r2, r2, r3
	strb r2, [r0, r4]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #3
	blo _02214ACA
	add r3, sp, #0
	mov r0, #0
	mov r4, #1
	add r3, #3
_02214AFA:
	add r1, r3, r4
	sub r1, r1, #1
	ldrb r2, [r1]
	ldrb r1, [r3, r4]
	cmp r2, r1
	bhs _02214B08
	add r0, r4, #0
_02214B08:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #3
	blo _02214AFA
	cmp r0, #0
	add r1, sp, #0
	bne _02214B2C
	ldrb r2, [r1, #1]
	ldrb r1, [r1, #2]
	cmp r2, r1
	blo _02214B26
	mov r2, #1
	mov r1, #2
	b _02214B56
_02214B26:
	mov r2, #2
	mov r1, #1
	b _02214B56
_02214B2C:
	cmp r0, #1
	bne _02214B44
	ldrb r2, [r1]
	ldrb r1, [r1, #2]
	cmp r2, r1
	blo _02214B3E
	mov r2, #0
	mov r1, #2
	b _02214B56
_02214B3E:
	mov r2, #2
	mov r1, #0
	b _02214B56
_02214B44:
	ldrb r2, [r1]
	ldrb r1, [r1, #1]
	cmp r2, r1
	blo _02214B52
	mov r2, #0
	mov r1, #1
	b _02214B56
_02214B52:
	mov r2, #1
	mov r1, #0
_02214B56:
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	str r0, [r5, #4]
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	str r0, [r5, #0xc]
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	str r0, [r5, #0x14]
	add sp, #8
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov96_02214ABC

