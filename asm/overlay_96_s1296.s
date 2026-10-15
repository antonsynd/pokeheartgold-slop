	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022187A8
	.public ov96_02218934
	.extern ov96_021EB06C
	.extern ov96_02215944
	.extern ov96_022186CC
	.extern ov96_02218784
	.extern ov96_0221D6D4

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
	thumb_func_start ov96_022187A8
ov96_022187A8: ; 0x022187A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	str r1, [sp]
	add r1, r5, #0
	add r0, #0x20
	add r1, #0x2c
	add r2, sp, #0x4c
	bl VEC_Subtract
	add r0, sp, #0x4c
	bl VEC_Mag
	add r7, r0, #0
	cmp r7, #0
	ble _022187CC
	mov r4, #1
	b _022187CE
_022187CC:
	mov r4, #0
_022187CE:
	ldr r0, [r5, #0x60]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	beq _02218884
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _022187E0
	bl GF_AssertFail
_022187E0:
	ldr r0, [r5, #0x18]
	cmp r0, #6
	beq _022187EA
	cmp r0, #9
	bne _022187F0
_022187EA:
	mov r6, #1
	lsl r6, r6, #0xc
	b _022187F2
_022187F0:
	ldr r6, _02218928 ; =0x00000B33
_022187F2:
	mov r0, #0x58
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bgt _0221883E
	mov r2, #0
	add r0, sp, #0x10
	str r2, [r0]
	add r1, sp, #0x1c
	str r2, [r0, #4]
	str r2, [r1]
	str r2, [r0, #8]
	add r0, r5, #0
	str r2, [r1, #4]
	add r0, #0x44
	str r2, [r1, #8]
	bl VEC_Normalize
	add r0, r6, #0
	add r1, sp, #0x1c
	add r2, sp, #0x10
	add r3, sp, #0x28
	bl VEC_MultAdd
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bge _02218828
	neg r0, r0
_02218828:
	ldr r2, [sp, #0x2c]
	str r0, [sp, #0x28]
	cmp r2, #0
	bge _02218832
	neg r2, r2
_02218832:
	add r0, r5, #0
	ldr r1, [sp, #0x28]
	add r0, #0x44
	str r2, [sp, #0x2c]
	bl ov96_02215944
_0221883E:
	add r0, r5, #0
	add r0, #0x2c
	add r1, r5, #0
	add r1, #0x44
	add r2, r0, #0
	bl VEC_Add
	add r3, r5, #0
	add r3, #0x2c
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _02218922
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _02218922
	ldr r1, [r5, #0x60]
	ldr r0, [sp]
	lsl r1, r1, #0xa
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_02218784
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x60]
	ldr r0, _0221892C ; =0xF7FFFFFF
	and r0, r1
	str r0, [r5, #0x60]
_02218884:
	ldr r0, [r5, #0x60]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _02218922
	mov r0, #0x58
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bgt _02218922
	cmp r4, #0
	beq _02218922
	add r0, sp, #0x4c
	add r1, sp, #0x40
	bl VEC_Normalize
	ldr r0, [r5, #0x60]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	bne _022188BC
	add r0, sp, #0x40
	bl ov96_022186CC
	lsl r0, r0, #0x1c
	ldr r2, [r5, #0x60]
	ldr r1, _02218930 ; =0xFFF0FFFF
	lsr r0, r0, #0xc
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x60]
_022188BC:
	ldr r1, [r5, #4]
	ldr r0, [r1, #4]
	ldr r2, [r1, #8]
	mov r1, #0x1e
	lsl r1, r1, #0xc
	ldr r0, [r0, #0xc]
	cmp r2, r1
	bge _022188E6
	asr r1, r0, #0x1f
	lsr r2, r0, #0x15
	lsl r1, r1, #0xb
	lsl r3, r0, #0xb
	mov r0, #2
	orr r1, r2
	mov r2, #0
	lsl r0, r0, #0xa
	add r0, r3, r0
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
_022188E6:
	cmp r7, r0
	bgt _022188F8
	add r3, sp, #0x4c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _0221890A
_022188F8:
	add r2, sp, #4
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	add r1, sp, #0x40
	add r3, sp, #0x34
	bl VEC_MultAdd
_0221890A:
	add r0, r5, #0
	add r0, #0x2c
	add r1, sp, #0x34
	add r2, r0, #0
	bl VEC_Add
	add r2, sp, #0x40
	ldmia r2!, {r0, r1}
	add r5, #0x38
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
_02218922:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02218928: .word 0x00000B33
_0221892C: .word 0xF7FFFFFF
_02218930: .word 0xFFF0FFFF
	thumb_func_end ov96_022187A8

	thumb_func_start ov96_02218934
ov96_02218934: ; 0x02218934
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	ble _02218944
	ldr r2, [r0, #0x30]
	cmp r2, #0
	bgt _0221894A
_02218944:
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0221894A:
	add r1, sp, #4
	str r1, [sp]
	ldr r0, [r0, #4]
	asr r1, r3, #0xc
	ldr r0, [r0]
	asr r2, r2, #0xc
	add r3, sp, #8
	bl ov96_021EB06C
	ldr r4, [sp, #4]
	cmp r4, #0x40
	blt _02218A46
	cmp r4, #0xa0
	bgt _02218A46
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _0221897E
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0221898C
_0221897E:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0221898C:
	bl _ffix
	add r7, r0, #0
	cmp r4, #0
	ble _022189A8
	lsl r0, r4, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022189B6
_022189A8:
	lsl r0, r4, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022189B6:
	bl _ffix
	add r4, r0, #0
	mov r0, #0
	ldr r1, _02218A4C ; =ov96_0221D6D4
	add r2, sp, #0xc
	add r3, r0, #0
	mov r5, #2
_022189C6:
	ldrsh r6, [r1, r3]
	add r0, r0, #1
	lsl r6, r6, #0xc
	str r6, [r2]
	ldrsh r6, [r1, r5]
	add r1, r1, #4
	lsl r6, r6, #0xc
	str r6, [r2, #4]
	add r2, #0xc
	cmp r0, #4
	blt _022189C6
	ldr r5, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	sub r2, r7, r5
	sub r0, r1, r0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [sp, #0x18]
	sub r1, r1, r5
	bl FX_Div
	ldr r1, [sp, #0x10]
	ldr r5, [sp, #0x24]
	add r6, r0, r1
	sub r2, r7, r5
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x28]
	asr r3, r2, #0x1f
	sub r0, r1, r0
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [sp, #0x30]
	sub r1, r1, r5
	bl FX_Div
	ldr r1, [sp, #0x28]
	add r0, r0, r1
	cmp r4, r6
	blt _02218A46
	cmp r4, r0
	blt _02218A46
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02218A46:
	mov r0, #1
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02218A4C: .word ov96_0221D6D4
	thumb_func_end ov96_02218934

