	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220B7F4
	.extern ov96_021E5F24
	.extern ov96_021E60D8
	.extern ov96_0220BE28
	.extern ov96_0220C844

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
	thumb_func_start ov96_0220B7F4
ov96_0220B7F4: ; 0x0220B7F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r7, r3, #0
	add r4, r0, #0
	add r0, r7, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x2c
	mov r1, #0xaa
	mov r2, #5
	bl ReadWholeNarcMemberByIdPair
	add r0, r4, #0
	mov r1, #0xc8
	bl Heap_Alloc
	str r0, [sp, #0x1c]
	mov r1, #0
	mov r2, #0xc8
	bl MI_CpuFill8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0xc]
	str r4, [r0]
	str r1, [r0, #4]
	ldr r1, [sp, #0x10]
	str r1, [r0, #8]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0x10]
	ldr r1, [sp, #0x14]
	bl ov96_0220C844
	ldr r0, [sp, #0x1c]
	mov r6, #0
	str r0, [sp, #0x18]
	add r0, #0x14
	str r0, [sp, #0x18]
_0220B84C:
	ldr r0, [sp, #0x14]
	cmp r6, r0
	beq _0220B892
	mov r4, #0
	add r5, sp, #0x20
_0220B856:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov96_021E60D8
	ldrb r0, [r0, #3]
	add r4, r4, #1
	lsl r1, r0, #2
	add r0, sp, #0x2c
	add r0, r0, r1
	ldr r0, [r0, #0x14]
	cmp r4, #3
	stmia r5!, {r0}
	blt _0220B856
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #0x20
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [r3, #0x10]
	bl ov96_0220BE28
	ldr r0, [sp, #0x18]
	add r0, #0x3c
	str r0, [sp, #0x18]
_0220B892:
	add r6, r6, #1
	cmp r6, #4
	blt _0220B84C
	ldr r0, [sp, #0x1c]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220B7F4

