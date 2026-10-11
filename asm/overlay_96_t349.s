	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F5A88
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E8318
	.extern ov96_021E8A20
	.extern ov96_021EB144
	.extern ov96_021EB63C
	.extern ov96_021F5B60
	.extern ov96_021F6424
	.extern ov96_021F6600
	.extern ov96_021F6BB0
	.extern ov96_021F70AC
	.extern ov96_021F7194
	.extern ov96_021F7598

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
	thumb_func_start ov96_021F5A88
ov96_021F5A88: ; 0x021F5A88
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r6, #0
	bl PokeathlonCourse_GetDataCopyArea
	bl ov96_021E8A20
	add r5, r0, #0
	ldr r1, _021F5B58 ; =0x00000142
	mov r0, #0
	strb r0, [r4, r1]
	sub r0, r1, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F5AB6
	sub r0, r1, #6
	ldr r0, [r4, r0]
	sub r2, r0, #1
	sub r0, r1, #6
	str r2, [r4, r0]
_021F5AB6:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bgt _021F5AC4
	mov r0, #1
	b _021F5AC6
_021F5AC4:
	mov r0, #0
_021F5AC6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021F5B1C
	ldr r0, [r4, #0x60]
	mov r1, #1
	mov r5, #0
	bl ov96_021EB63C
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov96_021EB144
	add r1, r5, #0
	add r2, r4, #0
_021F5AE6:
	add r0, r2, #0
	add r0, #0xb0
	ldrh r0, [r0]
	add r1, r1, #1
	add r2, #0x38
	add r5, r5, r0
	cmp r1, #3
	blt _021F5AE6
	ldr r0, _021F5B5C ; =0x000003E7
	cmp r5, r0
	ble _021F5AFE
	add r5, r0, #0
_021F5AFE:
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ov96_021E8318
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov96_021F70AC
	add r0, r6, #0
	bl ov96_021F5B60
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F5B1C:
	add r0, r6, #0
	add r1, r4, #0
	bl ov96_021F6600
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov96_021F6424
	add r0, r4, #0
	bl ov96_021F6BB0
	add r0, r6, #0
	add r1, r4, #0
	bl ov96_021F7194
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl ov96_021F7598
	add r0, r6, #0
	bl ov96_021F5B60
	ldr r0, _021F5B58 ; =0x00000142
	ldrb r0, [r4, r0]
	str r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021F5B58: .word 0x00000142
_021F5B5C: .word 0x000003E7
	thumb_func_end ov96_021F5A88

