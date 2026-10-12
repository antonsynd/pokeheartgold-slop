	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02214418

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
	thumb_func_start ov96_02214418
ov96_02214418: ; 0x02214418
	push {r4, r5, r6, r7}
	ldr r1, _02214484 ; =0x00000738
	mov r5, #0
	ldr r2, [r0, r1]
	mov r1, #0x4b
	lsl r1, r1, #2
	cmp r2, r1
	bgt _0221443E
	ldr r1, _02214488 ; =0x00000818
	add r3, r5, #0
_0221442C:
	add r2, r0, r5
	strb r3, [r2, r1]
	add r2, r5, #1
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	cmp r5, #4
	blo _0221442C
	pop {r4, r5, r6, r7}
	bx lr
_0221443E:
	ldr r2, _0221448C ; =0x00000814
	add r3, r5, #0
_02214442:
	add r1, r0, r3
	ldrb r1, [r1, r2]
	cmp r5, r1
	bhs _0221444C
	add r5, r1, #0
_0221444C:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _02214442
	mov r6, #0
	ldr r1, _0221448C ; =0x00000814
	add r2, r6, #0
	mov r3, #1
_0221445E:
	cmp r5, #0
	beq _02214470
	add r4, r0, r6
	ldrb r7, [r4, r1]
	cmp r5, r7
	bne _02214470
	ldr r7, _02214488 ; =0x00000818
	strb r3, [r4, r7]
	b _02214476
_02214470:
	ldr r4, _02214488 ; =0x00000818
	add r7, r0, r6
	strb r2, [r7, r4]
_02214476:
	add r4, r6, #1
	lsl r4, r4, #0x18
	lsr r6, r4, #0x18
	cmp r6, #4
	blo _0221445E
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_02214484: .word 0x00000738
_02214488: .word 0x00000818
_0221448C: .word 0x00000814
	thumb_func_end ov96_02214418

