	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02207418
	.extern ov96_021E8228
	.extern ov96_021EAF78
	.extern ov96_021EB0A4
	.extern ov96_02207A34

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
	thumb_func_start ov96_02207418
ov96_02207418: ; 0x02207418
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp, #8]
	mov r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r0, [sp, #0x18]
	str r0, [sp, #0x80]
	str r0, [sp, #0x74]
	add r7, r0, #0
	add r6, r1, #0
_0220742E:
	add r0, r6, #0
	add r0, #0xb1
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	beq _02207440
	b _0220763C
_02207440:
	lsl r0, r1, #2
	ldr r0, [r6, r0]
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	str r0, [sp]
	ldr r2, [r6, #0x58]
	ldr r3, [r6, #0x5c]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	ldr r0, [sp, #0x20]
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	add r3, sp, #0x30
	bl ov96_021EB0A4
	ldr r5, [sp, #0xc]
	mov r4, #0
_0220746A:
	cmp r7, r4
	beq _02207500
	add r0, r5, #0
	add r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	bne _02207500
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xb1
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	add r0, sp, #0x24
	str r0, [sp]
	ldr r1, [r5, #0x58]
	ldr r3, [r5, #0x5c]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	ldr r0, [sp, #0x1c]
	asr r2, r2, #0xc
	add r3, sp, #0x28
	bl ov96_021EB0A4
	add r0, sp, #0x70
	str r0, [sp]
	add r0, sp, #0x34
	str r0, [sp, #4]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x6c
	bl ov96_021EAF78
	add r0, sp, #0x7c
	str r0, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x78
	bl ov96_021EAF78
	add r0, sp, #0x78
	add r1, sp, #0x6c
	add r2, sp, #0x60
	bl VEC_Subtract
	add r0, sp, #0x60
	bl VEC_Mag
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x38]
	add r1, r2, r1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _022074F6
	b _02207624
_022074F6:
	add r0, r6, r4
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _02207502
_02207500:
	b _02207632
_02207502:
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r5, #0
	bl ov96_02207A34
	cmp r0, #0
	bne _0220751E
	add r0, r6, #0
	mov r1, #6
	add r0, #0xa4
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	strb r1, [r0]
_0220751E:
	add r0, r6, #0
	add r0, #0x64
	bl VEC_Mag
	mov r1, #0xb
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _02207552
	add r1, sp, #0x54
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r6, #0
	add r0, #0x64
	add r1, r0, #0
	bl VEC_Normalize
	add r1, r6, #0
	mov r0, #0xb
	add r1, #0x64
	lsl r0, r0, #0xc
	add r2, sp, #0x54
	add r3, r1, #0
	bl VEC_MultAdd
_02207552:
	add r0, r5, #0
	add r0, #0x64
	bl VEC_Mag
	mov r1, #0xb
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _02207586
	add r1, sp, #0x48
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	add r0, #0x64
	add r1, r0, #0
	bl VEC_Normalize
	add r1, r5, #0
	mov r0, #0xb
	add r1, #0x64
	lsl r0, r0, #0xc
	add r2, sp, #0x48
	add r3, r1, #0
	bl VEC_MultAdd
_02207586:
	add r0, r6, r4
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _02207594
	bl GF_AssertFail
_02207594:
	add r0, r5, r7
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _022075A2
	bl GF_AssertFail
_022075A2:
	add r1, r6, r4
	mov r0, #1
	add r1, #0x94
	strb r0, [r1]
	add r1, r5, r7
	add r1, #0x94
	strb r0, [r1]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _022075EC
	add r2, sp, #0x3c
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r0, [sp, #0x18]
	add r0, sp, #0x6c
	add r1, sp, #0x78
	bl VEC_Subtract
	add r0, sp, #0x3c
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [sp, #0x38]
	add r1, sp, #0x3c
	lsl r0, r0, #0xc
	add r2, sp, #0x78
	add r3, r1, #0
	bl VEC_MultAdd
	add r3, sp, #0x3c
	ldr r2, [sp, #0x10]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_022075EC:
	mov r0, #1
	add r1, r6, #0
	str r0, [sp]
	add r1, #0x98
	add r2, r6, #0
	ldr r1, [r1]
	add r2, #0xb1
	lsl r1, r1, #0x18
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	mov r3, #4
	bl ov96_021E8228
	add r1, r5, #0
	mov r0, #1
	str r0, [sp]
	add r1, #0x98
	ldr r1, [r1]
	add r5, #0xb1
	lsl r1, r1, #0x18
	ldrb r2, [r5]
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	mov r3, #4
	bl ov96_021E8228
	b _0220763C
_02207624:
	add r1, r6, r4
	add r1, #0x94
	mov r0, #0
	strb r0, [r1]
	add r1, r7, r5
	add r1, #0x94
	strb r0, [r1]
_02207632:
	add r4, r4, #1
	add r5, #0xb8
	cmp r4, #4
	bge _0220763C
	b _0220746A
_0220763C:
	add r7, r7, #1
	add r6, #0xb8
	cmp r7, #4
	bge _02207646
	b _0220742E
_02207646:
	ldr r0, [sp, #0x18]
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_02207418

