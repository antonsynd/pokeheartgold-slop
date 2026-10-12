	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FC698
	.public ov96_021FC6EC
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB57C
	.extern ov96_021EB588
	.extern ov96_021EB594
	.extern ov96_021FC758

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
	thumb_func_start ov96_021FC698
ov96_021FC698: ; 0x021FC698
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blo _021FC6A8
	bl GF_AssertFail
_021FC6A8:
	mov r0, #0x2c
	mul r0, r4
	add r4, r5, r0
	ldr r0, [r4, #0x28]
	lsl r0, r0, #3
	add r5, r4, r0
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021FC6E6
	mov r1, #1
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov96_021EB564
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl ov96_021EB588
	mov r0, #1
	str r0, [r5]
	ldr r0, [r4, #0x28]
	mov r1, #5
	add r0, r0, #1
	bl _u32_div_f
	str r1, [r4, #0x28]
	pop {r4, r5, r6, pc}
_021FC6E6:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021FC698

	thumb_func_start ov96_021FC6EC
ov96_021FC6EC: ; 0x021FC6EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blo _021FC6FE
	bl GF_AssertFail
_021FC6FE:
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	str r0, [sp]
	mov r4, #0
	lsl r7, r6, #0xc
_021FC70A:
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021FC748
	ldr r0, [r5, #4]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #4
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #8]
	add r0, r0, r7
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl ov96_021EB588
	ldr r0, [r5, #4]
	bl ov96_021EB57C
	cmp r0, #0
	bne _021FC748
	add r0, r5, #0
	bl ov96_021FC758
_021FC748:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021FC70A
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC6EC

