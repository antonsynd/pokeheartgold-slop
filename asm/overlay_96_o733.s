	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FD128
	.extern ov96_021EA424
	.extern ov96_021EB408
	.extern ov96_021EB4F4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_021EB5E8

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
	thumb_func_start ov96_021FD128
ov96_021FD128: ; 0x021FD128
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
	mov r6, #6
_021FD134:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021FD134
	mov r4, #0
	mov r6, #7
_021FD14C:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	mov r0, #9
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xb
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #4
	blt _021FD14C
	mov r4, #0
	mov r6, #0xe
_021FD194:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #4
	blt _021FD194
	mov r0, #0xc
	mov r1, #1
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xf
	mov r1, #1
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r6, #0
	add r4, r7, #0
_021FD1CC:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #6
	bl ov96_021EB4F4
	ldr r1, _021FD2DC ; =0x000004D8
	add r6, r6, #1
	str r0, [r4, r1]
	add r4, #0xc
	cmp r6, #0x1e
	blt _021FD1CC
	mov r6, #0
	add r4, r7, #0
_021FD1E6:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #7
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #9
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xb
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xd
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #3
	bl ov96_021EB564
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #8
	bl ov96_021EB564
	add r6, r6, #1
	add r4, #0xd4
	cmp r6, #4
	blt _021FD1E6
	mov r6, #0
	add r4, r7, #0
_021FD24A:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xe
	bl ov96_021EB4F4
	mov r1, #0xf3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021FD24A
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xc
	bl ov96_021EB4F4
	str r0, [r7, #0x1c]
	mov r1, #0xb
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r7, #0x1c]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	lsr r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x1c]
	add r1, sp, #4
	bl ov96_021EB588
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xf
	bl ov96_021EB4F4
	str r0, [r7, #0x28]
	mov r1, #0xa
	bl ov96_021EB564
	ldr r0, [r7, #0x18]
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r3, [r7, #0x14]
	mov r2, #0
	bl ov96_021EA424
	str r0, [r7, #0x20]
	ldr r0, [r7, #0x18]
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r3, [r7, #0x14]
	mov r2, #0
	bl ov96_021EA424
	str r0, [r7, #0x24]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FD2DC: .word 0x000004D8
	thumb_func_end ov96_021FD128

