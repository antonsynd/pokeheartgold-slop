	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02213D2C

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
	thumb_func_start ov96_02213D2C
ov96_02213D2C: ; 0x02213D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r6, r1, #0
	add r1, sp, #0x2c
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r1, [r5]
	add r4, r2, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x18]
	ldr r1, [r5, #4]
	add r7, r3, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r1, [r6]
	add r2, sp, #8
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r1, [r6, #4]
	add r3, sp, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r1, [r4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #8]
	ldr r1, [r4, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r1, [r7]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp]
	ldr r1, [r7, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #4]
	add r0, sp, #0x18
	add r1, sp, #0x10
	bl sub_02020EB0
	cmp r0, #0
	bne _02213DB8
	add sp, #0x38
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02213DB8:
	add r0, r6, #0
	add r1, r5, #0
	add r2, sp, #0x20
	bl VEC_Subtract
	add r0, sp, #0x20
	add r1, r0, #0
	bl VEC_Normalize
	ldr r1, [r5, #4]
	ldr r0, [r6, #4]
	cmp r1, r0
	bne _02213E10
	ldr r0, [r4, #4]
	sub r0, r1, r0
	bpl _02213DDE
	mov r2, #0
	mvn r2, r2
	mul r0, r2
_02213DDE:
	ldr r2, [r7, #4]
	sub r3, r1, r2
	bpl _02213DEA
	mov r2, #0
	mvn r2, r2
	mul r3, r2
_02213DEA:
	cmp r3, #0
	bne _02213DF4
	add sp, #0x38
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02213DF4:
	ldr r2, [r4]
	str r1, [sp, #0x30]
	add r1, r0, r3
	str r2, [sp, #0x2c]
	bl FX_Div
	ldr r3, [sp, #0x50]
	add r1, sp, #0x20
	add r2, sp, #0x2c
	bl VEC_MultAdd
	add sp, #0x38
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02213E10:
	ldr r1, [r5]
	ldr r0, [r6]
	cmp r1, r0
	bne _02213E56
	ldr r0, [r4]
	sub r0, r1, r0
	bpl _02213E24
	mov r2, #0
	mvn r2, r2
	mul r0, r2
_02213E24:
	ldr r2, [r7]
	sub r3, r1, r2
	bpl _02213E30
	mov r2, #0
	mvn r2, r2
	mul r3, r2
_02213E30:
	cmp r3, #0
	bne _02213E3A
	add sp, #0x38
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02213E3A:
	str r1, [sp, #0x2c]
	ldr r1, [r4, #4]
	str r1, [sp, #0x30]
	add r1, r0, r3
	bl FX_Div
	ldr r3, [sp, #0x50]
	add r1, sp, #0x20
	add r2, sp, #0x2c
	bl VEC_MultAdd
	add sp, #0x38
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02213E56:
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_02213D2C

