	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EFD08
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_021EF98C
	.extern ov96_021EFB58
	.extern ov96_021EFC10
	.extern ov96_021EFC8C

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
	thumb_func_start ov96_021EFD08
ov96_021EFD08: ; 0x021EFD08
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	bl ov96_021EF98C
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _021EFD5A
	cmp r0, #2
	beq _021EFD78
	cmp r0, #3
	beq _021EFD80
	b _021EFD88
_021EFD5A:
	add r0, r4, #0
	bl ov96_021EFB58
	mov r0, #4
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r3, _021EFD98 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	b _021EFD8C
_021EFD78:
	add r0, r4, #0
	bl ov96_021EFC10
	b _021EFD8C
_021EFD80:
	add r0, r4, #0
	bl ov96_021EFC8C
	b _021EFD8C
_021EFD88:
	bl GF_AssertFail
_021EFD8C:
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl PokeathlonCourse_SetStateField07
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021EFD98: .word 0x00007FFF
	thumb_func_end ov96_021EFD08

