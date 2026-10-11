	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220A744
	.extern ov96_0220AE40
	.extern ov96_0220B178
	.extern ov96_0220D13C

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
	thumb_func_start ov96_0220A744
ov96_0220A744: ; 0x0220A744
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r7, r2, #0
	add r4, r3, #0
	bl Heap_Alloc
	mov r2, #0x61
	str r0, [sp, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	mov r0, #6
	ldr r1, [sp, #0xc]
	lsl r0, r0, #6
	ldr r2, [r1, r0]
	mov r1, #0xf
	bic r2, r1
	add r3, r2, #0
	mov r1, #1
	ldr r2, [sp, #0xc]
	orr r3, r1
	str r3, [r2, r0]
	ldr r2, [r2, r0]
	mov r3, #0xf0
	bic r2, r3
	ldr r3, [sp, #0xc]
	str r2, [r3, r0]
	add r0, r3, #0
	str r6, [r0, #4]
	str r7, [r0, #8]
	str r4, [r0]
	mov r0, #7
	str r0, [sp]
	mov r2, #0
	str r1, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r2, #0
	bl ov96_0220D13C
	ldr r1, [sp, #0xc]
	str r0, [r1, #0xc]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r2, #0
	bl ov96_0220D13C
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r5, [sp, #0xc]
	mov r4, #0
_0220A7CA:
	lsl r3, r4, #0x10
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ov96_0220AE40
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa
	blt _0220A7CA
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	add r0, #0x14
	add r2, r7, #0
	bl ov96_0220B178
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220A744

