	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EFA3C

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
	thumb_func_start ov96_021EFA3C
ov96_021EFA3C: ; 0x021EFA3C
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	mov r4, #0
	cmp r0, #0
	bne _021EFA4C
	mov r4, #0x20
_021EFA4C:
	ldr r1, _021EFAC8 ; =0x00000125
	mov r0, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #7
	add r2, sp, #0xc
	mov r3, #0x80
	bl SetBgAffine
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #6
	add r2, sp, #0xc
	mov r3, #0x80
	bl SetBgAffine
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #7
	mov r2, #5
	add r3, r4, #0
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #6
	mov r2, #5
	add r3, r4, #0
	bl Bg_SetTextDimAndAffineParams
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	str r0, [r5, #0x1c]
	mov r0, #1
	str r0, [r5, #0x2c]
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_021EFAC8: .word 0x00000125
	thumb_func_end ov96_021EFA3C

