	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F5F68
	.extern ov96_021E6104
	.extern ov96_021E872C
	.extern ov96_021EB0A4

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
	thumb_func_start ov96_021F5F68
ov96_021F5F68: ; 0x021F5F68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #0xc]
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	bl ov96_021E6104
	lsl r6, r0, #0xc
	ldr r0, [sp, #8]
	mov r5, #0
	str r0, [sp, #0x14]
	add r0, #0x90
	add r4, r5, #0
	add r7, sp, #0x24
	str r0, [sp, #0x14]
_021F5F86:
	mov r0, #0x38
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	add r0, r1, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F5FA8
	mov r0, #0
	strb r0, [r7, r4]
	add r1, r0, #0
	lsl r2, r4, #2
	add r0, sp, #0x28
	str r1, [r0, r2]
	b _021F6014
_021F5FA8:
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	add r3, r4, #0
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	mov r2, #0x1c
	mul r3, r2
	ldr r2, [sp, #8]
	add r3, r2, r3
	ldr r2, _021F605C ; =0x00000FB4
	ldr r2, [r3, r2]
	lsl r3, r2, #6
	mov r2, #6
	lsl r2, r2, #0x10
	sub r2, r2, r3
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #0x1c
	bl ov96_021EB0A4
	bl ov96_021E6104
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov96_021E872C
	cmp r0, #0
	add r0, sp, #0x28
	beq _021F600A
	ldr r2, [sp, #0x20]
	lsl r1, r4, #2
	str r2, [r0, r1]
	mov r0, #1
	strb r0, [r7, r4]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _021F6014
_021F600A:
	lsl r2, r4, #2
	mov r1, #0
	str r1, [r0, r2]
	add r0, r1, #0
	strb r0, [r7, r4]
_021F6014:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F5F86
	cmp r5, #0
	bne _021F6028
	add sp, #0x34
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021F6028:
	mov r0, #3
	mov r3, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
_021F6030:
	ldrb r4, [r2, r3]
	cmp r4, #0
	beq _021F6042
	lsl r4, r3, #2
	ldr r4, [r1, r4]
	cmp r4, r6
	bge _021F6042
	add r0, r3, #0
	add r6, r4, #0
_021F6042:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #3
	blo _021F6030
	cmp r0, #3
	bne _021F6056
	bl GF_AssertFail
	mov r0, #3
_021F6056:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021F605C: .word 0x00000FB4
	thumb_func_end ov96_021F5F68

