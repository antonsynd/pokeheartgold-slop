	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FBF90
	.extern ov96_021FBE44
	.extern ov96_021FBE54
	.extern ov96_021FBE9C
	.extern ov96_021FBEDC
	.extern ov96_0221C5B8

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
	thumb_func_start ov96_021FBF90
ov96_021FBF90: ; 0x021FBF90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	lsl r4, r5, #3
	add r1, r6, r4
	ldr r1, [r1, #4]
	ldr r0, [r6, r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r2, [sp]
	bl ov96_021FBE44
	add r7, r0, #0
	bl ov96_021FBE9C
	cmp r0, #0
	beq _021FBFBE
	bl GF_AssertFail
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FBFBE:
	add r0, r6, #4
	ldr r1, [r0, r4]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	ldr r3, _021FC024 ; =ov96_0221C5B8
	str r1, [r0, r4]
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	cmp r5, #0
	beq _021FBFF6
	cmp r5, #1
	beq _021FBFFE
	cmp r5, #2
	beq _021FC006
	b _021FC00C
_021FBFF6:
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	b _021FC00C
_021FBFFE:
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #4]
	b _021FC00C
_021FC006:
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #4]
_021FC00C:
	add r0, r7, #0
	add r1, sp, #4
	bl ov96_021FBEDC
	add r0, r7, #0
	mov r1, #1
	bl ov96_021FBE54
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FC024: .word ov96_0221C5B8
	thumb_func_end ov96_021FBF90

