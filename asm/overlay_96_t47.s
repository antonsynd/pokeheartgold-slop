	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E7320
	.public ov96_021E73F8
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
	thumb_func_start ov96_021E7320
ov96_021E7320: ; 0x021E7320
	push {r3, r4, r5, lr}
	mov r1, #0xf3
	add r4, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r3, [r2]
	cmp r3, #0
	bne _021E733A
	mov r1, #0x22
	bl PokeathlonCourse_SetStateField07
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E733A:
	add r0, r1, #0
	sub r0, #0x18
	ldr r3, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	add r0, r4, r0
	cmp r3, r0
	bne _021E7356
	add r0, r1, #0
	sub r0, #0x18
	str r2, [r4, r0]
	mov r0, #0
	sub r1, #0xc
	str r0, [r4, r1]
_021E7356:
	ldr r3, _021E73F4 ; =0x000003D1
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
	beq _021E7392
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
	mov r1, #0x22
	bl PokeathlonCourse_SetStateField07
	b _021E73EE
_021E7392:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E73D8
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
_021E73CA:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r5]
	add r5, r5, #1
	sub r2, r2, #1
	bne _021E73CA
	b _021E73EE
_021E73D8:
	bl ov96_021E9A14
	mov r3, #0xa3
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, r3, #4
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
_021E73EE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E73F4: .word 0x000003D1
	thumb_func_end ov96_021E7320

	thumb_func_start ov96_021E73F8
ov96_021E73F8: ; 0x021E73F8
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x1e
	add r5, r0, #0
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	mov r1, #0
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E7416
	bl GF_AssertFail
_021E7416:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_ApricornBox_Get
	add r7, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_PlayerData_GetProfile
	str r0, [sp]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	bl PokeathlonSave_GetUnkB00
	add r6, r0, #0
	bl sub_02031B10
	lsl r4, r0, #2
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl Heap_AllocAtEnd
	ldr r1, _021E74A4 ; =0x00000D68
	add r2, r4, #0
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl memset
	mov r3, #0xa1
	lsl r3, r3, #2
	ldr r1, [sp]
	ldr r2, [r6, #0x70]
	ldr r3, [r5, r3]
	add r0, r7, #0
	bl sub_020320E0
	ldr r1, _021E74A8 ; =0x00000D64
	str r0, [r5, r1]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E7496
	add r0, r5, #0
	mov r1, #0xe
	bl PokeathlonCourse_SetStateTransitionType
	add r0, r5, #0
	mov r1, #0x23
	bl PokeathlonCourse_SetStateField07
	b _021E749E
_021E7496:
	add r0, r5, #0
	mov r1, #0x25
	bl PokeathlonCourse_SetStateField07
_021E749E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E74A4: .word 0x00000D68
_021E74A8: .word 0x00000D64
	thumb_func_end ov96_021E73F8

