	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02213EC4
	.public ov96_02213F5C
	.extern ov96_02214394
	.extern ov96_022143DC
	.extern ov96_0221DC80

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
	thumb_func_start ov96_02213EC4
ov96_02213EC4: ; 0x02213EC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x39
	ldrb r1, [r1]
	cmp r1, #3
	bne _02213F14
	mov r0, #0x16
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _02213EE4
	add r5, #0x43
	ldrb r0, [r5]
	add r0, #0xc0
	b _02213F56
_02213EE4:
	mov r0, #0x1a
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _02213EF4
	add r5, #0x43
	ldrb r0, [r5]
	add r0, #0xc8
	b _02213F56
_02213EF4:
	mov r0, #0x1e
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _02213F04
	add r5, #0x43
	ldrb r0, [r5]
	add r0, #0xd0
	b _02213F56
_02213F04:
	bl GF_AssertFail
	ldr r1, [r5, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	b _02213F56
_02213F14:
	cmp r1, #1
	bne _02213F4C
	add r1, r5, #0
	add r1, #0x3b
	ldrb r1, [r1]
	cmp r1, #0xc
	bne _02213F2E
	ldr r1, [r5, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	b _02213F56
_02213F2E:
	bl ov96_022143DC
	add r5, #0x3b
	add r4, r0, #0
	ldrb r0, [r5]
	mov r1, #3
	bl _s32_div_f
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_02214394
	b _02213F56
_02213F4C:
	ldr r1, [r5, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
_02213F56:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_02213EC4

	thumb_func_start ov96_02213F5C
ov96_02213F5C: ; 0x02213F5C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0xc0
	bge _02213F68
	lsl r0, r4, #0xc
	pop {r4, pc}
_02213F68:
	cmp r4, #0xd8
	bge _02213FA0
	sub r4, #0xc0
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r4, #8
	bge _02213F8A
	ldr r0, _02213FB0 ; =ov96_0221DC80
	ldrb r0, [r0, r1]
	add r0, #0x58
	b _02213F9C
_02213F8A:
	cmp r4, #0x10
	bge _02213F96
	ldr r0, _02213FB0 ; =ov96_0221DC80
	ldrb r0, [r0, r1]
	add r0, #0x68
	b _02213F9C
_02213F96:
	ldr r0, _02213FB0 ; =ov96_0221DC80
	ldrb r0, [r0, r1]
	add r0, #0x78
_02213F9C:
	lsl r0, r0, #0xc
	pop {r4, pc}
_02213FA0:
	cmp r4, #0xe8
	bge _02213FA8
	lsl r0, r4, #0xc
	pop {r4, pc}
_02213FA8:
	bl GF_AssertFail
	lsl r0, r4, #0xc
	pop {r4, pc}
	.balign 4, 0
_02213FB0: .word ov96_0221DC80
	thumb_func_end ov96_02213F5C

