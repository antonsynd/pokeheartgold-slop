	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220CA28
	.public ov96_0220CAC4
	.public ov96_0220CBC0
	.public ov96_0220CBEC
	.public ov96_0220CC18
	.public ov96_0220CC38
	.public ov96_0220CCBC
	.public ov96_0220CD00
	.public ov96_0220CD84
	.public ov96_0220CE04
	.public ov96_0220CF50
	.public ov96_0220D014
	.public ov96_0220D07C
	.public ov96_0220D0F8
	.public ov96_0220D13C
	.public ov96_0220D1A0
	.public ov96_0220D200
	.public ov96_0220D2AC
	.extern PokeathlonCourse_GetDataCopyArea
	.extern ov96_021E60D8
	.extern ov96_021E8228
	.extern ov96_021E8A20
	.extern ov96_0220D33C
	.extern ov96_0221CDE8
	.extern ov96_0221CDEE
	.extern ov96_0221CDF4
	.extern ov96_0221CDFE
	.extern ov96_0221CE08
	.extern ov96_0221CE14
	.extern ov96_0221CE24
	.extern ov96_0221CE34
	.extern ov96_0221CE48
	.extern ov96_0221CE84
	.extern ov96_0221CEB8

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

	thumb_func_start ov96_0220CC18
ov96_0220CC18: ; 0x0220CC18
	push {r3, lr}
	ldr r1, [r0, #0x14]
	lsr r1, r1, #0x1e
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r1, [r1, #4]
	lsl r1, r1, #6
	lsr r1, r1, #0x18
	cmp r1, #8
	blo _0220CC32
	mov r1, #0
	bl ov96_0220CD84
_0220CC32:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_0220CC18

	thumb_func_start ov96_0220CC38
ov96_0220CC38: ; 0x0220CC38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	bl MTRandom
	mov r1, #0x64
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	cmp r5, #0
	bne _0220CC54
	bl GF_AssertFail
_0220CC54:
	ldr r2, [r5, #0x14]
	ldr r1, _0220CCAC ; =ov96_0221CE34
	lsr r2, r2, #0x1e
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, #4]
	mov r0, #0
	lsl r2, r2, #6
	lsr r3, r2, #0x18
_0220CC66:
	ldr r2, [r1]
	cmp r3, r2
	blo _0220CC76
	lsl r1, r0, #2
	ldr r0, _0220CCB0 ; =ov96_0221CE48
	ldr r0, [r0, r1]
	add r4, r4, r0
	b _0220CC7E
_0220CC76:
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, #5
	blt _0220CC66
_0220CC7E:
	ldr r1, [r5, #0x14]
	ldr r2, _0220CCB4 ; =ov96_0221CE14
	lsl r1, r1, #8
	mov r0, #0
	lsr r3, r1, #0x18
_0220CC88:
	ldr r1, [r2]
	cmp r3, r1
	blo _0220CC98
	lsl r1, r0, #2
	ldr r0, _0220CCB8 ; =ov96_0221CE24
	ldr r0, [r0, r1]
	add r4, r4, r0
	b _0220CCA0
_0220CC98:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #4
	blt _0220CC88
_0220CCA0:
	cmp r6, r4
	bge _0220CCA8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0220CCA8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220CCAC: .word ov96_0221CE34
_0220CCB0: .word ov96_0221CE48
_0220CCB4: .word ov96_0221CE14
_0220CCB8: .word ov96_0221CE24
	thumb_func_end ov96_0220CC38

	thumb_func_start ov96_0220CCBC
ov96_0220CCBC: ; 0x0220CCBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	bl MTRandom
	mov r1, #0x64
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, #0x14]
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _0220CCE8
	bl GF_AssertFail
_0220CCE8:
	ldr r0, _0220CCFC ; =ov96_0221CE08
	lsl r1, r5, #2
	ldr r0, [r0, r1]
	add r0, r6, r0
	cmp r4, r0
	bge _0220CCF8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0220CCF8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220CCFC: .word ov96_0221CE08
	thumb_func_end ov96_0220CCBC

	thumb_func_start ov96_0220CD00
ov96_0220CD00: ; 0x0220CD00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	bl MTRandom
	mov r1, #0x64
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	cmp r5, #0
	bne _0220CD1C
	bl GF_AssertFail
_0220CD1C:
	ldr r2, [r5, #0x14]
	ldr r1, _0220CD74 ; =ov96_0221CDF4
	lsr r2, r2, #0x1e
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, #4]
	mov r0, #0
	lsl r2, r2, #6
	lsr r3, r2, #0x18
_0220CD2E:
	ldrh r2, [r1]
	cmp r3, r2
	bhs _0220CD3E
	lsl r1, r0, #1
	ldr r0, _0220CD78 ; =ov96_0221CDFE
	ldrsh r0, [r0, r1]
	add r4, r4, r0
	b _0220CD46
_0220CD3E:
	add r0, r0, #1
	add r1, r1, #2
	cmp r0, #5
	blt _0220CD2E
_0220CD46:
	ldr r1, [r5, #0x14]
	ldr r2, _0220CD7C ; =ov96_0221CDE8
	lsl r1, r1, #8
	mov r0, #0
	lsr r3, r1, #0x18
_0220CD50:
	ldrh r1, [r2]
	cmp r3, r1
	blo _0220CD60
	lsl r1, r0, #1
	ldr r0, _0220CD80 ; =ov96_0221CDEE
	ldrsh r0, [r0, r1]
	add r4, r4, r0
	b _0220CD68
_0220CD60:
	add r0, r0, #1
	add r2, r2, #2
	cmp r0, #3
	blt _0220CD50
_0220CD68:
	cmp r6, r4
	bge _0220CD70
	mov r0, #1
	pop {r4, r5, r6, pc}
_0220CD70:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220CD74: .word ov96_0221CDF4
_0220CD78: .word ov96_0221CDFE
_0220CD7C: .word ov96_0221CDE8
_0220CD80: .word ov96_0221CDEE
	thumb_func_end ov96_0220CD00

	thumb_func_start ov96_0220CD84
ov96_0220CD84: ; 0x0220CD84
	push {r4, r5}
	cmp r1, #1
	beq _0220CD98
	cmp r1, #2
	bne _0220CDDA
	ldr r3, [r0, #0x18]
	ldr r2, _0220CDF0 ; =0xFFFFF800
	and r2, r3
	str r2, [r0, #0x18]
	b _0220CDDA
_0220CD98:
	ldr r2, [r0, #0x14]
	lsl r2, r2, #8
	lsr r5, r2, #0x18
	sub r5, #0xa
	cmp r5, #0x64
	ble _0220CDA8
	mov r5, #0x64
	b _0220CDAE
_0220CDA8:
	cmp r5, #0
	bge _0220CDAE
	mov r5, #0
_0220CDAE:
	ldr r4, [r0, #0x14]
	ldr r3, _0220CDF4 ; =0xFF00FFFF
	add r2, r0, #0
	and r4, r3
	lsl r3, r5, #0x18
	lsr r3, r3, #8
	orr r4, r3
	add r5, r4, #0
	ldr r3, _0220CDF8 ; =0x3FFFFFFF
	lsr r4, r4, #0x1e
	add r4, r4, #1
	and r5, r3
	lsl r4, r4, #0x1e
	orr r4, r5
	str r4, [r0, #0x14]
	lsr r4, r4, #0x1e
	add r2, #0x14
	cmp r4, #3
	blo _0220CDDA
	ldr r4, [r2]
	and r3, r4
	str r3, [r2]
_0220CDDA:
	ldr r3, [r0, #0x14]
	ldr r2, _0220CDFC ; =0xC0FFFFFF
	lsl r1, r1, #0x1a
	and r2, r3
	lsr r1, r1, #2
	orr r2, r1
	ldr r1, _0220CE00 ; =0xFFFF00FF
	and r1, r2
	str r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
	.balign 4, 0
_0220CDF0: .word 0xFFFFF800
_0220CDF4: .word 0xFF00FFFF
_0220CDF8: .word 0x3FFFFFFF
_0220CDFC: .word 0xC0FFFFFF
_0220CE00: .word 0xFFFF00FF
	thumb_func_end ov96_0220CD84

	thumb_func_start ov96_0220CE04
ov96_0220CE04: ; 0x0220CE04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #4]
	ldr r6, _0220CF48 ; =0x00000000
	bne _0220CE14
	bl GF_AssertFail
_0220CE14:
	add r0, r5, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x17
	lsr r7, r0, #0x17
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0220CE34
	add r7, #0xa0
	lsl r0, r7, #0x10
	asr r7, r0, #0x10
_0220CE34:
	add r4, r5, #0
	add r4, #0x10
_0220CE38:
	ldr r0, [r4]
	sub r0, r0, r7
	str r0, [r4]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bgt _0220CE72
	neg r0, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0x64
	str r0, [r5, #0x10]
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
	mov r3, #3
	bl ov96_021E8228
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _0220CE38
_0220CE72:
	ldr r2, [r5, #0x14]
	mov r1, #0xff
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r1, r1, r6
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x1c]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	bne _0220CEFC
	lsl r0, r1, #0x17
	lsr r0, r0, #0x1f
	beq _0220CEF2
	ldr r2, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x18
	ldr r0, [r2, r0]
	lsr r1, r1, #0x18
	lsl r0, r0, #6
	lsl r1, r1, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	bl ov96_0220D33C
	lsl r0, r0, #0x18
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	lsr r0, r0, #6
	ldr r2, [r2, r1]
	ldr r1, _0220CF4C ; =0xFC03FFFF
	and r1, r2
	add r2, r1, #0
	orr r2, r0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [r1, r0]
	ldr r0, [r1, r0]
	lsl r0, r0, #6
	lsr r0, r0, #0x18
	bne _0220CEF2
	mov r3, #1
	str r3, [sp]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x14]
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021E8228
	add r0, r5, #0
	mov r1, #2
	bl ov96_0220CD84
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0220CEF2:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl ov96_0220D014
_0220CEFC:
	cmp r6, #0
	beq _0220CF1A
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0220CF1A
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #0
	bne _0220CF1A
	add r0, r5, #0
	mov r1, #3
	bl ov96_0220CD84
_0220CF1A:
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #8
	orr r1, r0
	mov r0, #0xff
	bic r1, r0
	str r1, [r5, #0x1c]
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
	mov r3, #4
	bl ov96_021E8228
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220CF48: .word 0x00000000
_0220CF4C: .word 0xFC03FFFF
	thumb_func_end ov96_0220CE04

	thumb_func_start ov96_0220CF50
ov96_0220CF50: ; 0x0220CF50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl PokeathlonCourse_GetDataCopyArea
	ldr r1, [r5, #0x18]
	add r0, #0x50
	lsr r2, r1, #0x1e
	mov r1, #0x28
	mul r1, r2
	add r0, r0, r1
	bl ov96_021E8A20
	ldr r7, [r5, #0x14]
	mov r6, #0xff
	lsr r1, r7, #0x1e
	lsl r2, r1, #2
	ldr r1, [r0]
	add r3, r5, #4
	bic r1, r6
	lsl r6, r7, #0x18
	lsr r6, r6, #0x18
	lsl r6, r6, #0x18
	lsr r6, r6, #0x18
	orr r6, r1
	str r6, [r0]
	ldr r2, [r3, r2]
	ldr r1, _0220CFFC ; =0xFFFF00FF
	lsl r2, r2, #6
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	and r1, r6
	lsr r2, r2, #0x10
	orr r2, r1
	ldr r1, _0220D000 ; =0xFF00FFFF
	str r2, [r0]
	and r1, r2
	ldr r2, [r5, #0x14]
	lsl r2, r2, #8
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #8
	orr r2, r1
	ldr r1, _0220D004 ; =0xFBFFFFFF
	str r2, [r0]
	and r1, r2
	ldr r2, [r5, #0x1c]
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #5
	orr r2, r1
	ldr r1, _0220D008 ; =0xF7FFFFFF
	and r2, r1
	mov r1, #2
	and r1, r4
	lsl r1, r1, #0x1f
	lsr r1, r1, #4
	orr r2, r1
	ldr r1, _0220D00C ; =0xFCFFFFFF
	str r2, [r0]
	and r2, r1
	ldr r1, [r5, #0x14]
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x1e
	lsr r1, r1, #6
	orr r1, r2
	str r1, [r0]
	ldr r1, [r5, #0x14]
	lsl r1, r1, #2
	lsr r1, r1, #0x1a
	cmp r1, #1
	bne _0220CFE8
	mov r3, #1
	b _0220CFEA
_0220CFE8:
	mov r3, #0
_0220CFEA:
	ldr r2, [r0]
	ldr r1, _0220D010 ; =0xEFFFFFFF
	and r2, r1
	lsl r1, r3, #0x1f
	lsr r1, r1, #3
	orr r1, r2
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220CFFC: .word 0xFFFF00FF
_0220D000: .word 0xFF00FFFF
_0220D004: .word 0xFBFFFFFF
_0220D008: .word 0xF7FFFFFF
_0220D00C: .word 0xFCFFFFFF
_0220D010: .word 0xEFFFFFFF
	thumb_func_end ov96_0220CF50

	thumb_func_start ov96_0220D014
ov96_0220D014: ; 0x0220D014
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	beq _0220D026
	bl GF_AssertFail
_0220D026:
	cmp r4, #0
	beq _0220D040
	ldr r1, [r5, #0x14]
	ldr r0, _0220D074 ; =0xFF00FFFF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #8
	lsr r0, r0, #0x18
	add r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	orr r0, r2
	str r0, [r5, #0x14]
_0220D040:
	ldr r1, [r5, #0x14]
	lsl r0, r1, #8
	lsr r0, r0, #0x18
	cmp r0, #0x64
	bls _0220D056
	ldr r0, _0220D074 ; =0xFF00FFFF
	and r1, r0
	mov r0, #0x19
	lsl r0, r0, #0x12
	orr r0, r1
	str r0, [r5, #0x14]
_0220D056:
	ldr r0, [r5, #0x14]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	cmp r0, #0x64
	blo _0220D072
	mov r0, #2
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x18]
	ldr r0, _0220D078 ; =0xFFC007FF
	and r0, r1
	str r0, [r5, #0x18]
_0220D072:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0220D074: .word 0xFF00FFFF
_0220D078: .word 0xFFC007FF
	thumb_func_end ov96_0220D014

	thumb_func_start ov96_0220D07C
ov96_0220D07C: ; 0x0220D07C
	push {r4, lr}
	ldr r1, [r0, #0x1c]
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1f
	beq _0220D0A8
	ldr r2, [r0, #0x18]
	ldr r1, _0220D0F0 ; =0xFFC007FF
	and r1, r2
	lsl r2, r2, #0xa
	lsr r2, r2, #0x15
	add r2, r2, #1
	lsl r2, r2, #0x15
	lsr r2, r2, #0xa
	orr r1, r2
	str r1, [r0, #0x18]
	lsl r1, r1, #0xa
	lsr r1, r1, #0x15
	cmp r1, #0x5a
	blo _0220D0EE
	bl ov96_0220D0F8
	pop {r4, pc}
_0220D0A8:
	ldr r1, [r0, #0x14]
	lsl r1, r1, #8
	lsr r1, r1, #0x18
	beq _0220D0EE
	ldr r4, [r0, #0x18]
	add r2, r0, #0
	add r1, r4, #0
	lsl r4, r4, #0xa
	lsr r4, r4, #0x15
	ldr r3, _0220D0F0 ; =0xFFC007FF
	add r4, r4, #1
	lsl r4, r4, #0x15
	and r1, r3
	lsr r4, r4, #0xa
	orr r1, r4
	str r1, [r0, #0x18]
	lsl r1, r1, #0xa
	lsr r1, r1, #0x15
	add r2, #0x18
	cmp r1, #2
	blo _0220D0EE
	ldr r1, [r2]
	and r1, r3
	str r1, [r2]
	ldr r2, [r0, #0x14]
	ldr r1, _0220D0F4 ; =0xFF00FFFF
	add r3, r2, #0
	and r3, r1
	lsl r1, r2, #8
	lsr r1, r1, #0x18
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #8
	orr r1, r3
	str r1, [r0, #0x14]
_0220D0EE:
	pop {r4, pc}
	.balign 4, 0
_0220D0F0: .word 0xFFC007FF
_0220D0F4: .word 0xFF00FFFF
	thumb_func_end ov96_0220D07C

	thumb_func_start ov96_0220D0F8
ov96_0220D0F8: ; 0x0220D0F8
	push {r3, r4}
	ldr r4, [r0, #0x1c]
	ldr r3, _0220D12C ; =0xFFFFFDFF
	ldr r1, [r0, #0x14]
	and r3, r4
	str r3, [r0, #0x1c]
	ldr r4, [r0, #0x18]
	ldr r3, _0220D130 ; =0xFFC007FF
	lsr r1, r1, #0x1e
	and r3, r4
	str r3, [r0, #0x18]
	ldr r4, [r0, #0x14]
	ldr r3, _0220D134 ; =0xFF00FFFF
	add r2, r0, #4
	and r3, r4
	str r3, [r0, #0x14]
	lsl r1, r1, #2
	ldr r3, [r2, r1]
	ldr r0, _0220D138 ; =0xFC03FFFF
	and r3, r0
	mov r0, #0xa
	lsl r0, r0, #0x12
	orr r0, r3
	str r0, [r2, r1]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_0220D12C: .word 0xFFFFFDFF
_0220D130: .word 0xFFC007FF
_0220D134: .word 0xFF00FFFF
_0220D138: .word 0xFC03FFFF
	thumb_func_end ov96_0220D0F8

	thumb_func_start ov96_0220D13C
ov96_0220D13C: ; 0x0220D13C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _0220D19C ; =ov96_0221CE84
	add r7, r2, #0
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	mov r2, #6
_0220D14E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0220D14E
	ldr r0, [r6]
	cmp r5, #0
	str r0, [r3]
	bne _0220D162
	bl GF_AssertFail
_0220D162:
	cmp r4, #0
	bne _0220D16A
	bl GF_AssertFail
_0220D16A:
	add r1, sp, #4
	strh r7, [r1]
	ldr r0, [sp]
	mov r3, #1
	strh r0, [r1, #2]
	add r0, sp, #0x40
	ldrh r2, [r0, #0x10]
	strh r2, [r1, #6]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	add r2, sp, #4
	str r0, [sp, #0xc]
	str r3, [sp, #0x30]
	add r0, r5, #0
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	add r4, r0, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220D19C: .word ov96_0221CE84
	thumb_func_end ov96_0220D13C

	thumb_func_start ov96_0220D1A0
ov96_0220D1A0: ; 0x0220D1A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _0220D1FC ; =ov96_0221CEB8
	add r7, r2, #0
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	mov r2, #6
_0220D1B2:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0220D1B2
	ldr r0, [r6]
	cmp r5, #0
	str r0, [r3]
	bne _0220D1C6
	bl GF_AssertFail
_0220D1C6:
	cmp r4, #0
	bne _0220D1CE
	bl GF_AssertFail
_0220D1CE:
	add r1, sp, #4
	strh r7, [r1]
	ldr r0, [sp]
	mov r3, #1
	strh r0, [r1, #2]
	add r0, sp, #0x40
	ldrh r2, [r0, #0x10]
	lsl r3, r3, #0x14
	strh r2, [r1, #6]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	add r2, sp, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	add r4, r0, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220D1FC: .word ov96_0221CEB8
	thumb_func_end ov96_0220D1A0

	thumb_func_start ov96_0220D200
ov96_0220D200: ; 0x0220D200
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r0, sp, #8
	mov r1, #0xaa
	mov r2, #5
	bl ReadWholeNarcMemberByIdPair
	mov r6, #0
	add r7, sp, #8
_0220D218:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r6, #0
	bl ov96_021E60D8
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	blo _0220D22E
	bl GF_AssertFail
_0220D22E:
	ldrb r0, [r4, #3]
	cmp r0, #5
	blo _0220D238
	bl GF_AssertFail
_0220D238:
	ldrb r0, [r4, #4]
	cmp r0, #5
	blo _0220D242
	bl GF_AssertFail
_0220D242:
	ldr r1, [r5]
	ldr r0, _0220D298 ; =0xFFFFFE00
	add r6, r6, #1
	and r0, r1
	ldrb r1, [r4]
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	ldr r1, _0220D29C ; =0x000001FF
	and r1, r2
	orr r1, r0
	ldr r0, _0220D2A0 ; =0xFFFC01FF
	str r1, [r5]
	and r0, r1
	ldrb r1, [r4, #3]
	lsl r1, r1, #2
	add r1, r7, r1
	ldr r1, [r1, #0x14]
	lsl r1, r1, #0x17
	lsr r1, r1, #0xe
	orr r1, r0
	ldr r0, _0220D2A4 ; =0x03FFFFFF
	str r1, [r5]
	and r0, r1
	ldrb r1, [r4, #4]
	lsl r1, r1, #2
	add r1, r7, r1
	ldr r1, [r1, #0x28]
	lsl r1, r1, #0x1a
	orr r1, r0
	ldr r0, _0220D2A8 ; =0xFC03FFFF
	str r1, [r5]
	and r0, r1
	lsl r1, r1, #0xe
	lsr r1, r1, #0x17
	lsl r1, r1, #0x18
	lsr r1, r1, #6
	orr r0, r1
	stmia r5!, {r0}
	cmp r6, #3
	blt _0220D218
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0220D298: .word 0xFFFFFE00
_0220D29C: .word 0x000001FF
_0220D2A0: .word 0xFFFC01FF
_0220D2A4: .word 0x03FFFFFF
_0220D2A8: .word 0xFC03FFFF
	thumb_func_end ov96_0220D200

	thumb_func_start ov96_0220D2AC
ov96_0220D2AC: ; 0x0220D2AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0x3c
	str r2, [sp]
	mov r4, #0
	bl _u32_div_f
	str r1, [sp, #4]
	add r0, r7, #0
	mov r1, #0x1e
	bl _u32_div_f
	add r6, r1, #0
_0220D2CC:
	ldr r1, [r5]
	lsl r0, r1, #6
	lsl r3, r1, #0xe
	lsr r2, r0, #0x18
	lsr r3, r3, #0x17
	lsl r0, r2, #0x10
	lsl r3, r3, #0x10
	lsr r0, r0, #0x10
	lsr r3, r3, #0x10
	cmp r7, #0
	beq _0220D32A
	cmp r0, r3
	bhs _0220D32A
	ldr r0, [sp]
	cmp r4, r0
	bne _0220D302
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0220D314
	ldr r0, _0220D338 ; =0xFC03FFFF
	add r2, #8
	and r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #6
	orr r0, r1
	str r0, [r5]
	b _0220D314
_0220D302:
	cmp r6, #0
	bne _0220D314
	ldr r0, _0220D338 ; =0xFC03FFFF
	and r0, r1
	add r1, r2, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #6
	orr r0, r1
	str r0, [r5]
_0220D314:
	ldr r1, [r5]
	lsl r0, r1, #6
	lsr r0, r0, #0x18
	cmp r0, r3
	bls _0220D32A
	ldr r0, _0220D338 ; =0xFC03FFFF
	and r0, r1
	lsl r1, r3, #0x18
	lsr r1, r1, #6
	orr r0, r1
	str r0, [r5]
_0220D32A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0220D2CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220D338: .word 0xFC03FFFF
	thumb_func_end ov96_0220D2AC

