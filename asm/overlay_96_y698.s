	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220C90C
	.public ov96_0220C93C
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_0220C9F4

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
	thumb_func_start ov96_0220C90C
ov96_0220C90C: ; 0x0220C90C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r6, r1, #2
	add r0, r5, r6
	add r7, r2, #0
	add r4, r3, #0
	mov r3, #1
	ldr r0, [r0, #0x10]
	add r1, r7, #0
	add r2, r4, #0
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add r0, r5, r6
	sub r4, #0x18
	lsl r2, r4, #0x10
	mov r3, #1
	ldr r0, [r0, #0x18]
	add r1, r7, #0
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220C90C

	thumb_func_start ov96_0220C93C
ov96_0220C93C: ; 0x0220C93C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	str r0, [sp]
	bl PokeathlonCourse_GetParticipantCount
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x78
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x78
	add r6, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	str r4, [r6]
	str r0, [r6, #4]
	mov r0, #4
	sub r0, r0, r5
	str r0, [r6, #0x74]
	cmp r0, #3
	bls _0220C96E
	bl GF_AssertFail
_0220C96E:
	ldr r0, [r6, #0x74]
	mov r7, #0
	cmp r0, #0
	bls _0220C992
	add r4, r6, #0
	add r4, #8
_0220C97A:
	lsl r1, r5, #0x18
	ldr r2, [sp]
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_0220C9F4
	ldr r0, [r6, #0x74]
	add r7, r7, #1
	add r5, r5, #1
	add r4, #0x24
	cmp r7, r0
	blo _0220C97A
_0220C992:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220C93C

