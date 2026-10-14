	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022178A0
	.extern ov96_021E8228
	.extern ov96_02215958
	.extern ov96_0221785C
	.extern ov96_02217868
	.extern ov96_02217890
	.extern ov96_02219174

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
	thumb_func_start ov96_022178A0
ov96_022178A0: ; 0x022178A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x14]
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	ldr r7, [r0]
	ldr r6, [r0, #4]
	ldr r0, [r5, #0x14]
	bl ov96_0221785C
	cmp r0, #0
	bne _022178C0
	b _02217AC6
_022178C0:
	ldr r0, [r4, #0x14]
	cmp r0, #6
	bne _0221794A
	add r0, r7, #0
	bl _fflt
	add r1, r0, #0
	ldr r0, _02217ACC ; =0x40400000
	bl _fmul
	bl _ffix
	add r7, r0, #0
	add r0, r6, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #0x1e
	bl _fmul
	bl _ffix
	add r6, r0, #0
	ldr r0, [r4, #0x60]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x14
	add r1, r0, #1
	cmp r1, #0xc8
	ble _022178FE
	mov r1, #0xc8
_022178FE:
	ldr r0, [r4, #0x60]
	ldr r2, _02217AD0 ; =0xFFFFF000
	mov r3, #3
	and r0, r2
	lsr r2, r2, #0x14
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x60]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov96_021E8228
	b _022179B4
_0221794A:
	cmp r0, #0xb
	bne _022179B0
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	ldr r7, [r0, #0x10]
	ldr r6, [r0, #0x14]
	ldr r0, [r4, #0x60]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x14
	add r1, r0, #2
	cmp r1, #0xc8
	ble _02217964
	mov r1, #0xc8
_02217964:
	ldr r0, [r4, #0x60]
	ldr r2, _02217AD0 ; =0xFFFFF000
	mov r3, #3
	and r0, r2
	lsr r2, r2, #0x14
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x60]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov96_021E8228
	b _022179B4
_022179B0:
	mov r7, #3
	lsl r7, r7, #0xc
_022179B4:
	add r2, r5, #0
	add r2, #0x44
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r3, r2, #0
	bl VEC_MultAdd
	add r0, r5, #0
	mov r1, #3
	add r0, #0x44
	lsl r1, r1, #0xe
	bl ov96_02215958
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov96_02217868
	ldr r0, [r4, #0x14]
	bl ov96_02217890
	cmp r0, #0
	beq _022179F6
	add r0, r5, #0
	mov r1, #4
	add r0, #0x5d
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x5d
	strb r1, [r0]
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_02219174
_022179F6:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02217A06
	ldr r0, [r4, #0x14]
	bl ov96_02217890
	cmp r0, #0
	beq _02217A14
_02217A06:
	str r4, [r5, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02217A14
	cmp r0, r5
	beq _02217A14
	str r0, [r5, #0x10]
_02217A14:
	mov r0, #2
	ldr r1, [r5, #0x60]
	lsl r0, r0, #0x1a
	orr r0, r1
	str r0, [r5, #0x60]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x18]
	ldr r0, [r4, #0x14]
	bl ov96_02217890
	cmp r0, #0
	ldr r1, [r5, #0x60]
	beq _02217A82
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1e
	cmp r0, #2
	beq _02217A5C
	ldr r0, [r4, #0x14]
	cmp r0, #6
	beq _02217A42
	cmp r0, #0xb
	beq _02217A50
	b _02217A5C
_02217A42:
	ldr r0, _02217AD4 ; =0xFFFF3FFF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0xe
	orr r0, r1
	str r0, [r5, #0x60]
	b _02217A5C
_02217A50:
	ldr r0, _02217AD4 ; =0xFFFF3FFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	str r0, [r5, #0x60]
_02217A5C:
	ldr r0, [r4, #0x60]
	ldr r1, [r5, #0x60]
	lsl r0, r0, #0xa
	lsl r1, r1, #0xa
	lsr r0, r0, #0x1e
	lsr r1, r1, #0x1e
	cmp r0, r1
	bhs _02217A6E
	add r0, r0, #1
_02217A6E:
	ldr r2, [r5, #0x60]
	ldr r1, _02217AD8 ; =0xFFFFCFFF
	lsl r0, r0, #0x1e
	and r1, r2
	lsr r0, r0, #0x12
	orr r0, r1
	str r0, [r5, #0x60]
	mov r0, #4
	str r0, [r5, #0x64]
	b _02217A8C
_02217A82:
	ldr r0, _02217ADC ; =0x7FFFFFFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [r5, #0x60]
_02217A8C:
	ldr r0, [r4, #0x14]
	mov r1, #0
	cmp r0, #3
	beq _02217A9A
	cmp r0, #4
	beq _02217A9A
	mov r1, #1
_02217A9A:
	cmp r1, #0
	bne _02217AA2
	bl GF_AssertFail
_02217AA2:
	ldr r0, [r5, #0x14]
	mov r2, #1
	sub r0, r0, #3
	cmp r0, #8
	bhi _02217AB8
	add r1, r2, #0
	lsl r1, r0
	ldr r0, _02217AE0 ; =0x00000103
	tst r0, r1
	beq _02217AB8
	mov r2, #0
_02217AB8:
	cmp r2, #0
	bne _02217AC0
	bl GF_AssertFail
_02217AC0:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02217AC6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02217ACC: .word 0x40400000
_02217AD0: .word 0xFFFFF000
_02217AD4: .word 0xFFFF3FFF
_02217AD8: .word 0xFFFFCFFF
_02217ADC: .word 0x7FFFFFFF
_02217AE0: .word 0x00000103
	thumb_func_end ov96_022178A0

