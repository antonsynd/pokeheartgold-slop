	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E952C
	.public ov96_021E9570

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
	thumb_func_start ov96_021E952C
ov96_021E952C: ; 0x021E952C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021E953A
	bl GF_AssertFail
_021E953A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021E956C
	ldr r0, [r4]
	mov r2, #0
	cmp r0, #0
	ble _021E9568
	mov r5, #0x51
	add r3, r4, #0
	lsl r5, r5, #2
_021E954E:
	ldr r1, [r3, r5]
	add r2, r2, #1
	ldr r0, [r1]
	ldrh r1, [r1, #0xa]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r6, [r0, #0x14]
	add r3, r3, #4
	add r1, r6, r1
	str r1, [r0, #0x14]
	ldr r0, [r4]
	cmp r2, r0
	blt _021E954E
_021E9568:
	mov r0, #1
	str r0, [r4, #0x10]
_021E956C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021E952C

	thumb_func_start ov96_021E9570
ov96_021E9570: ; 0x021E9570
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	str r1, [sp]
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [sp]
	cmp r0, #0xa
	blt _021E958E
	bl GF_AssertFail
_021E958E:
	ldr r1, [r4]
	mov r0, #0
	cmp r1, #0
	ble _021E95B6
	mov r7, #0x51
	add r1, r4, #0
	add r6, sp, #4
	lsl r7, r7, #2
_021E959E:
	ldr r2, [r1, r7]
	add r0, r0, #1
	ldr r3, [r2]
	ldrh r2, [r2, #0xa]
	lsl r5, r3, #2
	ldr r3, [r6, r5]
	add r1, r1, #4
	add r2, r3, r2
	str r2, [r6, r5]
	ldr r2, [r4]
	cmp r0, r2
	blt _021E959E
_021E95B6:
	ldr r1, [sp]
	mov r0, #0
	lsl r1, r1, #4
	add r4, r4, r1
	mov r1, #0x5d
	add r3, sp, #4
	lsl r1, r1, #2
_021E95C4:
	ldr r2, [r3]
	add r0, r0, #1
	str r2, [r4, r1]
	add r3, r3, #4
	add r4, r4, #4
	cmp r0, #4
	blt _021E95C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9570

