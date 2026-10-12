	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220E2DC
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_021E667C
	.extern ov96_021E8A20
	.extern ov96_0220D408
	.extern ov96_0220EFD0
	.extern ov96_0220F03C
	.extern ov96_0220F1CC
	.extern ov96_02210324

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
	thumb_func_start ov96_0220E2DC
ov96_0220E2DC: ; 0x0220E2DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldr r0, _0220E38C ; =0x000006A4
	ldr r1, [r4, #8]
	ldr r2, [r4]
	add r0, r4, r0
	bl ov96_0220EFD0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0220E302
	cmp r0, #1
	beq _0220E31A
	b _0220E382
_0220E302:
	add r0, r5, #0
	bl ov96_0220F03C
	add r0, r5, #0
	bl ov96_0220F1CC
	cmp r0, #0
	beq _0220E386
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	b _0220E386
_0220E31A:
	add r0, r5, #0
	bl ov96_0220F03C
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	add r2, r0, #0
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	add r0, r4, #0
	lsl r2, r2, #0x19
	add r0, #0xc4
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x19
	lsl r1, r1, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl ov96_02210324
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _0220E386
	ldr r0, _0220E390 ; =0x000006A8
	add r0, r4, r0
	bl ov96_0220D408
	cmp r0, #0
	beq _0220E386
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	mov r1, #2
	bl PokeathlonCourse_SetStateField07
	b _0220E386
_0220E382:
	bl GF_AssertFail
_0220E386:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0220E38C: .word 0x000006A4
_0220E390: .word 0x000006A8
	thumb_func_end ov96_0220E2DC

