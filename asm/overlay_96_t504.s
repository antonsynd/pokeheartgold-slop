	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02200C8C
	.public ov96_02200D7C
	.extern ov96_021EB408
	.extern ov96_021EB4F4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_021EB5B8
	.extern ov96_021EB5EC
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
	thumb_func_start ov96_02200C8C
ov96_02200C8C: ; 0x02200C8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #4]
	ldr r0, _02200D78 ; =ov96_0221C728
	str r1, [sp, #8]
	ldr r2, [r0]
	ldr r1, [r0, #4]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r5, sp, #0x14
	add r4, sp, #0xc
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r6, #0
	mov r7, #3
_02200CAE:
	ldr r0, [r4]
	add r1, r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [sp, #4]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl ov96_021EB408
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _02200CAE
	ldr r4, [sp, #8]
	mov r5, #0
	add r7, sp, #0xc
	add r6, sp, #0x14
_02200CD8:
	ldr r1, [r6]
	ldr r2, [r7]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021EB4F4
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	bl ov96_021EB5B8
	mov r1, #0
	str r1, [sp, #0x24]
	mov r1, #0xa
	lsl r1, r1, #0xe
	str r1, [sp, #0x1c]
	mov r1, #1
	sub r2, r1, r5
	mov r1, #0x58
	mul r1, r2
	add r1, #0x30
	lsl r2, r1, #0xc
	mov r1, #2
	lsl r1, r1, #0x14
	add r1, r2, r1
	str r1, [sp, #0x20]
	add r1, sp, #0x1c
	bl Sprite_SetMatrix
	mov r0, #0x15
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [sp, #4]
	mov r1, #0x65
	mov r2, #0x10
	bl ov96_021EB4F4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #8
	bl ov96_021EB564
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x1c
	bl ov96_021EB588
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	add r5, r5, #1
	add r7, r7, #4
	add r6, r6, #4
	add r4, r4, #4
	cmp r5, #2
	blt _02200CD8
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov96_02200D7C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02200D78: .word ov96_0221C728
	thumb_func_end ov96_02200C8C

	thumb_func_start ov96_02200D7C
ov96_02200D7C: ; 0x02200D7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, _02200DF4 ; =ov96_0221C728
	str r1, [sp]
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r4, #0
_02200D90:
	lsl r0, r4, #2
	add r1, sp, #0xc
	ldr r5, [r1, r0]
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0
	bl ov96_021EB5EC
	ldr r6, [r0]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #1
	bl ov96_021EB5EC
	ldr r5, [r0]
	add r0, r6, #0
	bl SpriteTransfer_GetCharProxy
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl SpriteTransfer_GetPaletteProxy
	str r0, [sp, #8]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r5, r1, r0
	add r0, r6, #0
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, [sp, #8]
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _02200D90
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02200DF4: .word ov96_0221C728
	thumb_func_end ov96_02200D7C

