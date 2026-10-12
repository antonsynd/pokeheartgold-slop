	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E7C04
	.public ov96_021E7C94
	.extern ov96_021E5F24
	.extern ov96_021E7D18

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
	thumb_func_start ov96_021E7C04
ov96_021E7C04: ; 0x021E7C04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r2, #0
	add r7, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	add r0, #0x80
	ldrh r0, [r0]
	ldrh r1, [r4]
	add r2, r7, #0
	bl ov96_021E7D18
	cmp r0, #0
	beq _021E7C90
	add r6, #0x80
	ldmia r4!, {r0, r1}
	add r5, r6, #0
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	mov r4, #4
_021E7C36:
	add r0, r5, #0
	sub r0, #0x20
	ldrh r0, [r0]
	ldrh r1, [r5]
	add r2, r7, #0
	bl ov96_021E7D18
	cmp r0, #0
	beq _021E7C90
	add r3, r5, #0
	sub r3, #0x20
	add r2, sp, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, r5, #0
	add r3, r5, #0
	sub r2, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, r5, #0
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	sub r4, r4, #1
	sub r5, #0x20
	stmia r2!, {r0, r1}
	cmp r4, #0
	bgt _021E7C36
_021E7C90:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E7C04

	thumb_func_start ov96_021E7C94
ov96_021E7C94: ; 0x021E7C94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov96_021E5F24
	mov r2, #0
	add r1, r2, #0
_021E7CA2:
	ldrh r0, [r4]
	add r3, r1, #0
	add r6, r4, #0
	strh r0, [r5]
	add r7, r5, #0
_021E7CAC:
	ldrh r0, [r6, #2]
	add r3, r3, #1
	add r6, r6, #2
	strh r0, [r7, #2]
	add r7, r7, #2
	cmp r3, #3
	blt _021E7CAC
	add r2, r2, #1
	add r4, #0x20
	add r5, #8
	cmp r2, #5
	blt _021E7CA2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E7C94

