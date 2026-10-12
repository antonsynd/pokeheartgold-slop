	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FF6DC
	.public ov96_021FF72C
	.public ov96_021FF764
	.public ov96_021FFAEC
	.extern ov96_021E8228
	.extern ov96_021EAF78
	.extern ov96_021EB0A4
	.extern ov96_021EB588

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
	thumb_func_start ov96_021FF6DC
ov96_021FF6DC: ; 0x021FF6DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xa5
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF6F8
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	add r0, #0x2c
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
_021FF6F8:
	mov r0, #0x1c
	add r4, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldr r0, [r0, #0x24]
	bl _f2d
	ldr r3, _021FF728 ; =0x40440000
	mov r2, #0
	bl _dleq
	bhi _021FF71C
	add r0, r5, r4
	add r0, #0x2d
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
_021FF71C:
	add r0, r5, r4
	add r0, #0x2e
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FF728: .word 0x40440000
	thumb_func_end ov96_021FF6DC

	thumb_func_start ov96_021FF72C
ov96_021FF72C: ; 0x021FF72C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r3, [r0]
	ldr r2, [r1]
	add r2, r3, r2
	str r2, [r5]
	ldr r4, [r1, #4]
	ldr r6, [r0, #4]
	asr r3, r4, #0x1f
	asr r1, r6, #0x1f
	add r0, r6, #0
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	bmi _021FF760
	add r0, r6, r4
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021FF760:
	str r4, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021FF72C

	thumb_func_start ov96_021FF764
ov96_021FF764: ; 0x021FF764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	str r0, [sp, #8]
	mov r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r0, [sp, #0x24]
	str r0, [sp, #0x9c]
	str r0, [sp, #0x90]
	str r0, [sp, #0x18]
	add r4, r1, #0
_021FF77A:
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FF796
	add r0, r4, #0
	add r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF798
_021FF796:
	b _021FFAC8
_021FF798:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x3c
	str r0, [sp]
	ldr r2, [r4, #0x7c]
	ldr r0, [sp, #0x2c]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	add r2, r4, #0
	add r2, #0x80
	ldr r3, [r2]
	asr r1, r1, #0xc
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r3, sp, #0x40
	bl ov96_021EB0A4
	add r0, r4, #0
	str r0, [sp, #0x30]
	add r0, #0x8c
	ldr r5, [sp, #0xc]
	mov r6, #0
	str r0, [sp, #0x30]
_021FF7D0:
	ldr r0, [sp, #0x18]
	cmp r0, r6
	bne _021FF7D8
	b _021FFABE
_021FF7D8:
	add r0, r5, #0
	add r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FF8E0
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	ldr r7, [sp, #0x40]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x28]
	add r0, sp, #0x34
	str r0, [sp]
	ldr r1, [r5, #0x7c]
	ldr r0, [sp, #0x28]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	add r2, r5, #0
	add r2, #0x80
	ldr r3, [r2]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r3, sp, #0x38
	bl ov96_021EB0A4
	ldr r0, [r4, #0x7c]
	str r0, [sp, #0x1c]
	bl _dflt
	ldr r3, _021FFADC ; =0x41480000
	mov r2, #0
	bl _dgr
	bls _021FF846
	mov r0, #1
	ldr r1, [r5, #0x7c]
	lsl r0, r0, #0x14
	cmp r1, r0
	bge _021FF846
	ldr r0, [sp, #0x38]
	bl _dflt
	ldr r3, _021FFAE0 ; =0x40900000
	mov r2, #0
	bl _dadd
	bl _dfix
	str r0, [sp, #0x38]
	b _021FF874
_021FF846:
	ldr r0, [r5, #0x7c]
	bl _dflt
	ldr r3, _021FFADC ; =0x41480000
	mov r2, #0
	bl _dgr
	bls _021FF874
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x14
	cmp r1, r0
	bge _021FF874
	add r0, r7, #0
	bl _dflt
	ldr r3, _021FFAE0 ; =0x40900000
	mov r2, #0
	bl _dadd
	bl _dfix
	add r7, r0, #0
_021FF874:
	add r0, sp, #0x8c
	str r0, [sp]
	add r0, sp, #0x44
	str r0, [sp, #4]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x34]
	ldr r0, [sp, #0x28]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x88
	bl ov96_021EAF78
	add r0, sp, #0x98
	str r0, [sp]
	add r0, sp, #0x48
	str r0, [sp, #4]
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x2c]
	lsl r1, r7, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x94
	bl ov96_021EAF78
	add r0, sp, #0x88
	add r1, sp, #0x94
	add r2, sp, #0x7c
	bl VEC_Subtract
	add r0, sp, #0x7c
	bl VEC_Mag
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	add r1, r2, r1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _021FF8C0
	b _021FFAAC
_021FF8C0:
	add r0, r4, r6
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FF8E0
	mov r1, #0
	add r0, sp, #0x70
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [sp, #0x30]
	add r0, sp, #0x7c
	bl VEC_DotProduct
	cmp r0, #0
	bgt _021FF8E2
_021FF8E0:
	b _021FFABE
_021FF8E2:
	add r0, r4, #0
	add r0, #0x8c
	bl VEC_Mag
	cmp r0, #0
	beq _021FF94C
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	mov r2, #0x1c
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	ldr r0, _021FFAE4 ; =0x45800000
	mul r2, r1
	add r1, r4, r2
	ldr r1, [r1, #0x20]
	bl _fmul
	bl _ffix
	add r1, r4, #0
	add r3, r5, #0
	add r1, #0x8c
	add r2, sp, #0x70
	add r3, #0x8c
	bl VEC_MultAdd
	add r0, r5, #0
	add r0, #0x8c
	bl VEC_Mag
	mov r1, #0xb
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _021FF94C
	add r1, sp, #0x64
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	add r0, #0x8c
	add r1, r0, #0
	bl VEC_Normalize
	add r1, r5, #0
	mov r0, #0xb
	add r1, #0x8c
	lsl r0, r0, #0xc
	add r2, sp, #0x64
	add r3, r1, #0
	bl VEC_MultAdd
_021FF94C:
	ldr r0, [sp, #0x14]
	mov r1, #0x1c
	mul r1, r0
	add r0, r5, r1
	add r1, r0, #0
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #1
	bne _021FF98A
	mov r1, #0
	str r1, [r0, #0x24]
	add r1, r0, #0
	mov r2, #2
	add r1, #0x30
	strb r2, [r1]
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	strb r1, [r0]
	mov r3, #1
	add r1, r5, #0
	add r2, r5, #0
	str r3, [sp]
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	bl ov96_021E8228
_021FF98A:
	add r3, sp, #0x58
	mov r7, #0
	str r7, [r3]
	str r7, [r3, #4]
	str r7, [r3, #8]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x8c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x1c
	str r0, [r2]
	ldr r0, [sp, #0x20]
	mul r1, r0
	add r0, r4, r1
	add r1, r0, #0
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #1
	bne _021FF9DC
	add r1, r0, #0
	str r7, [r0, #0x24]
	mov r2, #2
	add r1, #0x30
	strb r2, [r1]
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xa4
	strb r1, [r0]
	mov r3, #1
	add r1, r4, #0
	add r2, r4, #0
	str r3, [sp]
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	bl ov96_021E8228
_021FF9DC:
	add r0, r4, r6
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF9EA
	bl GF_AssertFail
_021FF9EA:
	ldr r0, [sp, #0x18]
	add r0, r5, r0
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF9FA
	bl GF_AssertFail
_021FF9FA:
	add r1, r5, r6
	mov r0, #1
	add r1, #0x98
	strb r0, [r1]
	ldr r1, [sp, #0x18]
	add r1, r4, r1
	add r1, #0x98
	strb r0, [r1]
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bne _021FFA6C
	add r2, sp, #0x4c
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r0, [sp, #0x24]
	add r0, sp, #0x88
	add r1, sp, #0x94
	bl VEC_Subtract
	add r0, sp, #0x4c
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [sp, #0x48]
	add r1, sp, #0x4c
	lsl r0, r0, #0xc
	add r2, sp, #0x94
	add r3, r1, #0
	bl VEC_MultAdd
	ldr r6, [sp, #0x4c]
	add r0, r6, #0
	bl _dflt
	ldr r3, _021FFAE8 ; =0x41500000
	mov r2, #0
	bl _dgeq
	blo _021FFA60
	add r0, r6, #0
	bl _dflt
	ldr r3, _021FFAE8 ; =0x41500000
	mov r2, #0
	bl _dsub
	bl _dfix
	str r0, [sp, #0x4c]
_021FFA60:
	add r3, sp, #0x4c
	ldr r2, [sp, #0x10]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_021FFA6C:
	add r0, r5, #0
	mov r1, #6
	add r0, #0xa9
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0xa9
	strb r1, [r0]
	add r1, r5, #0
	mov r0, #1
	str r0, [sp]
	add r1, #0xd0
	add r5, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r5]
	ldr r0, [sp, #8]
	mov r3, #4
	bl ov96_021E8228
	mov r0, #1
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp]
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	mov r3, #4
	bl ov96_021E8228
	b _021FFAC8
_021FFAAC:
	add r1, r4, r6
	add r1, #0x98
	mov r0, #0
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	add r1, r0, r5
	add r1, #0x98
	mov r0, #0
	strb r0, [r1]
_021FFABE:
	add r6, r6, #1
	add r5, #0xd4
	cmp r6, #4
	bge _021FFAC8
	b _021FF7D0
_021FFAC8:
	ldr r0, [sp, #0x18]
	add r4, #0xd4
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _021FFAD6
	b _021FF77A
_021FFAD6:
	ldr r0, [sp, #0x24]
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FFADC: .word 0x41480000
_021FFAE0: .word 0x40900000
_021FFAE4: .word 0x45800000
_021FFAE8: .word 0x41500000
	thumb_func_end ov96_021FF764

	thumb_func_start ov96_021FFAEC
ov96_021FFAEC: ; 0x021FFAEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r3, r0, #0
	add r4, r2, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
	ldrb r0, [r3, #8]
	cmp r0, #1
	beq _021FFB10
	cmp r0, #2
	beq _021FFB1C
	cmp r0, #3
	beq _021FFB28
	b _021FFB34
_021FFB10:
	mov r0, #5
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	b _021FFB38
_021FFB1C:
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #4]
	b _021FFB38
_021FFB28:
	mov r0, #0xa
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	b _021FFB38
_021FFB34:
	bl GF_AssertFail
_021FFB38:
	add r0, r4, #0
	add r1, sp, #0
	bl ov96_021EB588
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov96_021FFAEC

