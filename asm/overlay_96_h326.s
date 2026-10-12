	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EE040
	.extern ov96_0221AF54

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
	thumb_func_start ov96_021EE040
ov96_021EE040: ; 0x021EE040
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, sp, #0
	mov r3, #0x1d
	mov r2, #0
_021EE04A:
	strb r2, [r4]
	add r4, r4, #1
	sub r3, r3, #1
	bne _021EE04A
	mov r2, #0
	add r4, r2, #0
	add r5, r2, #0
_021EE058:
	ldrb r3, [r0, r5]
	cmp r2, r3
	bhs _021EE060
	add r2, r3, #0
_021EE060:
	add r5, r5, #1
	cmp r5, #0x1d
	blt _021EE058
	mov r6, #0
	add r5, sp, #0
_021EE06A:
	ldrb r3, [r0, r6]
	cmp r2, r3
	bne _021EE076
	strb r6, [r5]
	add r5, r5, #1
	add r4, r4, #1
_021EE076:
	add r6, r6, #1
	cmp r6, #0x1d
	blt _021EE06A
	ldr r3, _021EE0A8 ; =ov96_0221AF54
	mov r5, #0
_021EE080:
	ldr r0, [r3]
	cmp r2, r0
	blo _021EE08E
	mov r0, #3
	sub r0, r0, r5
	strb r0, [r1]
	b _021EE096
_021EE08E:
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, #4
	blt _021EE080
_021EE096:
	bl MTRandom
	add r1, r4, #0
	bl _u32_div_f
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE0A8: .word ov96_0221AF54
	thumb_func_end ov96_021EE040

