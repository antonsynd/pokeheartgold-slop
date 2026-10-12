	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02209C14
	.extern ov96_0221CC0C
	.extern ov96_0221CC48
	.extern ov96_0221CCF8

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
	thumb_func_start ov96_02209C14
ov96_02209C14: ; 0x02209C14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xbc
	ldr r4, _02209C9C ; =ov96_0221CC0C
	add r3, sp, #4
	add r6, r0, #0
	str r1, [sp]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _02209CA0 ; =ov96_0221CCF8
	add r3, sp, #0x14
	mov r2, #0x15
_02209C36:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02209C36
	ldr r5, _02209CA4 ; =ov96_0221CC48
	mov r7, #0
	add r4, sp, #0x14
_02209C44:
	ldr r1, [r5]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r1, [r5]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5]
	ldr r3, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #4
	cmp r7, #6
	blt _02209C44
	ldr r1, [sp]
	mov r0, #4
	bl FontID_Alloc
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add r0, r6, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0x10
	bl BgSetPosTextAndCommit
	add sp, #0xbc
	pop {r4, r5, r6, r7, pc}
	nop
_02209C9C: .word ov96_0221CC0C
_02209CA0: .word ov96_0221CCF8
_02209CA4: .word ov96_0221CC48
	thumb_func_end ov96_02209C14

