	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02209F8C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_0220A254
	.extern ov96_0220D1A0
	.extern ov96_0221CCC8

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
	thumb_func_start ov96_02209F8C
ov96_02209F8C: ; 0x02209F8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r7, r0, #0
	bne _02209F9E
	bl GF_AssertFail
_02209F9E:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _02209FA8
	bl GF_AssertFail
_02209FA8:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _02209FB2
	bl GF_AssertFail
_02209FB2:
	ldr r0, [r7, #0x44]
	cmp r0, #0
	bne _02209FBC
	bl GF_AssertFail
_02209FBC:
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r0, [sp, #0x18]
	add r0, #0x54
	str r0, [sp, #0x18]
	mov r0, #0x78
	str r0, [sp, #0x14]
	ldr r0, _0220A0DC ; =ov96_0221CCC8
	str r0, [sp, #0x10]
_02209FD0:
	ldr r0, [sp, #0x14]
	mov r3, #0x98
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	add r0, #0xd
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	bl ov96_0220D1A0
	ldr r1, [sp, #0x18]
	mov r2, #0
	str r0, [r1, #4]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_0220A254
	mov r0, #0x12
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	add r2, r4, #0
	mov r3, #0x98
	bl ov96_0220D1A0
	ldr r1, [sp, #0x18]
	str r0, [r1, #8]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp, #0x14]
	mov r6, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r0, #6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	ldr r5, [sp, #0x18]
	add r4, r6, #0
	str r0, [sp, #0x20]
_0220A034:
	ldr r0, [sp, #0x10]
	mov r3, #0x88
	ldr r0, [r0, #8]
	sub r3, r3, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x2c
	sub r0, r0, r6
	lsl r0, r0, #0x18
	lsl r3, r3, #0x10
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	asr r3, r3, #0x10
	sub r3, #0x14
	lsl r3, r3, #0x10
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x20]
	asr r3, r3, #0x10
	bl ov96_0220D1A0
	mov r1, #0
	str r0, [r5, #0x5c]
	bl ManagedSprite_SetDrawFlag
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #5
	blt _0220A034
	ldr r0, [sp, #0x14]
	mov r5, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	ldr r4, [sp, #0x18]
	str r0, [sp, #0xc]
	add r6, r5, #0
_0220A080:
	ldr r0, [sp, #0x10]
	mov r3, #0x88
	ldr r0, [r0, #4]
	sub r3, r3, r6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x18
	sub r0, r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r3, r3, #0x10
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0xc]
	asr r3, r3, #0x10
	bl ov96_0220D1A0
	mov r1, #0
	str r0, [r4, #0xc]
	bl ManagedSprite_SetDrawFlag
	add r5, r5, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r5, #0x14
	blt _0220A080
	ldr r0, [sp, #0x18]
	add r0, #0x70
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	bge _0220A0D6
	b _02209FD0
_0220A0D6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0220A0DC: .word ov96_0221CCC8
	thumb_func_end ov96_02209F8C

