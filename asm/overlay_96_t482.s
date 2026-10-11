	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FCD84
	.extern PokeathlonCourse_GetField5F0_AtIndex
	.extern PokeathlonCourse_GetGraphicsSystem
	.extern ov96_021E93B4
	.extern ov96_021E9510
	.extern ov96_021E952C
	.extern ov96_021E9570
	.extern ov96_021E966C
	.extern ov96_0221A56C

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
	thumb_func_start ov96_021FCD84
ov96_021FCD84: ; 0x021FCD84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl PokeathlonCourse_GetGraphicsSystem
	add r6, r0, #0
	bl ov96_021E9510
	mov r4, #0
	add r7, r4, #0
_021FCD98:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl PokeathlonCourse_GetField5F0_AtIndex
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	lsr r0, r3, #0xa
	str r0, [sp]
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x16
	sub r1, r1, r2
	mov r0, #0x16
	ror r1, r0
	add r0, r2, r1
	mov r1, #0xa
	mul r1, r0
	asr r0, r1, #9
	lsr r0, r0, #0x16
	add r0, r1, r0
	asr r0, r0, #0xa
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, _021FCE0C ; =0x00000129
	add r1, r6, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r2, r4, #0
	bl ov96_021E966C
	add r4, r4, #1
	cmp r4, #4
	blt _021FCD98
	add r0, r6, #0
	mov r1, #1
	bl ov96_021E93B4
	add r0, r6, #0
	mov r1, #6
	bl ov96_0221A56C
	add r0, r6, #0
	bl ov96_021E952C
	add r0, r6, #0
	mov r1, #6
	bl ov96_021E9570
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021FCE0C: .word 0x00000129
	thumb_func_end ov96_021FCD84

