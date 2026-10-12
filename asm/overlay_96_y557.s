	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220050C
	.public ov96_022005B4
	.public ov96_022006BC
	.extern ov96_021EB588
	.extern ov96_021EB594
	.extern ov96_02200454
	.extern ov96_02200BD8
	.extern ov96_0221C748
	.extern ov96_0221C754

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
	thumb_func_start ov96_0220050C
ov96_0220050C: ; 0x0220050C
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r4, r1, #0
	add r5, r0, #0
	lsr r3, r2, #0x1f
	lsl r1, r2, #0x16
	sub r1, r1, r3
	mov r0, #0x16
	ror r1, r0
	add r0, r3, r1
	lsl r1, r0, #0x10
	asr r0, r1, #9
	lsr r0, r0, #0x16
	add r0, r1, r0
	lsl r0, r0, #6
	lsr r1, r0, #0x10
	mov r0, #1
	lsl r0, r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #0x10
	ldr r6, _022005A8 ; =ov96_0221C748
	lsr r2, r0, #0x10
	ldmia r6!, {r0, r1}
	add r3, sp, #0x30
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	ldr r6, _022005AC ; =ov96_0221C754
	str r0, [r3]
	ldmia r6!, {r0, r1}
	add r3, sp, #0x24
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	asr r0, r2, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _022005B0 ; =FX_SinCosTable_
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotZ33_
	add r0, sp, #0x30
	add r1, sp, #0
	add r2, r0, #0
	bl MTX_MultVec33
	add r0, sp, #0x24
	add r1, sp, #0x30
	add r2, sp, #0x3c
	bl VEC_Add
	lsl r4, r4, #5
	add r0, r5, r4
	ldr r0, [r0, #0x48]
	add r1, sp, #0x3c
	bl ov96_021EB588
	add r0, r5, r4
	ldr r0, [r0, #0x54]
	add r1, sp, #0x3c
	bl ov96_021EB588
	add r0, r5, r4
	ldr r0, [r0, #0x4c]
	add r1, sp, #0x3c
	bl ov96_021EB588
	add r0, r5, r4
	ldr r0, [r0, #0x50]
	add r1, sp, #0x3c
	bl ov96_021EB588
	add sp, #0x48
	pop {r4, r5, r6, pc}
	nop
_022005A8: .word ov96_0221C748
_022005AC: .word ov96_0221C754
_022005B0: .word FX_SinCosTable_
	thumb_func_end ov96_0220050C

	thumb_func_start ov96_022005B4
ov96_022005B4: ; 0x022005B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl _ffltu
	bl _f2d
	ldr r2, _022006B4 ; =0x9999999A
	ldr r3, _022006B8 ; =0x40599999
	bl _ddiv
	bl _dfixu
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x20
	strb r1, [r0, #2]
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x20
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x20
	strb r1, [r0, #3]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x20
	strb r1, [r0, #1]
	mov r4, #0
	mov r7, #4
	mov r6, #8
_0220062E:
	str r7, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #0x38]
	lsl r2, r4, #2
	add r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x20
	add r0, #2
	ldrb r0, [r0, r4]
	add r2, #0xe
	lsl r2, r2, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrb r0, [r0, r4]
	mov r1, #5
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	add r3, r6, #0
	bl CopyRectToBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _0220062E
	ldr r0, [sp, #0x1c]
	mov r1, #5
	bl _s32_div_f
	add r4, r1, #0
	ldr r0, [sp, #0x1c]
	mov r1, #5
	bl _s32_div_f
	mov r1, #4
	lsl r0, r0, #0x1b
	str r1, [sp]
	mov r3, #8
	str r3, [sp, #4]
	ldr r1, [r5, #0x38]
	lsr r0, r0, #0x18
	add r1, #0xc
	str r1, [sp, #8]
	lsl r1, r4, #0x1a
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	mov r1, #5
	mov r2, #0x18
	bl CopyRectToBgTilemapRect
	ldr r0, [r5, #8]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022006B4: .word 0x9999999A
_022006B8: .word 0x40599999
	thumb_func_end ov96_022005B4

	thumb_func_start ov96_022006BC
ov96_022006BC: ; 0x022006BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r5, #0x59
	add r4, r0, #0
	lsl r5, r5, #2
	add r6, r1, #0
	ldr r1, [r4, r5]
	cmp r1, #3
	bhi _0220073A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022006DA: ; jump table
	.short _022006E2 - _022006DA - 2 ; case 0
	.short _0220076E - _022006DA - 2 ; case 1
	.short _022007B2 - _022006DA - 2 ; case 2
	.short _0220084C - _022006DA - 2 ; case 3
_022006E2:
	add r0, r5, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x18
	bl ov96_021EB588
	mov r0, #0x2e
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _0220073C
_0220073A:
	b _022008FA
_0220073C:
	mov r0, #0x76
	lsl r0, r0, #0xe
	str r0, [sp, #0x1c]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x18
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x18
	bl ov96_021EB588
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _022008FA
_0220076E:
	add r1, r5, #4
	ldr r1, [r4, r1]
	add r2, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_02200454
	sub r1, r5, #4
	add r0, r4, r1
	add r1, #8
	ldr r1, [r4, r1]
	lsl r2, r1, #1
	ldrh r1, [r0, r2]
	cmp r1, #0
	bne _02200790
	mov r1, #2
	b _02200792
_02200790:
	sub r1, r1, #1
_02200792:
	mov r3, #0x5a
	lsl r3, r3, #2
	strh r1, [r0, r2]
	ldr r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, r3]
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _022008FA
_022007B2:
	add r0, r5, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0xc
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #2
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl ov96_021EB588
	mov r0, #0xa2
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _022008FA
	str r0, [sp, #0x10]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl ov96_021EB588
	add r3, r5, #4
	ldr r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, r3]
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _022008FA
_0220084C:
	add r0, r5, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	mov r0, #0x23
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _022008FA
	str r0, [sp, #4]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	add r3, r5, #4
	ldr r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, r3]
	add r0, r6, #2
	mov r1, #3
	bl _s32_div_f
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_02200BD8
	mov r0, #0
	str r0, [r4, r5]
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022008FA:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_022006BC

