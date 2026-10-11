	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E98F4
	.public ov96_021E9994
	.public ov96_021E99B8
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField1EF
	.extern PokeathlonCourse_GetFieldData_AtIndex
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_IncrementField1EF
	.extern PokeathlonCourse_ResetField1EF
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateTransitionType
	.extern ov96_021E5F24

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
	thumb_func_start ov96_021E98F4
ov96_021E98F4: ; 0x021E98F4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r3, [sp]
	add r0, r3, #0
	add r7, r2, #0
	bl PokeathlonCourse_GetDataCopyArea
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E9990
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl PokeathlonCourse_GetFieldData_AtIndex
	add r5, r0, #0
	mov r6, #0
_021E991A:
	lsl r4, r6, #5
	ldr r1, [r5, r4]
	ldr r0, [r7, r4]
	add r3, r7, r4
	add r0, r1, r0
	str r0, [r5, r4]
	add r2, r5, r4
	ldr r1, [r2, #4]
	ldr r0, [r3, #4]
	add r0, r1, r0
	str r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r0, [r3, #8]
	add r0, r1, r0
	str r0, [r2, #8]
	ldr r1, [r2, #0xc]
	ldr r0, [r3, #0xc]
	add r0, r1, r0
	str r0, [r2, #0xc]
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x10]
	add r0, r1, r0
	str r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r0, [r3, #0x14]
	add r0, r1, r0
	str r0, [r2, #0x14]
	ldr r1, [r2, #0x18]
	ldr r0, [r3, #0x18]
	add r0, r1, r0
	str r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r0, [r3, #0x1c]
	add r0, r1, r0
	str r0, [r2, #0x1c]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021E991A
	ldr r0, [sp]
	bl PokeathlonCourse_IncrementField1EF
	ldr r0, [sp]
	bl PokeathlonCourse_GetParticipantCount
	add r4, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetField1EF
	cmp r4, r0
	bne _021E9990
	ldr r0, [sp]
	bl PokeathlonCourse_ResetField1EF
	ldr r0, [sp]
	mov r1, #0x1e
	bl PokeathlonCourse_SetStateField07
_021E9990:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E98F4

	thumb_func_start ov96_021E9994
ov96_021E9994: ; 0x021E9994
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, r4, #0
	bl ov96_021E5F24
	add r0, r4, #0
	mov r1, #0xd
	bl PokeathlonCourse_SetStateTransitionType
	add r0, r4, #0
	mov r1, #0x1f
	bl PokeathlonCourse_SetStateField07
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9994

	thumb_func_start ov96_021E99B8
ov96_021E99B8: ; 0x021E99B8
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1EF
	add r0, r5, #0
	bl PokeathlonCourse_GetParticipantCount
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetField1EF
	cmp r4, r0
	bne _021E99F0
	add r0, r5, #0
	bl PokeathlonCourse_ResetField1EF
	add r0, r5, #0
	mov r1, #0xf
	bl PokeathlonCourse_SetStateTransitionType
	add r0, r5, #0
	mov r1, #0x24
	bl PokeathlonCourse_SetStateField07
_021E99F0:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021E99B8

