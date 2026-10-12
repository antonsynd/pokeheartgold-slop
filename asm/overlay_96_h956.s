	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220D2AC

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
	thumb_func_start ov96_0220D2AC
ov96_0220D2AC: ; 0x0220D2AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0x3c
	str r2, [sp]
	mov r4, #0
	bl _u32_div_f
	str r1, [sp, #4]
	add r0, r7, #0
	mov r1, #0x1e
	bl _u32_div_f
	add r6, r1, #0
_0220D2CC:
	ldr r1, [r5]
	lsl r0, r1, #6
	lsl r3, r1, #0xe
	lsr r2, r0, #0x18
	lsr r3, r3, #0x17
	lsl r0, r2, #0x10
	lsl r3, r3, #0x10
	lsr r0, r0, #0x10
	lsr r3, r3, #0x10
	cmp r7, #0
	beq _0220D32A
	cmp r0, r3
	bhs _0220D32A
	ldr r0, [sp]
	cmp r4, r0
	bne _0220D302
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0220D314
	ldr r0, _0220D338 ; =0xFC03FFFF
	add r2, #8
	and r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #6
	orr r0, r1
	str r0, [r5]
	b _0220D314
_0220D302:
	cmp r6, #0
	bne _0220D314
	ldr r0, _0220D338 ; =0xFC03FFFF
	and r0, r1
	add r1, r2, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #6
	orr r0, r1
	str r0, [r5]
_0220D314:
	ldr r1, [r5]
	lsl r0, r1, #6
	lsr r0, r0, #0x18
	cmp r0, r3
	bls _0220D32A
	ldr r0, _0220D338 ; =0xFC03FFFF
	and r0, r1
	lsl r1, r3, #0x18
	lsr r1, r1, #6
	orr r0, r1
	str r0, [r5]
_0220D32A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0220D2CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220D338: .word 0xFC03FFFF
	thumb_func_end ov96_0220D2AC

