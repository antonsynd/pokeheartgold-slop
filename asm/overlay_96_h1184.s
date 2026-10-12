	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02218F58
	.extern ov96_021E8228
	.extern ov96_02218578

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
	thumb_func_start ov96_02218F58
ov96_02218F58: ; 0x02218F58
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #1
	cmp r0, #1
	beq _02218F6C
	cmp r0, #4
	beq _02218F6C
	mov r1, #0
_02218F6C:
	cmp r1, #0
	bne _02218F74
	bl GF_AssertFail
_02218F74:
	ldr r0, [r4, #0x60]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _02218F80
	bl GF_AssertFail
_02218F80:
	ldr r0, [r4, #0x60]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	beq _02218F8C
	bl GF_AssertFail
_02218F8C:
	ldr r1, [r4, #0x60]
	ldr r0, _02218FD0 ; =0xDFFFFFFF
	and r0, r1
	str r0, [r4, #0x60]
	add r0, r4, #0
	mov r1, #5
	add r0, #0x5a
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _02218FC4
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl ov96_021E8228
_02218FC4:
	add r0, r4, #0
	mov r1, #8
	bl ov96_02218578
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02218FD0: .word 0xDFFFFFFF
	thumb_func_end ov96_02218F58

