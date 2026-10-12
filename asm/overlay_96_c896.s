	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220CA28
	.public ov96_0220CAC4
	.public ov96_0220CBC0
	.public ov96_0220CBEC
	.extern ov96_021E8228
	.extern ov96_0220CC18
	.extern ov96_0220CC38
	.extern ov96_0220CCBC
	.extern ov96_0220CD00
	.extern ov96_0220CD84
	.extern ov96_0220CE04
	.extern ov96_0220D07C
	.extern ov96_0220D0F8
	.extern ov96_0220D2AC

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
	thumb_func_start ov96_0220CA28
ov96_0220CA28: ; 0x0220CA28
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, _0220CABC ; =0x00000000
	bne _0220CA34
	bl GF_AssertFail
_0220CA34:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #2
	lsr r0, r0, #0x1a
	cmp r0, #3
	bhi _0220CA7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220CA4A: ; jump table
	.short _0220CA52 - _0220CA4A - 2 ; case 0
	.short _0220CA5C - _0220CA4A - 2 ; case 1
	.short _0220CA66 - _0220CA4A - 2 ; case 2
	.short _0220CA70 - _0220CA4A - 2 ; case 3
_0220CA52:
	add r0, r4, #0
	bl ov96_0220CAC4
	add r5, r0, #0
	b _0220CA7E
_0220CA5C:
	add r0, r4, #0
	bl ov96_0220CBC0
	add r5, r0, #0
	b _0220CA7E
_0220CA66:
	add r0, r4, #0
	bl ov96_0220CC18
	add r5, r0, #0
	b _0220CA7E
_0220CA70:
	add r0, r4, #0
	bl ov96_0220CBEC
	add r5, r0, #0
	b _0220CA7E
_0220CA7A:
	bl GF_AssertFail
_0220CA7E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #2
	lsr r0, r0, #0x1a
	cmp r0, #3
	beq _0220CA8E
	add r0, r4, #0
	bl ov96_0220D07C
_0220CA8E:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x18]
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x15
	lsl r2, r2, #0x18
	add r0, r4, #4
	lsr r1, r1, #0x15
	lsr r2, r2, #0x18
	bl ov96_0220D2AC
	ldr r2, [r4, #0x18]
	ldr r1, _0220CAC0 ; =0xFFFFF800
	add r0, r2, #0
	lsl r2, r2, #0x15
	lsr r2, r2, #0x15
	and r0, r1
	add r2, r2, #1
	lsr r1, r1, #0x15
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x18]
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0220CABC: .word 0x00000000
_0220CAC0: .word 0xFFFFF800
	thumb_func_end ov96_0220CA28

	thumb_func_start ov96_0220CAC4
ov96_0220CAC4: ; 0x0220CAC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x14]
	ldr r1, _0220CBB4 ; =0xFFFF00FF
	mov r4, #0
	and r1, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x18
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r1, r2
	str r1, [r5, #0x14]
	lsl r1, r1, #0x10
	lsr r2, r1, #0x18
	ldr r1, [r5, #0x18]
	lsl r1, r1, #2
	lsr r1, r1, #0x18
	cmp r2, r1
	blo _0220CB7E
	bl ov96_0220CD00
	cmp r0, #0
	beq _0220CB20
	add r0, r5, #0
	bl ov96_0220D0F8
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x14]
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #7
	bl ov96_021E8228
	add r0, r5, #0
	mov r1, #1
	bl ov96_0220CD84
	b _0220CB5C
_0220CB20:
	add r0, r5, #0
	bl ov96_0220CCBC
	cmp r0, #0
	beq _0220CB2C
	add r4, r4, #2
_0220CB2C:
	ldr r0, [r5, #0x1c]
	lsl r1, r0, #0x17
	lsr r1, r1, #0x1f
	beq _0220CB52
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	blo _0220CB5C
	add r0, r5, #0
	bl ov96_0220CC38
	cmp r0, #0
	beq _0220CB5C
	mov r1, #2
	add r0, r5, #0
	and r1, r4
	bl ov96_0220CE04
	b _0220CB5C
_0220CB52:
	mov r1, #2
	add r0, r5, #0
	and r1, r4
	bl ov96_0220CE04
_0220CB5C:
	ldr r1, [r5, #0x14]
	ldr r0, _0220CBB4 ; =0xFFFF00FF
	and r0, r1
	str r0, [r5, #0x14]
	bl MTRandom
	mov r1, #3
	bl _u32_div_f
	ldr r2, [r5, #0x18]
	ldr r0, _0220CBB8 ; =0xC03FFFFF
	and r2, r0
	add r0, r1, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #2
	orr r0, r2
	str r0, [r5, #0x18]
_0220CB7E:
	ldr r3, [r5, #0x1c]
	lsl r0, r3, #0x17
	lsr r0, r0, #0x1f
	beq _0220CBB0
	add r0, r3, #0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	add r3, r3, #1
	mov r2, #0xff
	lsl r3, r3, #0x18
	bic r0, r2
	lsr r3, r3, #0x18
	orr r0, r3
	str r0, [r5, #0x1c]
	lsl r0, r0, #0x18
	add r1, r5, #0
	lsr r0, r0, #0x18
	add r1, #0x1c
	cmp r0, #0xa
	blo _0220CBB0
	ldr r3, [r1]
	ldr r0, _0220CBBC ; =0xFFFFFEFF
	bic r3, r2
	and r0, r3
	str r0, [r1]
_0220CBB0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0220CBB4: .word 0xFFFF00FF
_0220CBB8: .word 0xC03FFFFF
_0220CBBC: .word 0xFFFFFEFF
	thumb_func_end ov96_0220CAC4

	thumb_func_start ov96_0220CBC0
ov96_0220CBC0: ; 0x0220CBC0
	push {r3, lr}
	ldr r2, [r0, #0x14]
	ldr r1, _0220CBE8 ; =0xFFFF00FF
	and r1, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x18
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r1, r2
	str r1, [r0, #0x14]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	cmp r1, #0x1a
	blo _0220CBE4
	mov r1, #0
	bl ov96_0220CD84
_0220CBE4:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0220CBE8: .word 0xFFFF00FF
	thumb_func_end ov96_0220CBC0

	thumb_func_start ov96_0220CBEC
ov96_0220CBEC: ; 0x0220CBEC
	push {r3, lr}
	ldr r2, [r0, #0x14]
	ldr r1, _0220CC14 ; =0xFFFF00FF
	and r1, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x18
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r1, r2
	str r1, [r0, #0x14]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	cmp r1, #0x2a
	blo _0220CC10
	mov r1, #0
	bl ov96_0220CD84
_0220CC10:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0220CC14: .word 0xFFFF00FF
	thumb_func_end ov96_0220CBEC

