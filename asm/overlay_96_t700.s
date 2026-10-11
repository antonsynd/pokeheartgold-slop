	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02214718
	.extern ov96_021E5F24
	.extern ov96_021EA2C4
	.extern ov96_021EB3E4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_021EB5E8
	.extern ov96_0221D648
	.extern ov96_0221D64C
	.extern ov96_0221D660
	.extern ov96_0221D66C

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
	thumb_func_start ov96_02214718
ov96_02214718: ; 0x02214718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r3, _022147EC ; =ov96_0221D660
	str r2, [sp, #4]
	add r7, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _022147F0 ; =ov96_0221D66C
	str r0, [r2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	mov r0, #9
	str r0, [sp]
	add r0, r7, #0
	mov r2, #2
	mov r3, #0x66
	bl ov96_021EB3E4
	mov r1, #1
	add r4, r0, #0
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r4, #0
	add r1, sp, #0x20
	bl ov96_021EB588
	ldr r0, [r6, #4]
	bl ov96_021E5F24
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #1
	bl ov96_021EB564
	mov r0, #0xa
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0x66
	bl ov96_021EB3E4
	mov r1, #1
	add r4, r0, #0
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r4, #0
	add r1, sp, #0x14
	bl ov96_021EB588
	add r0, r4, #0
	mov r1, #5
	bl ov96_021EB564
	str r4, [r6, #0x4c]
	mov r4, #0
_0221479A:
	lsl r0, r4, #2
	add r5, r6, r0
	add r0, r7, #0
	bl ov96_021EB5E8
	add r1, r0, #0
	ldr r0, [sp, #4]
	ldr r3, [r6]
	mov r2, #0
	bl ov96_021EA2C4
	mov r1, #1
	str r0, [r5, #8]
	bl Sprite_SetDrawFlag
	ldr r0, _022147F4 ; =ov96_0221D648
	add r1, sp, #8
	ldrb r0, [r0, r4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0xa
	lsl r0, r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	bl Sprite_SetMatrix
	ldr r1, _022147F8 ; =ov96_0221D64C
	ldr r0, [r5, #8]
	ldrb r1, [r1, r4]
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _0221479A
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_022147EC: .word ov96_0221D660
_022147F0: .word ov96_0221D66C
_022147F4: .word ov96_0221D648
_022147F8: .word ov96_0221D64C
	thumb_func_end ov96_02214718

