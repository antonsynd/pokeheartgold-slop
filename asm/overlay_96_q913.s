	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02208658
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_0220831C
	.extern ov96_02208A80

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
	thumb_func_start ov96_02208658
ov96_02208658: ; 0x02208658
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r3, #0
	mov r3, #0x69
	add r5, r0, #0
	lsl r3, r3, #2
	add r4, r1, #0
	add r6, r5, r3
	ldrb r3, [r6, r4]
	cmp r2, r3
	beq _02208674
	strb r2, [r6, r4]
	bl ov96_0220831C
_02208674:
	cmp r7, #0
	beq _022086B6
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0x28
	mul r0, r4
	add r0, #0x70
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, _0220873C ; =0x00350004
	add r6, r4, #0
	str r0, [sp, #0x14]
	mov r0, #0x1c
	mul r6, r0
	add r0, r5, r6
	ldr r0, [r0, #0x38]
	add r1, sp, #0x10
	bl ov96_021EB588
	add r0, r5, r6
	ldr r0, [r0, #0x40]
	add r1, sp, #0x10
	bl ov96_021EB588
	mov r0, #0x4f
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #0
	bl ov96_02208A80
	b _02208730
_022086B6:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x28
	mul r0, r4
	add r0, #0x70
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x35
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x1c
	add r6, r4, #0
	mul r6, r0
	add r0, r5, r6
	ldr r0, [r0, #0x38]
	add r1, sp, #4
	bl ov96_021EB588
	add r0, r5, r6
	ldr r0, [r0, #0x40]
	add r1, sp, #4
	bl ov96_021EB588
	mov r0, #0x4f
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #1
	bl ov96_02208A80
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _02208724
	add r0, r5, r6
	add r0, #0x44
	ldrb r0, [r0]
	cmp r1, r0
	beq _02208730
	add r7, r5, #0
	mov r0, #0x1c
	mul r0, r4
	mov r1, #1
	add r7, #0x3c
	str r0, [sp]
	ldr r0, [r7, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r7, r0]
	bl ov96_021EB564
	b _02208730
_02208724:
	add r0, r5, r6
	ldr r0, [r0, #0x3c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_02208730:
	add r0, r5, r6
	ldr r1, [sp, #0x30]
	add r0, #0x44
	strb r1, [r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0220873C: .word 0x00350004
	thumb_func_end ov96_02208658

