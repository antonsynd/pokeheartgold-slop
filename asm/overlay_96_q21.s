	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E667C
	.extern ov96_021E839C

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
	thumb_func_start ov96_021E667C
ov96_021E667C: ; 0x021E667C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021E6780 ; =0x0000070D
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #4
	bhi _021E677A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E6696: ; jump table
	.short _021E66A0 - _021E6696 - 2 ; case 0
	.short _021E66EA - _021E6696 - 2 ; case 1
	.short _021E6706 - _021E6696 - 2 ; case 2
	.short _021E6754 - _021E6696 - 2 ; case 3
	.short _021E6774 - _021E6696 - 2 ; case 4
_021E66A0:
	add r0, r1, #7
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _021E6784 ; =0x00000899
	bl PlaySE
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp]
	ldr r0, _021E6788 ; =0x0000070E
	ldrh r1, [r4, r0]
	sub r0, r0, #6
	add r1, #0x48
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r0, _021E678C ; =0x00000708
	mov r1, #3
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _021E678C ; =0x00000708
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _021E6780 ; =0x0000070D
	mov r1, #1
	strb r1, [r4, r0]
	b _021E677A
_021E66EA:
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x3c
	bls _021E677A
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #2
	strb r0, [r4, r1]
	b _021E677A
_021E6706:
	ldr r1, _021E6790 ; =0x00000D6C
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021E6710
	blx r1
_021E6710:
	add r0, r4, #0
	bl ov96_021E839C
	cmp r0, #0
	beq _021E6738
	ldr r0, _021E6794 ; =0x00000898
	bl PlaySE
	mov r0, #0x71
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x71
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
_021E6738:
	ldr r0, _021E6798 ; =0x00000718
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl GfGfx_EngineATogglePlanes
	ldr r0, _021E6790 ; =0x00000D6C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _021E6780 ; =0x0000070D
	mov r1, #3
	strb r1, [r4, r0]
	b _021E677A
_021E6754:
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x78
	bls _021E677A
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #4
	strb r0, [r4, r1]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E6774:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E677A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021E6780: .word 0x0000070D
_021E6784: .word 0x00000899
_021E6788: .word 0x0000070E
_021E678C: .word 0x00000708
_021E6790: .word 0x00000D6C
_021E6794: .word 0x00000898
_021E6798: .word 0x00000718
	thumb_func_end ov96_021E667C

