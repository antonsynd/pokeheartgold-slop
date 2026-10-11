	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E6E38
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateTransitionType
	.extern ov96_021E5F24
	.extern ov96_021E87B4
	.extern ov96_021E8A20
	.extern ov96_021E9A14

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
	thumb_func_start ov96_021E6E38
ov96_021E6E38: ; 0x021E6E38
	push {r3, r4, r5, lr}
	mov r1, #0xf3
	add r4, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r3, [r2]
	cmp r3, #0
	bne _021E6E52
	mov r1, #0x18
	bl PokeathlonCourse_SetStateField07
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6E52:
	add r0, r1, #0
	sub r0, #0x18
	ldr r3, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	add r0, r4, r0
	cmp r3, r0
	bne _021E6E6E
	add r0, r1, #0
	sub r0, #0x18
	str r2, [r4, r0]
	mov r0, #0
	sub r1, #0xc
	str r0, [r4, r1]
_021E6E6E:
	ldr r3, _021E6F14 ; =0x000003D1
	add r0, r4, #0
	sub r2, r3, #5
	add r1, r4, r3
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021E6EB2
	add r0, r4, #0
	mov r1, #0
	bl PokeathlonCourse_SetField1F4
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x10
	str r2, [r4, r1]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x10
	bl PokeathlonCourse_SetStateTransitionType
	add r0, r4, #0
	mov r1, #0x13
	bl PokeathlonCourse_SetStateField07
	b _021E6F0E
_021E6EB2:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E6EF8
	bl ov96_021E9A14
	mov r3, #0xad
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, #0x2c
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	mov r2, #0x28
_021E6EEA:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r5]
	add r5, r5, #1
	sub r2, r2, #1
	bne _021E6EEA
	b _021E6F0E
_021E6EF8:
	bl ov96_021E9A14
	mov r3, #0xa3
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, r3, #4
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
_021E6F0E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E6F14: .word 0x000003D1
	thumb_func_end ov96_021E6E38

