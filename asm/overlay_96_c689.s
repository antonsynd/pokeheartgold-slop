	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022000E4
	.public ov96_02200180
	.public ov96_022002F8
	.extern ov96_021EA2C4
	.extern ov96_021EB2BC
	.extern ov96_021EB2F4
	.extern ov96_021EB334
	.extern ov96_021EB36C
	.extern ov96_021EB3E4
	.extern ov96_021EB408
	.extern ov96_021EB4F4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_021EB5E8
	.extern ov96_022004B4
	.extern ov96_02200C8C
	.extern ov96_0221C718
	.extern ov96_0221C720
	.extern ov96_0221C728

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
	thumb_func_start ov96_022000E4
ov96_022000E4: ; 0x022000E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0220017C ; =ov96_0221C728
	add r5, r1, #0
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	add r4, sp, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r6, #0
	mov r7, #2
_022000FA:
	str r7, [sp]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #9
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #6
	bl ov96_021EB2F4
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB334
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB36C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _022000FA
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0xd
	mov r3, #0x65
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0xa
	mov r3, #0x65
	bl ov96_021EB2F4
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0xc
	mov r3, #0x65
	bl ov96_021EB334
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0xb
	mov r3, #0x65
	bl ov96_021EB36C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220017C: .word ov96_0221C728
	thumb_func_end ov96_022000E4

	thumb_func_start ov96_02200180
ov96_02200180: ; 0x02200180
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #4]
	add r5, r1, #0
	str r2, [sp, #8]
	mov r4, #0
	mov r6, #8
	mov r7, #0xa
_02200190:
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB408
	mov r0, #3
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB408
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	str r6, [sp]
	bl ov96_021EB408
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	str r7, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #4
	blt _02200190
	mov r4, #0
	mov r6, #0x10
	mov r7, #3
_022001D8:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	mov r3, #0x65
	str r6, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #2
	blt _022001D8
	ldr r4, [sp, #4]
	mov r6, #0
	mov r7, #0x65
_022001F2:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	bl ov96_021EB4F4
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #3
	bl ov96_021EB4F4
	str r0, [r4, #0x54]
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #8
	bl ov96_021EB4F4
	str r0, [r4, #0x50]
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #0xa
	bl ov96_021EB4F4
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	add r1, r6, #0
	bl ov96_021EB564
	ldr r0, [r4, #0x54]
	add r1, r6, #4
	bl ov96_021EB564
	ldr r0, [r4, #0x50]
	mov r1, #0xa
	bl ov96_021EB564
	add r6, r6, #1
	add r4, #0x20
	cmp r6, #4
	blt _022001F2
	mov r0, #0x11
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB3E4
	mov r1, #1
	add r4, r0, #0
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r4, #0
	mov r1, #0xb
	bl ov96_021EB564
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
	mov r0, #0x8e
	lsl r0, r0, #0xe
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0x10
	bl ov96_021EB588
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov96_02200C8C
	mov r0, #0
	ldr r4, [sp, #4]
	ldr r7, _022002F0 ; =ov96_0221C718
	ldr r6, _022002F4 ; =ov96_0221C720
	str r0, [sp, #0xc]
_0220028E:
	add r0, r5, #0
	bl ov96_021EB5E8
	ldr r3, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp, #8]
	ldr r3, [r3]
	mov r2, #3
	bl ov96_021EA2C4
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldrb r0, [r7]
	add r1, sp, #0x1c
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	mov r0, #0x8e
	lsl r0, r0, #0xe
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_SetMatrix
	mov r0, #0x5f
	lsl r0, r0, #2
	ldrb r1, [r6]
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	add r7, r7, #1
	add r6, r6, #1
	str r0, [sp, #0xc]
	cmp r0, #6
	blt _0220028E
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022002F0: .word ov96_0221C718
_022002F4: .word ov96_0221C720
	thumb_func_end ov96_02200180

	thumb_func_start ov96_022002F8
ov96_022002F8: ; 0x022002F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r5, r1, #0
	ldr r1, [r6]
	mov r0, #0x14
	bl NARC_New
	str r0, [sp, #0x14]
	bl sub_02074490
	add r1, r0, #0
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r6]
	mov r2, #5
	str r0, [sp, #4]
	mov r0, #0x14
	mov r3, #0x20
	bl GfGfxLoader_GXLoadPal
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0xec
	mov r7, #0
	add r4, r6, #0
	str r0, [sp, #0x10]
_0220032E:
	mov r1, #1
	ldr r0, [r6]
	lsl r1, r1, #0xc
	bl Heap_AllocAtEnd
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1]
	ldrh r0, [r5, #2]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	ldr r2, [sp, #0xc]
	str r0, [sp, #8]
	bl GetMonIconNaixEx
	add r2, r4, #0
	add r2, #0xbc
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [r2]
	bl NARC_ReadWholeMember
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	bl NNS_G2dGetUnpackedBGCharacterData
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r2, #0
	bl GetMonIconPaletteEx
	add r2, r0, #1
	mov r0, #0x47
	add r1, r6, r7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #4
	add r4, r4, #4
	add r5, r5, #4
	str r0, [sp, #0x10]
	cmp r7, #0xc
	blt _0220032E
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	mov r5, #0
	add r4, r6, #0
	add r7, sp, #0x18
_0220039C:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov96_022004B4
	mov r1, #1
	ldr r0, [r4, #0x48]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r1, #1
	ldr r0, [r4, #0x54]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0x2b
	lsl r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x48]
	add r1, r7, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x54]
	add r1, r7, #0
	bl ov96_021EB588
	add r5, r5, #1
	add r4, #0x20
	cmp r5, #4
	blt _0220039C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_022002F8

