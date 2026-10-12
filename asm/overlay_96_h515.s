	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F6088
	.extern ov96_0221DC18

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
	thumb_func_start ov96_021F6088
ov96_021F6088: ; 0x021F6088
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	cmp r0, #0
	ble _021F6120
	ldr r1, _021F6124 ; =0x00000FAC
	add r2, r6, r1
	mov r1, #0x1c
	mul r1, r5
	add r7, r2, r1
	ldr r1, [r7, #0x14]
	cmp r1, #0
	bne _021F6120
	asr r1, r0, #5
	lsr r1, r1, #0x1a
	add r1, r0, r1
	asr r0, r1, #6
	bl _dflt
	ldr r3, _021F6128 ; =0x40040000
	mov r2, #0
	bl _ddiv
	bl _dfix
	str r0, [sp]
	ldr r0, [r4]
	neg r1, r0
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	bmi _021F60DC
	mov r1, #0xa
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _021F60E4
	add r0, r1, #0
	b _021F60E4
_021F60DC:
	ldr r1, _021F612C ; =0xFFFF6000
	cmp r0, r1
	bge _021F60E4
	add r0, r1, #0
_021F60E4:
	mov r1, #0x38
	add r4, r5, #0
	mul r4, r1
	add r1, r6, #0
	str r1, [sp, #4]
	add r1, #0xa8
	str r0, [r1, r4]
	add r0, r1, #0
	str r1, [sp, #4]
	ldr r1, [r0, r4]
	add r0, r6, r4
	add r0, #0xc4
	ldr r0, [r0]
	mul r0, r1
	mov r1, #0xc
	bl _s32_div_f
	ldr r1, [sp, #4]
	str r0, [r1, r4]
	ldr r0, [sp]
	ldr r1, _021F6130 ; =ov96_0221DC18
	neg r0, r0
	str r0, [r7]
	str r0, [r7, #0x18]
	mov r0, #1
	str r0, [r7, #0x14]
	ldrb r1, [r1, r5]
	ldr r0, _021F6134 ; =0x000008C2
	bl sub_0200606C
_021F6120:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F6124: .word 0x00000FAC
_021F6128: .word 0x40040000
_021F612C: .word 0xFFFF6000
_021F6130: .word ov96_0221DC18
_021F6134: .word 0x000008C2
	thumb_func_end ov96_021F6088

