	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02215EE8
	.public ov96_02215F2C
	.extern PokeathlonCourse_GetHeapAllocPtr4

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
	thumb_func_start ov96_02215EE8
ov96_02215EE8: ; 0x02215EE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r7, r0, #0
	mov r0, #0xa8
	add r5, r4, #0
	mul r5, r0
	mov r0, #0x81
	lsl r0, r0, #2
	add r4, r7, r0
	ldr r0, [r4, r5]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _02215F0C
	bl GF_AssertFail
_02215F0C:
	mov r0, #1
	ldr r1, [r4, r5]
	lsl r0, r0, #0x1e
	orr r0, r1
	str r0, [r4, r5]
	mov r0, #0
	ldrsh r1, [r6, r0]
	mov r0, #7
	add r2, r7, r5
	lsl r0, r0, #6
	strh r1, [r2, r0]
	mov r1, #2
	ldrsh r1, [r6, r1]
	add r0, r0, #2
	strh r1, [r2, r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_02215EE8

	thumb_func_start ov96_02215F2C
ov96_02215F2C: ; 0x02215F2C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	mov r1, #0x81
	lsl r1, r1, #2
	add r5, r0, r1
	mov r0, #0xa8
	add r4, r6, #0
	mul r4, r0
	ldr r0, [r5, r4]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _02215F4C
	bl GF_AssertFail
_02215F4C:
	ldr r0, [r5, r4]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	beq _02215F58
	bl GF_AssertFail
_02215F58:
	mov r0, #2
	ldr r1, [r5, r4]
	lsl r0, r0, #0x1c
	orr r0, r1
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_02215F2C

