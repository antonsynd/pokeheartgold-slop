	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FF5A8
	.extern ov96_021FF0BC
	.extern ov96_021FF1E0
	.extern ov96_021FF2A0
	.extern ov96_021FF574

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
	thumb_func_start ov96_021FF5A8
ov96_021FF5A8: ; 0x021FF5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1dc
	str r1, [sp, #8]
	ldr r1, [sp, #0x1f0]
	add r7, r3, #0
	str r1, [sp, #0x1f0]
	ldr r1, [sp, #0x1f4]
	add r6, r2, #0
	str r1, [sp, #0x1f4]
	add r1, sp, #0x14
	add r1, #1
	str r1, [sp]
	add r1, sp, #0x14
	str r1, [sp, #4]
	ldr r1, [r7]
	add r2, sp, #0x164
	add r3, sp, #0xec
	bl ov96_021FF0BC
	mov r4, #0
	str r4, [sp, #0x10]
	add r0, sp, #0x14
	ldrb r0, [r0]
	cmp r0, #0
	ble _021FF604
	add r5, sp, #0xec
_021FF5DC:
	ldr r1, [r5]
	add r0, r6, #0
	add r2, sp, #0x88
	bl ov96_021FF1E0
	add r0, r7, #0
	add r1, sp, #0x88
	bl ov96_021FF574
	cmp r0, #0
	beq _021FF5F8
	mov r0, #1
	str r0, [sp, #0x10]
	b _021FF604
_021FF5F8:
	add r0, sp, #0x14
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021FF5DC
_021FF604:
	mov r5, #0
	str r5, [sp, #0xc]
	add r0, sp, #0x14
	ldrb r0, [r0, #1]
	cmp r0, #0
	ble _021FF66C
	add r4, sp, #0x164
_021FF612:
	ldr r1, [r4]
	add r0, r6, #0
	add r2, sp, #0x24
	bl ov96_021FF1E0
	add r0, sp, #0x18
	str r0, [sp]
	ldr r1, [sp, #0x1f0]
	add r0, r7, #0
	add r2, r6, #0
	add r3, sp, #0x24
	bl ov96_021FF2A0
	cmp r0, #0
	beq _021FF660
	cmp r0, #0xa
	blt _021FF644
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1f4]
	str r2, [r1]
	ldr r2, [sp, #0x1c]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #8]
	b _021FF658
_021FF644:
	ldr r1, [sp, #8]
	cmp r0, r1
	beq _021FF658
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1f4]
	str r2, [r1]
	ldr r2, [sp, #0x1c]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #8]
_021FF658:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	b _021FF66C
_021FF660:
	add r0, sp, #0x14
	ldrb r0, [r0, #1]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _021FF612
_021FF66C:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #8
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0x1dc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FF5A8

