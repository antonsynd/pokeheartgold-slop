	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220F03C
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E8A20
	.extern ov96_0220F8C8
	.extern ov96_0220FA18
	.extern ov96_02210030
	.extern ov96_02210858

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
	thumb_func_start ov96_0220F03C
ov96_0220F03C: ; 0x0220F03C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r7, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	beq _0220F05C
	b _0220F1A4
_0220F05C:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #4]
	ldr r0, [r0, #0x20]
	lsr r0, r0, #0x1f
	beq _0220F07E
	add r7, #0xcc
	ldr r1, [sp]
	add r0, r7, #0
	bl ov96_0220FA18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0220F07E:
	ldr r0, _0220F1A8 ; =0x0000050C
	ldr r1, [r7, r0]
	cmp r1, #0
	ble _0220F0AA
	sub r1, r1, #1
	str r1, [r7, r0]
	ldr r0, [r7, r0]
	mov r1, #0x1e
	add r0, #0x1e
	bl _s32_div_f
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	ldr r0, _0220F1AC ; =0xC0FFFFFF
	and r1, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #2
	orr r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #0x1c]
_0220F0AA:
	ldr r0, [sp, #0xc]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_0220F0BE:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0220F0BE
	ldr r0, [r3]
	mov r6, #0
	str r0, [r4]
	ldr r4, [sp, #0xc]
	mov r0, #0x57
	lsl r0, r0, #2
	add r4, #0x50
	add r5, r7, r0
_0220F0D6:
	add r0, r4, #0
	bl ov96_021E8A20
	add r2, r0, #0
	ldr r0, [r2]
	ldr r1, [r5, #4]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1f
	beq _0220F13A
	lsl r0, r1, #0x11
	lsr r3, r0, #0x1f
	beq _0220F0FC
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	beq _0220F0FC
	ldr r0, _0220F1B0 ; =0xFFFFBFFF
	and r0, r1
	str r0, [r5, #4]
	b _0220F114
_0220F0FC:
	cmp r3, #0
	bne _0220F114
	ldr r1, [r5, #4]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	bne _0220F114
	mov r0, #1
	lsl r0, r0, #0xe
	orr r1, r0
	lsl r0, r0, #1
	orr r0, r1
	str r0, [r5, #4]
_0220F114:
	ldr r0, [r2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r5]
	ldr r0, [r2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	strh r0, [r5, #2]
	ldr r1, [r5, #4]
	ldr r0, _0220F1B4 ; =0xFFFFC000
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x12
	add r2, r1, #1
	ldr r1, _0220F1B8 ; =0x00003FFF
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	b _0220F156
_0220F13A:
	ldr r0, _0220F1BC ; =0xE000FFFF
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x12
	lsl r1, r1, #0x13
	lsr r1, r1, #3
	orr r1, r0
	ldr r0, _0220F1B4 ; =0xFFFFC000
	and r1, r0
	sub r0, r0, #1
	and r1, r0
	ldr r0, _0220F1C0 ; =0xFFFF7FFF
	and r0, r1
	str r0, [r5, #4]
_0220F156:
	add r6, r6, #1
	add r4, #0x28
	add r5, #0xe4
	cmp r6, #4
	blt _0220F0D6
	add r0, r7, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ov96_02210858
	ldr r0, _0220F1C4 ; =0x000004EC
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r7, r0
	bl ov96_02210030
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, [sp]
	add r0, r7, r0
	bl ov96_0220F8C8
	ldr r0, _0220F1A8 ; =0x0000050C
	ldr r0, [r7, r0]
	cmp r0, #0
	bgt _0220F19A
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x20]
	ldr r0, _0220F1C8 ; =0x7FFFFFFF
	and r1, r0
	add r0, r0, #1
	orr r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #0x20]
_0220F19A:
	add r7, #0xcc
	ldr r1, [sp]
	add r0, r7, #0
	bl ov96_0220FA18
_0220F1A4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220F1A8: .word 0x0000050C
_0220F1AC: .word 0xC0FFFFFF
_0220F1B0: .word 0xFFFFBFFF
_0220F1B4: .word 0xFFFFC000
_0220F1B8: .word 0x00003FFF
_0220F1BC: .word 0xE000FFFF
_0220F1C0: .word 0xFFFF7FFF
_0220F1C4: .word 0x000004EC
_0220F1C8: .word 0x7FFFFFFF
	thumb_func_end ov96_0220F03C

