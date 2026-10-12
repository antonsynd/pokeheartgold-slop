	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220E770
	.public ov96_0220E7BC
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021EAF8C

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
	thumb_func_start ov96_0220E770
ov96_0220E770: ; 0x0220E770
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0220E782
	bl GF_AssertFail
_0220E782:
	cmp r4, #4
	blo _0220E78A
	bl GF_AssertFail
_0220E78A:
	cmp r6, #3
	blo _0220E792
	bl GF_AssertFail
_0220E792:
	mov r0, #0x59
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xe4
	mul r0, r4
	add r1, r1, r0
	mov r0, #0x48
	mul r0, r6
	add r1, r1, r0
	ldr r0, [r1, #0x1c]
	asr r0, r0, #0xc
	strh r0, [r7]
	ldr r0, [r1, #0x20]
	asr r0, r0, #0xc
	strh r0, [r7, #2]
	ldr r0, [r1, #4]
	bl ov96_021EAF8C
	ldr r1, [sp, #0x18]
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220E770

	thumb_func_start ov96_0220E7BC
ov96_0220E7BC: ; 0x0220E7BC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
	cmp r6, #0
	bne _0220E7CC
	bl GF_AssertFail
_0220E7CC:
	add r0, r6, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	bne _0220E7DA
	bl GF_AssertFail
_0220E7DA:
	mov r1, #0xe4
	mul r1, r5
	mov r2, #0x8f
	add r1, r6, r1
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	mov r0, #0
	lsl r1, r1, #0xe
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r6, r2
_0220E7F2:
	ldr r3, [r2]
	lsl r3, r3, #0xe
	lsr r3, r3, #0x10
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	cmp r0, r5
	beq _0220E80A
	cmp r1, r3
	bhs _0220E80A
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
_0220E80A:
	add r0, r0, #1
	add r2, #0xe4
	cmp r0, #4
	blt _0220E7F2
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_0220E7BC

