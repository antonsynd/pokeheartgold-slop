	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02218B1C
	.public ov96_02218DF8
	.public ov96_02218EB8
	.extern ov96_02218578
	.extern ov96_022186CC
	.extern ov96_022187A8
	.extern ov96_02218934
	.extern ov96_02218A50
	.extern ov96_02218AF0
	.extern ov96_02218F18
	.extern ov96_02218F58
	.extern ov96_02218FD4
	.extern ov96_02219030
	.extern ov96_0221D69C
	.extern ov96_0221D7D0

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
	thumb_func_start ov96_02218B1C
ov96_02218B1C: ; 0x02218B1C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r2, #0x5d
	ldrsb r0, [r4, r2]
	cmp r0, #0
	ble _02218B3A
	sub r3, r0, #1
	add r0, r4, #0
	add r0, #0x5d
	strb r3, [r0]
	ldrsb r0, [r4, r2]
	cmp r0, #0
	ble _02218B3A
	b _02218DEA
_02218B3A:
	ldr r0, [r4, #0x14]
	cmp r0, #0xc
	bhi _02218B6E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02218B4C: ; jump table
	.short _02218B6E - _02218B4C - 2 ; case 0
	.short _02218B6E - _02218B4C - 2 ; case 1
	.short _02218B6E - _02218B4C - 2 ; case 2
	.short _02218B6E - _02218B4C - 2 ; case 3
	.short _02218B6E - _02218B4C - 2 ; case 4
	.short _02218B74 - _02218B4C - 2 ; case 5
	.short _02218B66 - _02218B4C - 2 ; case 6
	.short _02218B74 - _02218B4C - 2 ; case 7
	.short _02218B74 - _02218B4C - 2 ; case 8
	.short _02218B6E - _02218B4C - 2 ; case 9
	.short _02218B74 - _02218B4C - 2 ; case 10
	.short _02218B74 - _02218B4C - 2 ; case 11
	.short _02218B74 - _02218B4C - 2 ; case 12
_02218B66:
	add r0, r4, #0
	bl ov96_02218F18
	b _02218B74
_02218B6E:
	add r0, r4, #0
	bl ov96_022187A8
_02218B74:
	ldr r0, [r4, #0x14]
	cmp r0, #0xc
	bls _02218B7C
	b _02218DE0
_02218B7C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02218B88: ; jump table
	.short _02218DE0 - _02218B88 - 2 ; case 0
	.short _02218C4E - _02218B88 - 2 ; case 1
	.short _02218C20 - _02218B88 - 2 ; case 2
	.short _02218BFE - _02218B88 - 2 ; case 3
	.short _02218BA2 - _02218B88 - 2 ; case 4
	.short _02218D62 - _02218B88 - 2 ; case 5
	.short _02218D84 - _02218B88 - 2 ; case 6
	.short _02218DC6 - _02218B88 - 2 ; case 7
	.short _02218C88 - _02218B88 - 2 ; case 8
	.short _02218CAC - _02218B88 - 2 ; case 9
	.short _02218CEA - _02218B88 - 2 ; case 10
	.short _02218D0E - _02218B88 - 2 ; case 11
	.short _02218D46 - _02218B88 - 2 ; case 12
_02218BA2:
	ldr r0, [r4, #0x60]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	beq _02218BAE
	bl GF_AssertFail
_02218BAE:
	add r0, r4, #0
	bl ov96_02218934
	cmp r0, #0
	beq _02218BC0
	add r0, r4, #0
	bl ov96_02219030
	b _02218DE4
_02218BC0:
	ldr r0, [r4, #0x60]
	lsl r1, r0, #2
	lsr r1, r1, #0x1f
	beq _02218BD0
	add r0, r4, #0
	bl ov96_02218F58
	b _02218DE4
_02218BD0:
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	beq _02218BE2
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x1c
	bl ov96_02218DF8
	b _02218DE4
_02218BE2:
	mov r1, #0x5e
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x5e
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218CD8
	add r0, r4, #0
	mov r1, #1
	bl ov96_02218578
	b _02218DE4
_02218BFE:
	mov r1, #0x5b
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x5b
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218CD8
	add r0, r4, #0
	bl ov96_02218A50
	add r0, r4, #0
	mov r1, #4
	bl ov96_02218578
	b _02218DE4
_02218C20:
	add r0, r4, #0
	bl ov96_02218934
	cmp r0, #0
	beq _02218C32
	add r0, r4, #0
	bl ov96_02219030
	b _02218DE4
_02218C32:
	mov r1, #0x58
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x58
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218CD8
	add r0, r4, #0
	mov r1, #1
	bl ov96_02218578
	b _02218DE4
_02218C4E:
	add r0, r4, #0
	bl ov96_02218934
	cmp r0, #0
	beq _02218C60
	add r0, r4, #0
	bl ov96_02219030
	b _02218DE4
_02218C60:
	ldr r1, [r4, #0x60]
	lsl r0, r1, #4
	lsr r0, r0, #0x1f
	bne _02218CD8
	lsl r0, r1, #2
	lsr r0, r0, #0x1f
	beq _02218C76
	add r0, r4, #0
	bl ov96_02218F58
	b _02218DE4
_02218C76:
	lsl r0, r1, #1
	lsr r0, r0, #0x1f
	beq _02218CD8
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x1c
	bl ov96_02218DF8
	b _02218DE4
_02218C88:
	mov r1, #0x5a
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x5a
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218CD8
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5a
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #9
	bl ov96_02218578
	b _02218DE4
_02218CAC:
	ldr r0, [r4, #4]
	ldr r3, _02218DF0 ; =ov96_0221D7D0
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x18]
	mov r0, #0x14
	add r5, r1, #0
	mov r1, #0x5a
	mul r5, r0
	ldrsb r0, [r4, r1]
	lsl r2, r0, #1
	add r0, r3, r5
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x50]
	ldrsb r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0x5a
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0xa
	bge _02218CDA
_02218CD8:
	b _02218DE4
_02218CDA:
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x5a
	strb r1, [r0]
	add r0, r4, #0
	bl ov96_02218578
	b _02218DE4
_02218CEA:
	mov r1, #0x5a
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x5a
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218DE4
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5a
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xb
	bl ov96_02218578
	b _02218DE4
_02218D0E:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _02218D2C
	add r0, r4, #0
	bl ov96_02218FD4
	add r0, r4, #0
	bl ov96_02218934
	cmp r0, #0
	beq _02218DE4
	add r0, r4, #0
	bl ov96_02219030
	b _02218DE4
_02218D2C:
	ldr r1, [r4, #4]
	ldr r1, [r1, #4]
	ldrb r2, [r1, #0x18]
	ldr r1, _02218DF4 ; =ov96_0221D69C
	ldrb r1, [r1, r2]
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [r4, #0x50]
	cmp r0, #0
	bgt _02218DE4
	mov r0, #0
	str r0, [r4, #0x50]
	b _02218DE4
_02218D46:
	mov r1, #0x5a
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x5a
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218DE4
	add r0, r4, #0
	mov r1, #1
	bl ov96_02218578
	b _02218DE4
_02218D62:
	mov r1, #0x59
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x59
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218DE4
	add r0, r4, #0
	mov r1, #6
	add r0, #0x59
	strb r1, [r0]
	add r0, r4, #0
	bl ov96_02218578
	b _02218DE4
_02218D84:
	mov r1, #0x59
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x59
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218DE4
	add r3, r4, #0
	add r3, #0x2c
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #0
	str r0, [r2]
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r3, #8]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x44
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #7
	str r0, [r2]
	add r0, r4, #0
	bl ov96_02218578
	b _02218DE4
_02218DC6:
	mov r1, #0x59
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x59
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02218DE4
	add r0, r4, #0
	bl ov96_02218EB8
	b _02218DE4
_02218DE0:
	bl GF_AssertFail
_02218DE4:
	add r0, r4, #0
	bl ov96_02218AF0
_02218DEA:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02218DF0: .word ov96_0221D7D0
_02218DF4: .word ov96_0221D69C
	thumb_func_end ov96_02218B1C

	thumb_func_start ov96_02218DF8
ov96_02218DF8: ; 0x02218DF8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r5, #0x14]
	mov r2, #1
	cmp r0, #1
	beq _02218E18
	cmp r0, #4
	beq _02218E18
	add r2, r1, #0
_02218E18:
	cmp r2, #0
	bne _02218E20
	bl GF_AssertFail
_02218E20:
	ldr r0, [r5, #0x60]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _02218E2C
	bl GF_AssertFail
_02218E2C:
	ldr r0, [r5, #0x60]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	beq _02218E38
	bl GF_AssertFail
_02218E38:
	ldr r1, [r5, #0x60]
	ldr r0, _02218EB0 ; =0xBFFFFFFF
	add r2, r5, #0
	and r0, r1
	str r0, [r5, #0x60]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, r5, #0
	add r1, #0x2c
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #2
	ldrsh r0, [r4, r0]
	add r2, #0x38
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, sp, #0
	bl VEC_Subtract
	add r0, r5, #0
	add r0, #0x38
	add r1, r0, #0
	bl VEC_Normalize
	add r1, r5, #0
	mov r0, #1
	add r1, #0x38
	add r3, r5, #0
	lsl r0, r0, #0xe
	add r2, r1, #0
	add r3, #0x44
	bl VEC_MultAdd
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _02218E86
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _02218EAC
_02218E86:
	add r0, r5, #0
	add r0, #0x38
	bl ov96_022186CC
	lsl r0, r0, #0x1c
	ldr r2, [r5, #0x60]
	ldr r1, _02218EB4 ; =0xFFF0FFFF
	lsr r0, r0, #0xc
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x60]
	add r0, r5, #0
	mov r1, #4
	add r0, #0x59
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #5
	bl ov96_02218578
_02218EAC:
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02218EB0: .word 0xBFFFFFFF
_02218EB4: .word 0xFFF0FFFF
	thumb_func_end ov96_02218DF8

	thumb_func_start ov96_02218EB8
ov96_02218EB8: ; 0x02218EB8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #1
	cmp r0, #7
	beq _02218ECC
	cmp r0, #6
	beq _02218ECC
	mov r1, #0
_02218ECC:
	cmp r1, #0
	bne _02218ED4
	bl GF_AssertFail
_02218ED4:
	add r3, sp, #0
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r3, #8]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x44
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r4, #0
	str r0, [r2]
	add r3, #0x2c
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #1
	str r0, [r2]
	add r0, r4, #0
	bl ov96_02218578
	add r0, r4, #0
	bl ov96_02218934
	cmp r0, #0
	beq _02218F12
	add r0, r4, #0
	bl ov96_02219030
_02218F12:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_02218EB8

