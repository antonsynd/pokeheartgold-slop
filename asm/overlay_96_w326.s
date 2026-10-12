	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F3A5C
	.public ov96_021F3AB0

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
	thumb_func_start ov96_021F3A5C
ov96_021F3A5C: ; 0x021F3A5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r4, [sp, #0x14]
	add r7, r4, #0
	add r6, sp, #0
_021F3A6E:
	ldr r0, [r5]
	cmp r0, #0
	ble _021F3AA8
	ldrh r0, [r5, #4]
	add r1, r6, #0
	add r2, r6, #0
	lsl r0, r0, #0xc
	str r0, [sp]
	ldrh r0, [r5, #6]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r7, [sp, #8]
	bl VEC_Subtract
	add r0, r6, #0
	bl VEC_Mag
	ldr r1, [r5]
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _021F3AA0
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F3AA0:
	add r4, r4, #1
	add r5, #8
	cmp r4, #4
	blt _021F3A6E
_021F3AA8:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F3A5C

	thumb_func_start ov96_021F3AB0
ov96_021F3AB0: ; 0x021F3AB0
	push {r4, r5}
	mov r5, #0
	mov r2, #0x4a
	lsl r2, r2, #4
	sub r3, r5, #1
_021F3ABA:
	ldr r4, [r0, r2]
	cmp r4, r3
	beq _021F3AD2
	cmp r1, r4
	bne _021F3ACA
	mov r0, #1
	pop {r4, r5}
	bx lr
_021F3ACA:
	add r5, r5, #1
	add r0, r0, #4
	cmp r5, #4
	blt _021F3ABA
_021F3AD2:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov96_021F3AB0

