	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02210858
	.public ov96_022108BC
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_0220E850
	.extern ov96_022108EC
	.extern ov96_02210980

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
	thumb_func_start ov96_02210858
ov96_02210858: ; 0x02210858
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #4]
	bl PokeathlonCourse_GetHeapAllocPtr4
	mov r7, #0
	add r6, r0, #0
	add r4, r7, #0
_02210868:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_0220E850
	add r4, r4, #1
	add r7, r7, r0
	cmp r4, #4
	blt _02210868
	ldr r0, [sp]
	mov r5, #0
	add r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #0
	ble _022108BA
	asr r0, r7, #1
	lsr r0, r0, #0x1e
	ldr r4, [sp]
	add r0, r7, r0
	lsl r0, r0, #0xe
	add r4, #8
	lsr r7, r0, #0x10
_02210894:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_0220E850
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r4, #0
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl ov96_022108EC
	ldr r0, [sp]
	add r5, r5, #1
	add r0, #0xbc
	ldrb r0, [r0]
	add r4, #0x3c
	cmp r5, r0
	blt _02210894
_022108BA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_02210858

	thumb_func_start ov96_022108BC
ov96_022108BC: ; 0x022108BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x3c
	add r5, r0, #0
	bl MI_CpuFill8
	lsl r0, r4, #1
	mov r6, #0
	add r4, r4, r0
_022108D2:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ov96_02210980
	add r6, r6, #1
	add r4, r4, #1
	add r5, #0x14
	cmp r6, #3
	blt _022108D2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_022108BC

