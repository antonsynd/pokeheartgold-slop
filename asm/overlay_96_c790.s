	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02207E7C
	.public ov96_02207F18
	.public ov96_022080F4
	.extern ov96_021EA2C4
	.extern ov96_021EB2BC
	.extern ov96_021EB2F4
	.extern ov96_021EB334
	.extern ov96_021EB36C
	.extern ov96_021EB3E4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_021EB5E8
	.extern ov96_0220831C
	.extern ov96_02208914
	.extern ov96_0221CBC4
	.extern ov96_0221CBC8
	.extern ov96_0221CBCC
	.extern ov96_0221CBF4

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
	thumb_func_start ov96_02207E7C
ov96_02207E7C: ; 0x02207E7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _02207F14 ; =ov96_0221CBCC
	add r5, r1, #0
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r4, sp, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r6, #0
	mov r7, #2
_02207E92:
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
	blt _02207E92
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xe2
	mov r2, #0xd
	mov r3, #0x65
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xe2
	mov r2, #0xa
	mov r3, #0x65
	bl ov96_021EB2F4
	add r0, r5, #0
	mov r1, #0xe2
	mov r2, #0xc
	mov r3, #0x65
	bl ov96_021EB334
	add r0, r5, #0
	mov r1, #0xe2
	mov r2, #0xb
	mov r3, #0x65
	bl ov96_021EB36C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02207F14: .word ov96_0221CBCC
	thumb_func_end ov96_02207E7C

	thumb_func_start ov96_02207F18
ov96_02207F18: ; 0x02207F18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #4]
	mov r0, #0
	add r5, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	mov r1, #0x4f
	lsl r1, r1, #2
	add r7, r0, r1
	add r1, #0x40
	str r0, [sp, #0x14]
	add r0, r0, r1
	str r2, [sp, #8]
	str r0, [sp, #0x10]
_02207F36:
	mov r2, #2
	add r0, r5, #0
	mov r1, #3
	mov r3, #0x65
	str r2, [sp]
	bl ov96_021EB3E4
	ldr r1, [sp, #0x14]
	mov r2, #2
	str r0, [r1, #0x38]
	mov r1, #3
	add r0, r5, #0
	mov r3, #0x65
	str r1, [sp]
	bl ov96_021EB3E4
	ldr r1, [sp, #0x14]
	mov r2, #2
	str r0, [r1, #0x40]
	mov r0, #0xa
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	mov r3, #0x65
	bl ov96_021EB3E4
	ldr r1, [sp, #0x14]
	mov r3, #0x65
	str r0, [r1, #0x3c]
	mov r0, #0x13
	mov r1, #2
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	bl ov96_021EB3E4
	str r0, [r7, #8]
	mov r1, #0
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r7, #8]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #0x15
	mov r1, #2
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x65
	bl ov96_021EB3E4
	str r0, [r7, #4]
	mov r1, #9
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r7, #4]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #0x14
	mov r1, #2
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x65
	bl ov96_021EB3E4
	str r0, [r7]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x38]
	add r1, #0x13
	bl ov96_021EB564
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x40]
	add r1, r1, #5
	bl ov96_021EB564
	ldr r0, [r7]
	mov r1, #3
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r7]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r4, [sp, #0x10]
	mov r6, #0
_02207FF2:
	mov r0, #0x18
	mov r1, #2
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x65
	bl ov96_021EB3E4
	mov r1, #2
	stmia r4!, {r0}
	bl ov96_021EB564
	add r6, r6, #1
	cmp r6, #2
	blt _02207FF2
	ldr r0, [sp, #0x14]
	add r7, #0x10
	add r0, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _02207F36
	ldr r3, _022080E8 ; =ov96_0221CBF4
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #3
	str r0, [r2]
	mov r0, #0x16
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB3E4
	mov r2, #0x4e
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	mov r1, #4
	bl ov96_021EB564
	mov r1, #0x4e
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	mov r1, #0x4e
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, sp, #0x1c
	bl ov96_021EB588
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov96_02208914
	mov r0, #0
	ldr r4, [sp, #4]
	ldr r7, _022080EC ; =ov96_0221CBC4
	ldr r6, _022080F0 ; =ov96_0221CBC8
	str r0, [sp, #0xc]
_02208086:
	add r0, r5, #0
	bl ov96_021EB5E8
	ldr r3, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp, #8]
	ldr r3, [r3]
	mov r2, #3
	bl ov96_021EA2C4
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldrb r0, [r7]
	add r1, sp, #0x28
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	mov r0, #0xb1
	lsl r0, r0, #0xe
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_SetMatrix
	mov r0, #0x6d
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
	cmp r0, #2
	blt _02208086
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_022080E8: .word ov96_0221CBF4
_022080EC: .word ov96_0221CBC4
_022080F0: .word ov96_0221CBC8
	thumb_func_end ov96_02207F18

	thumb_func_start ov96_022080F4
ov96_022080F4: ; 0x022080F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #8]
	add r5, r1, #0
	ldr r1, [sp, #8]
	mov r0, #0x14
	ldr r1, [r1]
	bl NARC_New
	str r0, [sp, #0x20]
	bl sub_02074490
	add r1, r0, #0
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r2, #5
	ldr r0, [r0]
	mov r3, #0xc0
	str r0, [sp, #4]
	mov r0, #0x14
	bl GfGfxLoader_GXLoadPal
	ldr r4, [sp, #8]
	mov r7, #0
	add r6, r4, #0
	add r6, #0xcc
_0220812A:
	ldr r0, [sp, #8]
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bl Heap_AllocAtEnd
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	ldrh r0, [r5, #2]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r5]
	ldr r2, [sp, #0x14]
	str r0, [sp, #0x10]
	bl GetMonIconNaixEx
	add r2, r4, #0
	add r2, #0x9c
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	ldr r2, [r2]
	bl NARC_ReadWholeMember
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r6, #0
	bl NNS_G2dGetUnpackedBGCharacterData
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r2, #0
	bl GetMonIconPaletteEx
	add r1, r0, #6
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, r0, r7
	add r0, #0xfc
	add r7, r7, #1
	strb r1, [r0]
	add r5, r5, #4
	add r6, r6, #4
	cmp r7, #0xc
	blt _0220812A
	ldr r0, [sp, #0x20]
	bl NARC_Delete
	mov r0, #0
	ldr r6, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x70
	str r0, [sp, #0x1c]
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r7, r6, #0
_022081A0:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov96_0220831C
	mov r1, #1
	ldr r0, [r6, #0x38]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r1, #1
	ldr r0, [r6, #0x40]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x24
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0x35
	lsl r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r6, #0x38]
	bl ov96_021EB588
	ldr r0, [r6, #0x40]
	add r1, sp, #0x24
	bl ov96_021EB588
	ldr r0, [r6, #0x3c]
	add r1, sp, #0x24
	bl ov96_021EB588
	ldr r5, [sp, #0x18]
	mov r4, #0
_022081EE:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x24
	bl ov96_021EB588
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _022081EE
	mov r0, #2
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, sp, #0x24
	bl ov96_021EB588
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	add r1, sp, #0x24
	bl ov96_021EB588
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, sp, #0x24
	bl ov96_021EB588
	ldr r0, [sp, #0x1c]
	add r6, #0x1c
	add r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r7, #0x10
	add r0, #8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _022081A0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_022080F4

