	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E69C4
	.public ov96_021E6A00
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateField07_IfDifferent
	.extern ov96_021E5F24
	.extern ov96_021E87EC
	.extern ov96_021E9A04
	.extern ov96_021E9A10

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
	thumb_func_start ov96_021E69C4
ov96_021E69C4: ; 0x021E69C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #1
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E69EA
	bl ov96_021E9A04
	ldr r1, _021E69FC ; =0x000005DC
	mov r3, #0xa2
	lsl r3, r3, #2
	add r2, r0, #0
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #0x19
	bl ov96_021E87EC
	add r5, r0, #0
_021E69EA:
	cmp r5, #0
	beq _021E69F8
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #6
	bl PokeathlonCourse_SetStateField07_IfDifferent
_021E69F8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E69FC: .word 0x000005DC
	thumb_func_end ov96_021E69C4

	thumb_func_start ov96_021E6A00
ov96_021E6A00: ; 0x021E6A00
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	bl PokeathlonSave_GetAgainUnkB00
	add r5, r0, #0
	mov r0, #9
	lsl r0, r0, #8
	add r3, r4, r0
	mov r2, #0xe
_021E6A1E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6A1E
	ldr r0, [r5]
	str r0, [r3]
	bl ov96_021E9A10
	mov r3, #0xa2
	mov r1, #9
	lsl r3, r3, #2
	lsl r1, r1, #8
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1a
	add r1, r4, r1
	bl ov96_021E87EC
	cmp r0, #0
	beq _021E6A4E
	add r0, r4, #0
	mov r1, #0x26
	bl PokeathlonCourse_SetStateField07
_021E6A4E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6A00

