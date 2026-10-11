	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E604C
	.extern ov96_021E679C

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
	thumb_func_start ov96_021E604C
ov96_021E604C: ; 0x021E604C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r2, #0xa1
	ldr r1, [sp]
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	mov r0, #0xa9
	bl NARC_New
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, _021E60B8 ; =0x00000618
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
_021E606E:
	ldr r4, [sp]
	ldr r5, [sp, #4]
	mov r6, #0
_021E6074:
	mov r0, #0x3f
	ldr r1, _021E60BC ; =0x000003F2
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldrh r1, [r4, r1]
	bl ov96_021E679C
	add r1, r0, #0
	add r0, r7, #0
	add r2, r5, #0
	bl NARC_ReadWholeMember
	add r6, r6, #1
	add r4, #0x28
	add r5, #0x14
	cmp r6, #3
	blt _021E6074
	ldr r0, [sp]
	add r0, #0x7c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, #0x3c
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021E606E
	add r0, r7, #0
	bl NARC_Delete
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E60B8: .word 0x00000618
_021E60BC: .word 0x000003F2
	thumb_func_end ov96_021E604C

