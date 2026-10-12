	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02210324
	.extern ov96_021E5F24
	.extern ov96_0221058C

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
	thumb_func_start ov96_02210324
ov96_02210324: ; 0x02210324
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	add r4, r2, #0
	bl ov96_021E5F24
	cmp r7, r0
	bne _02210386
	add r0, r5, #0
	add r0, #0xe6
	ldrh r0, [r0]
	cmp r4, r0
	beq _02210386
	cmp r0, r4
	bls _02210352
	add r0, r5, #0
	add r0, #0xe5
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xe5
	strb r1, [r0]
_02210352:
	add r0, r5, #0
	add r0, #0xe5
	ldrb r0, [r0]
	lsl r0, r0, #7
	add r1, r4, r0
	ldr r0, _0221038C ; =0x000003E7
	cmp r1, r0
	ble _02210366
	add r1, r0, #0
	b _0221036C
_02210366:
	cmp r1, #0
	bge _0221036C
	mov r1, #0
_0221036C:
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov96_0221058C
	add r0, r5, #0
	add r0, #0xe6
	ldrh r0, [r0]
	add r5, #0xe6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	strh r4, [r5]
_02210386:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221038C: .word 0x000003E7
	thumb_func_end ov96_02210324

