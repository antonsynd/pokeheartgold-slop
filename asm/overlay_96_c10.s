	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E637C
	.extern ov96_021E65D8
	.extern ov96_021E661C

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
	thumb_func_start ov96_021E637C
ov96_021E637C: ; 0x021E637C
	push {r3, r4, r5, lr}
	ldr r1, _021E643C ; =0x00000729
	add r5, r0, #0
	ldrb r2, [r5, r1]
	mov r4, #0
	cmp r2, #0
	beq _021E6394
	cmp r2, #1
	beq _021E63AA
	cmp r2, #2
	beq _021E63C4
	b _021E6438
_021E6394:
	ldr r0, _021E6440 ; =0x0000089A
	bl PlaySE
	add r0, r5, #0
	bl ov96_021E65D8
	ldr r0, _021E643C ; =0x00000729
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021E6438
_021E63AA:
	bl ov96_021E661C
	cmp r0, #0
	beq _021E6438
	ldr r0, _021E643C ; =0x00000729
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #7
	add r1, r4, #0
	bl sub_020053A8
	b _021E6438
_021E63C4:
	sub r1, #0x1d
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _021E63E8
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _021E6448 ; =0x00000708
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	b _021E6412
_021E63E8:
	cmp r0, #0x15
	bne _021E63FE
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	b _021E6412
_021E63FE:
	cmp r0, #0x2a
	bne _021E6412
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #2
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
_021E6412:
	ldr r0, _021E644C ; =0x0000070C
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0x3f
	bls _021E6438
	ldr r0, _021E6450 ; =0x00000892
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _021E644C ; =0x0000070C
	mov r1, #0
	strb r1, [r5, r0]
	mov r4, #1
_021E6438:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E643C: .word 0x00000729
_021E6440: .word 0x0000089A
_021E6444: .word 0x0000089D
_021E6448: .word 0x00000708
_021E644C: .word 0x0000070C
_021E6450: .word 0x00000892
	thumb_func_end ov96_021E637C

