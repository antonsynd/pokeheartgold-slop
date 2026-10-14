	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220F8C8
	.public ov96_0220FA18
	.extern PokeathlonCourse_GetDataCopyArea
	.extern ov96_021E8A20
	.extern ov96_021EB06C
	.extern ov96_0220D630
	.extern ov96_0220D6B0
	.extern ov96_0220D8C4
	.extern ov96_0220D9A4
	.extern ov96_0220DAA0
	.extern ov96_0220F710

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
	thumb_func_start ov96_0220F8C8
ov96_0220F8C8: ; 0x0220F8C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	mov r0, #0
	str r0, [sp]
_0220F8DE:
	ldr r0, [r5, #4]
	add r1, r5, #0
	lsr r3, r0, #0x1e
	add r0, r3, #0
	mov r2, #0x48
	add r1, #0x48
	mul r0, r2
	ldr r4, [r1, r0]
	ldr r3, _0220FA0C ; =0xF7FFFFFF
	and r3, r4
	str r3, [r1, r0]
	ldr r1, [r5, #4]
	lsl r0, r1, #0x11
	lsr r0, r0, #0x1f
	beq _0220F928
	mov r1, #0
	mov r2, #2
	add r0, r5, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, #8
	bl ov96_0220DAA0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xc
	beq _0220F9DE
	mov r1, #2
	ldr r2, [r5, #4]
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, _0220FA10 ; =0x3FFFFFFF
	lsl r0, r0, #0x1e
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	b _0220F9DE
_0220F928:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	beq _0220F998
	lsl r0, r1, #2
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0220F9DE
	add r3, r5, #0
	lsr r0, r1, #0x1e
	add r3, #8
	mul r2, r0
	add r4, r3, r2
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	lsl r0, r0, #4
	lsl r2, r2, #4
	ldr r3, [r4, #0xc]
	asr r0, r0, #0x10
	asr r2, r2, #0x10
	cmp r3, #3
	bne _0220F95A
	ldr r0, _0220FA14 ; =0xDFFFFFFF
	and r0, r1
	str r0, [r5, #4]
	b _0220F9DE
_0220F95A:
	mov r1, #0
	ldrsh r1, [r5, r1]
	sub r0, r1, r0
	bpl _0220F964
	neg r0, r0
_0220F964:
	cmp r0, #8
	bgt _0220F976
	mov r0, #2
	ldrsh r0, [r5, r0]
	sub r0, r0, r2
	bpl _0220F972
	neg r0, r0
_0220F972:
	cmp r0, #8
	ble _0220F9DE
_0220F976:
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_0220D6B0
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	add r0, r4, #0
	bl ov96_0220D8C4
	lsl r0, r0, #0x1f
	ldr r2, [r4, #0x40]
	ldr r1, _0220FA14 ; =0xDFFFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x40]
	b _0220F9DE
_0220F998:
	lsl r0, r1, #2
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0220F9D6
	add r0, r5, #0
	lsr r1, r1, #0x1e
	mul r2, r1
	add r0, #8
	add r4, r0, r2
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl ov96_0220DAA0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, [r4, #0xc]
	cmp r0, #2
	bne _0220F9D6
	ldr r0, [r5, #4]
	lsr r1, r0, #0x1e
	cmp r2, r1
	bne _0220F9D6
	lsl r0, r0, #3
	lsr r0, r0, #0x13
	cmp r0, #5
	bhi _0220F9D6
	add r0, r4, #0
	bl ov96_0220D630
_0220F9D6:
	ldr r1, [r5, #4]
	ldr r0, _0220FA14 ; =0xDFFFFFFF
	and r0, r1
	str r0, [r5, #4]
_0220F9DE:
	add r4, r5, #0
	mov r6, #0
	add r4, #8
_0220F9E4:
	add r0, r4, #0
	add r1, r7, #0
	bl ov96_0220D9A4
	add r6, r6, #1
	add r4, #0x48
	cmp r6, #3
	blt _0220F9E4
	ldr r0, [sp]
	add r5, #0xe4
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #4
	bge _0220FA02
	b _0220F8DE
_0220FA02:
	add r0, r7, #0
	bl ov96_0220F710
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220FA0C: .word 0xF7FFFFFF
_0220FA10: .word 0x3FFFFFFF
_0220FA14: .word 0xDFFFFFFF
	thumb_func_end ov96_0220F8C8

	thumb_func_start ov96_0220FA18
ov96_0220FA18: ; 0x0220FA18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	add r0, r1, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r4, #0
	ldr r1, [r0, #0x1c]
	ldr r0, _0220FB84 ; =0x3FFFFFFF
	add r2, r1, #0
	and r2, r0
	lsr r0, r1, #0x1e
	add r0, r0, #1
	lsl r0, r0, #0x1e
	orr r2, r0
	ldr r0, [sp, #8]
	mov r1, #0x7f
	add r6, r0, #0
	str r2, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	add r6, #0x20
	bic r0, r1
	lsr r1, r2, #0x1e
	add r3, r1, #0
	mov r2, #0xe4
	mul r3, r2
	ldr r1, [sp, #4]
	add r2, #0x8c
	add r1, r1, r3
	ldr r1, [r1, r2]
	add r7, r4, #0
	lsl r1, r1, #0xe
	lsr r2, r1, #0x10
	mov r1, #0x7f
	and r2, r1
	and r1, r2
	add r2, r0, #0
	orr r2, r1
	ldr r1, _0220FB88 ; =0x8007FFFF
	ldr r0, [sp, #8]
	and r2, r1
	str r2, [r0, #0x20]
	ldr r2, [r0, #0x1c]
	lsl r0, r1, #0x18
	and r2, r0
	ldr r0, [sp, #8]
	str r2, [r0, #0x1c]
	ldr r2, [r0, #0x20]
	asr r0, r1, #0xc
	add r1, r2, #0
	and r1, r0
	ldr r0, [sp, #8]
	str r1, [r0, #0x20]
	ldr r0, [sp, #4]
	add r0, #0x98
	str r0, [sp, #4]
_0220FA98:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0xe4
	add r2, r5, #0
	mul r2, r0
	ldr r0, [sp, #4]
	add r3, sp, #0x14
	add r2, r0, r2
	mov r0, #0x48
	mul r0, r1
	add r5, r2, r0
	add r0, sp, #0x10
	str r0, [sp]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	lsl r1, r1, #4
	lsl r2, r2, #4
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov96_021EB06C
	ldr r1, [sp, #0x14]
	cmp r1, #0xff
	ble _0220FADC
	mov r1, #0xff
	b _0220FAE2
_0220FADC:
	cmp r1, #0
	bge _0220FAE2
	mov r1, #0
_0220FAE2:
	ldr r0, [sp, #8]
	add r0, r0, r4
	strb r1, [r0, #4]
	ldr r1, [sp, #0x10]
	cmp r1, #0xff
	ble _0220FAF2
	mov r1, #0xff
	b _0220FAF8
_0220FAF2:
	cmp r1, #0
	bge _0220FAF8
	mov r1, #0
_0220FAF8:
	strb r1, [r0, #0x10]
	ldr r0, [r5, #0x40]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	beq _0220FB30
	ldr r2, [r6]
	ldr r0, _0220FB88 ; =0x8007FFFF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #1
	mov r2, #1
	lsl r2, r4
	lsr r0, r0, #0x14
	orr r0, r2
	lsl r0, r0, #0x14
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r6]
	ldr r1, [r5, #0x40]
	ldr r0, _0220FB8C ; =0xFFFF00FF
	and r0, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #0x40]
_0220FB30:
	ldr r0, [r5, #0xc]
	cmp r0, #3
	bne _0220FB50
	ldr r2, [r6]
	ldr r0, _0220FB90 ; =0xFFF8007F
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #0xd
	mov r2, #1
	lsl r2, r4
	lsr r0, r0, #0x14
	orr r0, r2
	lsl r0, r0, #0x14
	lsr r0, r0, #0xd
	orr r0, r1
	str r0, [r6]
_0220FB50:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	ldr r2, [r0]
	mov r0, #0xff
	lsl r0, r0, #0x18
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #8
	ldr r2, [r5, #0x40]
	lsr r0, r0, #8
	lsl r2, r2, #8
	lsr r2, r2, #0x1c
	sub r2, r2, #1
	lsl r2, r7
	add r2, r0, r2
	ldr r0, _0220FB94 ; =0x00FFFFFF
	add r7, r7, #2
	and r0, r2
	orr r1, r0
	ldr r0, [sp, #0xc]
	cmp r4, #0xc
	str r1, [r0]
	blt _0220FA98
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220FB84: .word 0x3FFFFFFF
_0220FB88: .word 0x8007FFFF
_0220FB8C: .word 0xFFFF00FF
_0220FB90: .word 0xFFF8007F
_0220FB94: .word 0x00FFFFFF
	thumb_func_end ov96_0220FA18

