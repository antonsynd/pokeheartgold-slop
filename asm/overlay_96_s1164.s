	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02213364
	.extern ov96_021E6104
	.extern ov96_021E872C

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
	thumb_func_start ov96_02213364
ov96_02213364: ; 0x02213364
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r7, r0, #0
	bl ov96_021E6104
	mov r1, #0x5d
	mov r5, #0
	str r0, [sp, #0x14]
	lsl r6, r0, #0xc
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	add r7, #0x5c
	mul r1, r0
	add r4, r5, #0
	add r7, r7, r1
_02213388:
	mov r0, #0x7c
	mul r0, r4
	add r1, r7, r0
	ldr r0, [sp, #0x14]
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [r1, #0x30]
	ldr r1, [r1, #0x34]
	asr r2, r0, #0xb
	lsr r2, r2, #0x14
	add r2, r0, r2
	asr r0, r2, #0xc
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov96_021E872C
	cmp r0, #0
	add r0, sp, #0x20
	beq _022133CC
	ldr r2, [sp, #0x18]
	lsl r1, r4, #2
	str r2, [r0, r1]
	mov r1, #1
	add r0, sp, #0x1c
	strb r1, [r0, r4]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _022133D6
_022133CC:
	lsl r2, r4, #2
	mov r1, #0
	str r1, [r0, r2]
	add r0, sp, #0x1c
	strb r1, [r0, r4]
_022133D6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _02213388
	cmp r5, #0
	bne _022133EA
	add sp, #0x2c
	mov r0, #0xc
	pop {r4, r5, r6, r7, pc}
_022133EA:
	mov r0, #3
	mov r3, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
_022133F2:
	ldrb r4, [r2, r3]
	cmp r4, #0
	beq _02213404
	lsl r4, r3, #2
	ldr r4, [r1, r4]
	cmp r4, r6
	bge _02213404
	add r0, r3, #0
	add r6, r4, #0
_02213404:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #3
	blo _022133F2
	cmp r0, #3
	bne _02213418
	bl GF_AssertFail
	mov r0, #0xc
_02213418:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_02213364

