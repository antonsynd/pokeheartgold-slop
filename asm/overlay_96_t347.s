	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F5730
	.public ov96_021F584C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern ov96_021E5F24
	.extern ov96_021E60D8
	.extern ov96_021E8228
	.extern ov96_0221C100
	.extern ov96_0221C124
	.extern ov96_0221C140
	.extern ov96_0221C15C
	.extern ov96_0221C178
	.extern ov96_0221C194
	.extern ov96_0221C1B0

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
	thumb_func_start ov96_021F5730
ov96_021F5730: ; 0x021F5730
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _021F5756
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F5750
	mov r0, #1
	strb r0, [r6]
_021F5750:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F5756:
	add r0, r5, #0
	bl ov96_021E5F24
	mov r2, #0
	add r6, r0, #0
	add r1, r2, #0
_021F5762:
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	add r1, r1, #1
	add r4, #0x38
	add r2, r2, r0
	cmp r1, #3
	blt _021F5762
	ldr r0, _021F5848 ; =0x000003E7
	cmp r2, r0
	ble _021F577A
	add r2, r0, #0
_021F577A:
	lsl r1, r6, #0x18
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl PokeathlonCourse_SetField5E0_AtIndex
	cmp r6, #0
	bne _021F5842
	add r0, r5, #0
	bl PokeathlonCourse_GetParticipantCount
	str r0, [sp, #8]
	cmp r0, #4
	bge _021F5842
_021F5798:
	ldr r0, [sp, #8]
	mov r4, #0
	lsl r0, r0, #0x18
	str r4, [sp, #4]
	lsr r7, r0, #0x18
_021F57A2:
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	bl ov96_021E60D8
	add r6, r0, #0
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _021F57E0
	bl LCRandom
	mov r1, #0x15
	bl _s32_div_f
	add r3, r1, #0
	ldrb r0, [r6, #3]
	ldrb r2, [r6, #2]
	mov r1, #6
	lsl r0, r0, #1
	mul r1, r2
	ldrb r2, [r6, #4]
	add r1, #0x50
	lsl r2, r2, #1
	add r1, r1, r2
	add r0, r0, r1
	add r1, r0, r3
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	bl LCRandom
_021F57E0:
	mov r0, #0
	lsl r2, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #2
	bl ov96_021E8228
	bl LCRandom
	mov r1, #0x15
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #4
	str r6, [sp]
	bl ov96_021E8228
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #1
	str r6, [sp]
	bl ov96_021E8228
	add r4, r4, #1
	cmp r4, #3
	blt _021F57A2
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl PokeathlonCourse_SetField5E0_AtIndex
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021F5798
_021F5842:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5848: .word 0x000003E7
	thumb_func_end ov96_021F5730

	thumb_func_start ov96_021F584C
ov96_021F584C: ; 0x021F584C
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021F5964 ; =ov96_0221C100
	add r3, sp, #0xa8
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021F5968 ; =ov96_0221C124
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F596C ; =ov96_0221C140
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F5970 ; =ov96_0221C15C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F5974 ; =ov96_0221C178
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F5978 ; =ov96_0221C194
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F597C ; =ov96_0221C1B0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021F5964: .word ov96_0221C100
_021F5968: .word ov96_0221C124
_021F596C: .word ov96_0221C140
_021F5970: .word ov96_0221C15C
_021F5974: .word ov96_0221C178
_021F5978: .word ov96_0221C194
_021F597C: .word ov96_0221C1B0
	thumb_func_end ov96_021F584C

