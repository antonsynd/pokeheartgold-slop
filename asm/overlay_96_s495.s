	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F3B04
	.public ov96_021F3B38

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
	thumb_func_start ov96_021F3B04
ov96_021F3B04: ; 0x021F3B04
	push {r3, r4}
	sub r0, #0x10
	asr r4, r0, #4
	lsr r4, r4, #0x1b
	add r4, r0, r4
	asr r0, r4, #5
	sub r1, #0x10
	strh r0, [r2]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	strh r0, [r3]
	mov r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	blt _021F3B2C
	ldrsh r0, [r3, r0]
	cmp r0, #0
	bge _021F3B32
_021F3B2C:
	mov r0, #0
	pop {r3, r4}
	bx lr
_021F3B32:
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021F3B04

	thumb_func_start ov96_021F3B38
ov96_021F3B38: ; 0x021F3B38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x13c
	add r6, r0, #0
	add r0, sp, #0x10
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	add r7, r2, #0
	str r0, [sp, #0xc]
	mov ip, r1
	ldr r0, [sp]
	cmp r6, #0
	bls _021F3BAE
_021F3B54:
	add r2, r0, #1
	mov r1, #0xc
	mul r1, r2
	add r2, sp, #4
	lsl r4, r0, #2
	mov r3, ip
	ldr r3, [r3, r4]
	add r2, r2, r1
	str r3, [r2, #8]
	mov r3, #0
	str r3, [r2, #4]
	add r4, r3, #0
	add r3, sp, #4
	str r4, [r3, r1]
	add r1, r4, #0
	cmp r0, #0
	bls _021F3B9C
	ldr r4, [r2, #8]
	ldr r4, [r4, #0x18]
_021F3B7A:
	ldr r3, [r3, #4]
	ldr r5, [r3, #8]
	ldr r5, [r5, #0x18]
	cmp r5, r4
	bge _021F3B92
	ldr r4, [r3]
	str r2, [r4, #4]
	ldr r4, [r3]
	str r4, [r2]
	str r3, [r2, #4]
	str r2, [r3]
	b _021F3B9C
_021F3B92:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	blo _021F3B7A
_021F3B9C:
	cmp r1, r0
	bne _021F3BA4
	str r2, [r3, #4]
	str r3, [r2]
_021F3BA4:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r6
	blo _021F3B54
_021F3BAE:
	ldr r0, [sp, #8]
	mov r2, #0
	ldr r0, [r0, #8]
	cmp r6, #0
	ldr r1, [r0, #0x18]
	add r0, sp, #4
	bls _021F3BE0
_021F3BBC:
	ldr r0, [r0, #4]
	lsl r4, r2, #2
	ldr r3, [r0, #8]
	str r3, [r7, r4]
	ldr r3, [r7, r4]
	ldr r3, [r3, #0x18]
	cmp r1, r3
	bne _021F3BD6
	ldr r3, [sp]
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	str r3, [sp]
_021F3BD6:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, r6
	blo _021F3BBC
_021F3BE0:
	ldr r0, [sp]
	cmp r0, #0
	bne _021F3BEA
	bl GF_AssertFail
_021F3BEA:
	ldr r0, [sp]
	add sp, #0x13c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F3B38

