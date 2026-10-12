	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02219460
	.extern ov96_0221862C

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
	thumb_func_start ov96_02219460
ov96_02219460: ; 0x02219460
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [r0, #4]
	add r4, r0, #0
	ldr r1, [r1, #8]
	add r7, r2, #0
	asr r1, r1, #0xc
	add r4, #0x5f
	cmp r1, #0x1e
	bge _02219478
	mov r5, #1
	b _0221947A
_02219478:
	mov r5, #0
_0221947A:
	bl ov96_0221862C
	cmp r0, #0
	beq _0221948E
	cmp r5, #0
	beq _0221948A
	mov r0, #1
	b _02219490
_0221948A:
	mov r0, #0
	b _02219490
_0221948E:
	mov r0, #3
_02219490:
	cmp r7, #0
	bne _02219498
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02219498:
	ldr r1, [r6]
	lsl r2, r1, #0x11
	lsr r2, r2, #0x1f
	beq _022194BA
	cmp r0, #1
	bhi _022194AA
	mov r0, #2
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_022194AA:
	cmp r0, #3
	bne _022194B4
	mov r0, #4
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_022194B4:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_022194BA:
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1f
	bne _022194C2
	strb r0, [r4]
_022194C2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_02219460

