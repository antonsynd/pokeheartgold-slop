	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EE830
	.public ov96_021EE8CC
	.public ov96_021EE908
	.extern ov96_021EEA08

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
	thumb_func_start ov96_021EE830
ov96_021EE830: ; 0x021EE830
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4, #0x2c]
	mvn r0, r0
	cmp r1, r0
	beq _021EE870
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021EE864
	ldr r1, [r4, #0x34]
	ldr r0, _021EE8C4 ; =0xFFFF0000
	and r1, r0
	mov r0, #0x14
	orr r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	bl String_Delete
	mov r0, #0
	str r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x2c]
_021EE864:
	mov r0, #1
	ldr r1, [r4, #0x34]
	lsl r0, r0, #0x1c
	orr r0, r1
	str r0, [r4, #0x34]
	b _021EE8BC
_021EE870:
	beq _021EE876
	bl GF_AssertFail
_021EE876:
	ldr r1, [r4, #0x34]
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	beq _021EE8B6
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021EE88C
	ldr r0, _021EE8C8 ; =0xEFFFFFFF
	and r0, r1
	str r0, [r4, #0x34]
	b _021EE8BC
_021EE88C:
	ldr r0, _021EE8C4 ; =0xFFFF0000
	and r1, r0
	sub r0, r2, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r4, #0x34]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021EE8A4
	mov r2, #1
	b _021EE8A6
_021EE8A4:
	mov r2, #0
_021EE8A6:
	ldr r1, [r4, #0x34]
	ldr r0, _021EE8C8 ; =0xEFFFFFFF
	and r1, r0
	lsl r0, r2, #0x1f
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r4, #0x34]
	b _021EE8BC
_021EE8B6:
	ldr r0, _021EE8C8 ; =0xEFFFFFFF
	and r0, r1
	str r0, [r4, #0x34]
_021EE8BC:
	ldr r0, [r4, #0x34]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	pop {r4, pc}
	.balign 4, 0
_021EE8C4: .word 0xFFFF0000
_021EE8C8: .word 0xEFFFFFFF
	thumb_func_end ov96_021EE830

	thumb_func_start ov96_021EE8CC
ov96_021EE8CC: ; 0x021EE8CC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	add r2, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x34]
	add r1, r4, #0
	lsl r0, r0, #5
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	add r1, #0x18
	str r0, [sp, #0x10]
	ldr r3, [r4, #0x34]
	ldr r0, [r4]
	lsl r3, r3, #8
	lsr r3, r3, #0x18
	bl ov96_021EEA08
	str r0, [r4, #0x2c]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE8CC

	thumb_func_start ov96_021EE908
ov96_021EE908: ; 0x021EE908
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	add r2, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x34]
	add r1, r4, #0
	lsl r0, r0, #5
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	add r1, #0x18
	str r0, [sp, #0x10]
	ldr r3, [r4, #0x34]
	ldr r0, [r4]
	lsl r3, r3, #8
	lsr r3, r3, #0x18
	bl ov96_021EEA08
	str r0, [r4, #0x2c]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE908

