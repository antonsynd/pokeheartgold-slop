	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EE1D8
	.extern PokeathlonCourse_GetParticipantData
	.extern ov96_021E60D8
	.extern ov96_021E8448

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
	thumb_func_start ov96_021EE1D8
ov96_021EE1D8: ; 0x021EE1D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	add r7, r1, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	mov r5, #0
	bl PokeathlonCourse_GetParticipantData
	str r0, [sp, #8]
	add r4, r5, #0
_021EE1F0:
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	bl ov96_021E60D8
	ldrb r6, [r0, #4]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	ldrb r0, [r0]
	add r4, r4, #1
	add r0, r1, r0
	add r0, r2, r0
	add r0, r3, r0
	add r0, r6, r0
	add r0, r0, #5
	add r5, r5, r0
	cmp r4, #3
	blt _021EE1F0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	sub r4, #8
	cmp r4, #0xc
	ble _021EE22A
	mov r4, #0xc
	b _021EE230
_021EE22A:
	cmp r4, #0
	bge _021EE230
	mov r4, #0
_021EE230:
	ldr r1, [sp, #8]
	add r0, r7, #0
	ldr r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021E8448
	ldr r1, [sp]
	str r0, [r1]
	add r0, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r0, _021EE260 ; =0x00FFFFFF
	and r1, r0
	lsl r0, r4, #0x18
	orr r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE260: .word 0x00FFFFFF
	thumb_func_end ov96_021EE1D8

