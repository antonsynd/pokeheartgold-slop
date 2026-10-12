	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E6870
	.extern PokeathlonCourse_InitStateInfo
	.extern PokeathlonCourse_RunSubStateLoop
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_0221A8BC
	.extern ov96_0221DA68

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
	thumb_func_start ov96_021E6870
ov96_021E6870: ; 0x021E6870
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r2, [r5]
	add r4, r0, #0
	cmp r2, #3
	bhi _021E694C
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6888: ; jump table
	.short _021E6890 - _021E6888 - 2 ; case 0
	.short _021E68B2 - _021E6888 - 2 ; case 1
	.short _021E68C2 - _021E6888 - 2 ; case 2
	.short _021E692A - _021E6888 - 2 ; case 3
_021E6890:
	mov r0, #0x1e
	ldr r1, _021E6950 ; =ov96_0221A8BC
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0xd
	strb r1, [r4, r0]
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r0, _021E6954 ; =ov96_0221DA68
	add r1, r4, r1
	bl PokeathlonCourse_InitStateInfo
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021E694C
_021E68B2:
	bl PokeathlonCourse_RunSubStateLoop
	cmp r0, #0
	beq _021E694C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021E694C
_021E68C2:
	mov r0, #0xf3
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r1]
	cmp r3, #0
	bne _021E68D4
	add r0, r2, #1
	strb r0, [r5]
	b _021E694C
_021E68D4:
	add r2, r0, #0
	sub r2, #0x18
	ldr r3, [r4, r2]
	add r2, r0, #0
	sub r2, #8
	add r2, r4, r2
	cmp r3, r2
	bne _021E68F0
	add r2, r0, #0
	sub r2, #0x18
	str r1, [r4, r2]
	mov r1, #0
	sub r0, #0xc
	str r1, [r4, r0]
_021E68F0:
	ldr r3, _021E6958 ; =0x000003D1
	add r0, r4, #0
	sub r2, r3, #5
	add r1, r4, r3
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021E694C
	add r0, r4, #0
	mov r1, #0
	bl PokeathlonCourse_SetField1F4
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x10
	str r2, [r4, r1]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021E694C
_021E692A:
	mov r2, #0x1e
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	mov r1, #0
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E6944
	bl GF_AssertFail
_021E6944:
	add r0, r4, #0
	mov r1, #3
	bl PokeathlonCourse_SetStateField07
_021E694C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6950: .word ov96_0221A8BC
_021E6954: .word ov96_0221DA68
_021E6958: .word 0x000003D1
	thumb_func_end ov96_021E6870

