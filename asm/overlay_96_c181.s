	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EAC5C
	.extern ov96_021E8BAC

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
	thumb_func_start ov96_021EAC5C
ov96_021EAC5C: ; 0x021EAC5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov96_021E8BAC
	cmp r4, #8
	bgt _021EAC7E
	bge _021EACAE
	cmp r4, #4
	bgt _021EAD04
	cmp r4, #0
	blt _021EAD04
	beq _021EACAE
	cmp r4, #4
	beq _021EACAE
	pop {r3, r4, r5, pc}
_021EAC7E:
	cmp r4, #0x16
	bgt _021EACAA
	add r1, r4, #0
	sub r1, #0xc
	bmi _021EAD04
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EAC94: ; jump table
	.short _021EACAE - _021EAC94 - 2 ; case 0
	.short _021EACB2 - _021EAC94 - 2 ; case 1
	.short _021EACB2 - _021EAC94 - 2 ; case 2
	.short _021EACB2 - _021EAC94 - 2 ; case 3
	.short _021EACAE - _021EAC94 - 2 ; case 4
	.short _021EACB2 - _021EAC94 - 2 ; case 5
	.short _021EACB2 - _021EAC94 - 2 ; case 6
	.short _021EACB2 - _021EAC94 - 2 ; case 7
	.short _021EACAE - _021EAC94 - 2 ; case 8
	.short _021EACAE - _021EAC94 - 2 ; case 9
	.short _021EACAE - _021EAC94 - 2 ; case 10
_021EACAA:
	cmp r4, #0x1a
	bne _021EAD04
_021EACAE:
	str r4, [r5, #0x38]
	b _021EACB4
_021EACB2:
	pop {r3, r4, r5, pc}
_021EACB4:
	cmp r4, #0x14
	beq _021EACFC
	cmp r4, #0x15
	beq _021EACFC
	ldr r1, [r5, #0x34]
	cmp r1, #4
	bhi _021EACF6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EACCE: ; jump table
	.short _021EACF6 - _021EACCE - 2 ; case 0
	.short _021EACD8 - _021EACCE - 2 ; case 1
	.short _021EACDE - _021EACCE - 2 ; case 2
	.short _021EACE6 - _021EACCE - 2 ; case 3
	.short _021EACEE - _021EACCE - 2 ; case 4
_021EACD8:
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	b _021EAD00
_021EACDE:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	b _021EAD00
_021EACE6:
	add r1, r4, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	b _021EAD00
_021EACEE:
	add r1, r4, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	b _021EAD00
_021EACF6:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_021EACFC:
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
_021EAD00:
	bl Sprite_TryChangeAnimSeq
_021EAD04:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAC5C

