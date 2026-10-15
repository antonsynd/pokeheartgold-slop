	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E6F2C
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetUnkConstant4
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_021E5F24
	.extern ov96_021E75E4
	.extern ov96_021E87B4
	.extern ov96_021E8A20
	.extern ov96_021E9A14

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
	thumb_func_start ov96_021E6F2C
ov96_021E6F2C: ; 0x021E6F2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x1e
	add r7, r0, #0
	lsl r1, r1, #4
	ldr r2, [r7, r1]
	ldr r2, [r2, #0x10]
	cmp r2, #0
	beq _021E6FD0
	add r1, #0xac
	add r0, r7, r1
	bl ov96_021E8A20
	add r4, r0, #0
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0x5e
	lsl r0, r0, #4
	ldrh r1, [r2, r0]
	add r0, r0, #2
	strh r1, [r4]
	ldrh r0, [r2, r0]
	strh r0, [r4, #2]
	bl ov96_021E9A14
	mov r3, #0xa3
	lsl r3, r3, #2
	add r1, r7, r3
	sub r3, r3, #4
	add r2, r0, #0
	ldr r3, [r7, r3]
	mov r0, #0x1d
	bl ov96_021E87B4
	str r0, [sp, #4]
	cmp r0, #0
	beq _021E6FE6
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E6FE6
	add r0, r7, #0
	bl PokeathlonCourse_GetUnkConstant4
	add r6, r0, #0
	add r0, r7, #0
	bl PokeathlonCourse_GetParticipantCount
	str r0, [sp]
	cmp r0, #4
	bge _021E6FE6
	mov r0, #0x5e
	lsl r0, r0, #4
	add r1, r7, r0
	ldr r0, [sp]
	lsl r0, r0, #2
	add r4, r1, r0
	ldr r0, [sp]
	add r5, r0, #0
	mul r5, r6
_021E6FAC:
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov96_021E8A20
	add r0, r0, r5
	add r1, r4, #0
	add r2, r6, #0
	bl memcpy
	ldr r0, [sp]
	add r4, r4, #4
	add r0, r0, #1
	add r5, r5, r6
	str r0, [sp]
	cmp r0, #4
	blt _021E6FAC
	b _021E6FE6
_021E6FD0:
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E6FE2
	add r0, r7, #0
	bl ov96_021E75E4
	str r0, [sp, #4]
	b _021E6FE6
_021E6FE2:
	mov r0, #1
	str r0, [sp, #4]
_021E6FE6:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E6FF4
	add r0, r7, #0
	mov r1, #0x26
	bl PokeathlonCourse_SetStateField07
_021E6FF4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6F2C

