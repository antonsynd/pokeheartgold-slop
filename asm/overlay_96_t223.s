	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ED0C8
	.extern ov96_021ECF48
	.extern ov96_021ECFF8
	.extern ov96_021ED17C
	.extern ov96_021ED6E8

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
	thumb_func_start ov96_021ED0C8
ov96_021ED0C8: ; 0x021ED0C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _021ED0D2
	bl GF_AssertFail
_021ED0D2:
	mov r2, #0x5f
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	cmp r0, #0
	beq _021ED11E
	add r1, r2, #0
	sub r1, #8
	add r0, r2, #0
	ldr r1, [r5, r1]
	sub r0, #8
	add r3, r1, #1
	add r1, r2, #0
	ldr r0, [r5, r0]
	sub r1, #8
	str r3, [r5, r1]
	sub r1, r2, #4
	ldr r1, [r5, r1]
	cmp r0, r1
	bls _021ED11E
	bl MTRandom
	add r2, r0, #0
	mov r1, #1
	and r1, r2
	add r1, r1, #2
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov96_021ED17C
	bl ov96_021ED6E8
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #0
	sub r0, r1, #4
	str r2, [r5, r0]
_021ED11E:
	add r6, r5, #0
	mov r7, #0
	add r6, #0x18
	add r4, r5, #4
_021ED126:
	ldr r0, [r6]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021ED14C
	add r0, r4, #0
	bl ov96_021ECF48
	cmp r0, #0
	beq _021ED14C
	mov r1, #0x5b
	mov r2, #0x17
	lsl r1, r1, #2
	lsl r2, r2, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r4, #0
	bl ov96_021ECFF8
_021ED14C:
	add r7, r7, #1
	add r6, #0x18
	add r4, #0x18
	cmp r7, #0xf
	blt _021ED126
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED0C8

