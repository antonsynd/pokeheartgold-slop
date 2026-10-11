	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02213444
	.public ov96_022134D4
	.public ov96_02213514
	.public ov96_02213534
	.public ov96_02213558

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
	thumb_func_start ov96_02213444
ov96_02213444: ; 0x02213444
	push {r4, r5, r6}
	sub sp, #0xc
	add r2, sp, #0
	mov r3, #0
	str r3, [r2]
	str r3, [r2, #4]
	add r4, r0, #0
	add r5, r4, #0
	str r3, [r2, #8]
	add r6, r2, #0
	ldmia r6!, {r0, r1}
	add r5, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	add r5, r4, #0
	ldmia r2!, {r0, r1}
	add r5, #0x20
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	mov r1, #3
	str r0, [r5]
	add r0, r4, #0
	add r0, #0x38
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x3a
	strb r3, [r0]
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x3b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x3c
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x3d
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x3e
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x40
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x41
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x43
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x45
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x46
	strh r3, [r0]
	add r1, r3, #0
_022134BC:
	add r0, r4, r3
	add r0, #0x2c
	strb r1, [r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0xc
	blo _022134BC
	add sp, #0xc
	pop {r4, r5, r6}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_02213444

	thumb_func_start ov96_022134D4
ov96_022134D4: ; 0x022134D4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r1, r4, #0
	add r0, r2, #0
	add r1, #0x20
	bl VEC_Normalize
	add r5, r4, #0
	add r2, r4, #0
	add r5, #0x20
	add r2, #0x14
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	add r4, #0x40
	str r0, [r2]
	ldrb r0, [r4]
	add r1, r3, #0
	add r2, sp, #0
	lsl r0, r0, #0xc
	bl VEC_MultAdd
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_022134D4

	thumb_func_start ov96_02213514
ov96_02213514: ; 0x02213514
	push {r4, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, sp, #0xc
	bl VEC_Normalize
	add r0, r4, #0
	add r1, sp, #0
	bl VEC_Normalize
	add r0, sp, #0xc
	add r1, sp, #0
	bl VEC_DotProduct
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov96_02213514

	thumb_func_start ov96_02213534
ov96_02213534: ; 0x02213534
	push {r4, lr}
	add r4, r2, #0
	bl ov96_02213514
	asr r1, r4, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02213554 ; =FX_SinCosTable_
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _02213550
	mov r0, #1
	pop {r4, pc}
_02213550:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_02213554: .word FX_SinCosTable_
	thumb_func_end ov96_02213534

	thumb_func_start ov96_02213558
ov96_02213558: ; 0x02213558
	add r1, r0, #0
	add r1, #0x61
	ldrb r1, [r1]
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0x61
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x61
	ldrb r1, [r1]
	cmp r1, #0xa
	blo _0221359A
	add r1, r0, #0
	mov r2, #0
	add r1, #0x61
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x71
	ldrb r1, [r1]
	add r2, r1, #2
	add r1, r0, #0
	add r1, #0x71
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x70
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x71
	ldrb r1, [r1]
	cmp r1, r2
	bls _0221359A
	add r0, #0x71
	strb r2, [r0]
_0221359A:
	bx lr
	thumb_func_end ov96_02213558

