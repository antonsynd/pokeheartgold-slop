	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EDE64
	.extern PokeathlonCourse_GetFieldData
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021ECC4C
	.extern ov96_021EE264

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
	thumb_func_start ov96_021EDE64
ov96_021EDE64: ; 0x021EDE64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	bl ov96_021E5F24
	str r0, [sp, #4]
	add r0, r4, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp]
	add r0, r4, #0
	bl PokeathlonCourse_GetFieldData
	add r7, r0, #0
	ldr r0, [sp]
	add r0, #0x9c
	ldr r0, [r0]
	lsl r0, r0, #4
	lsr r1, r0, #0x1c
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _021EDEA2
	mov r1, #0x1d
	lsl r1, r1, #4
	ldrh r2, [r7, r1]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r7, r1]
_021EDEA2:
	ldr r5, _021EDF34 ; =0x000003E7
	mov r4, #0
_021EDEA6:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	cmp r5, r0
	blt _021EDEB6
	add r5, r0, #0
_021EDEB6:
	add r4, r4, #1
	cmp r4, #4
	blt _021EDEA6
	ldr r1, [sp, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	cmp r0, r5
	bne _021EDED8
	mov r1, #0x1d
	lsl r1, r1, #4
	ldrh r2, [r7, r1]
	mov r0, #2
	orr r0, r2
	strh r0, [r7, r1]
_021EDED8:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r0, r1, r0
	add r0, #0xac
	ldrb r1, [r0]
	mov r0, #6
	lsl r0, r0, #6
	str r1, [r7, r0]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, #0x8c
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	ldr r1, _021EDF38 ; =0x000001D2
	strh r0, [r7, r1]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #0x18
	add r0, #0x9c
	lsr r1, r1, #0x18
	str r0, [sp]
	bl ov96_021EE264
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021EDF1A
	bl GF_AssertFail
_021EDF1A:
	mov r2, #0x1d
	lsl r2, r2, #4
	ldrh r0, [r7, r2]
	mov r1, #0xc
	bic r0, r1
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1c
	orr r0, r1
	strh r0, [r7, r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EDF34: .word 0x000003E7
_021EDF38: .word 0x000001D2
	thumb_func_end ov96_021EDE64

