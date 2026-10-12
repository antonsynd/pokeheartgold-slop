	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ED8DC
	.public ov96_021ED954
	.public ov96_021ED9CC
	.public ov96_021EDA58
	.public ov96_021EDC38
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetFieldData
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern ov96_021E5F24
	.extern ov96_021E679C
	.extern ov96_021E8A20
	.extern ov96_021EDCEC
	.extern ov96_021EE0AC
	.extern ov96_021EE144
	.extern ov96_021EE1D8

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
	thumb_func_start ov96_021ED8DC
ov96_021ED8DC: ; 0x021ED8DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #0
	bne _021ED922
	mov r6, #0
_021ED8F8:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r6, r0
	bne _021ED90C
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021EE0AC
	b _021ED918
_021ED90C:
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE1D8
_021ED918:
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blt _021ED8F8
	pop {r4, r5, r6, pc}
_021ED922:
	mov r6, #0
_021ED924:
	add r0, r5, #0
	bl PokeathlonCourse_GetParticipantCount
	cmp r0, r6
	ble _021ED93C
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE144
	b _021ED948
_021ED93C:
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE1D8
_021ED948:
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blt _021ED924
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED8DC

	thumb_func_start ov96_021ED954
ov96_021ED954: ; 0x021ED954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r5, r1, #0
	mov r6, #0x4b
	bl PokeathlonCourse_GetHeapID
	add r1, r0, #0
	mov r0, #0xa9
	bl NARC_New
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	bl PokeathlonCourse_GetParticipantUnk04
	add r5, r0, #0
	mov r7, #0
	add r4, sp, #4
_021ED97A:
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	bl ov96_021E679C
	add r1, r0, #0
	ldr r0, [sp]
	add r2, sp, #4
	bl NARC_ReadWholeMember
	ldrb r0, [r4]
	add r7, r7, #1
	add r5, #0x28
	add r0, r0, #1
	sub r1, r6, r0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	sub r1, r1, r0
	ldrb r0, [r4, #2]
	add r0, r0, #1
	sub r1, r1, r0
	ldrb r0, [r4, #3]
	add r0, r0, #1
	sub r1, r1, r0
	ldrb r0, [r4, #4]
	add r0, r0, #1
	sub r6, r1, r0
	cmp r7, #3
	blt _021ED97A
	cmp r6, #0x4b
	ble _021ED9BA
	mov r6, #0x4b
	b _021ED9C0
_021ED9BA:
	cmp r6, #0
	bge _021ED9C0
	mov r6, #0
_021ED9C0:
	ldr r0, [sp]
	bl NARC_Delete
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED954

	thumb_func_start ov96_021ED9CC
ov96_021ED9CC: ; 0x021ED9CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	bl MTRandom
	mov r1, #3
	and r0, r1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
_021ED9E4:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021ED9EE:
	ldr r0, [sp, #8]
	mov r5, #0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021ED9F6:
	lsl r3, r5, #0x18
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	lsr r3, r3, #0x18
	bl ov96_021EDCEC
	cmp r0, #0
	beq _021EDA0E
	mov r0, #1
	str r0, [sp, #4]
	b _021EDA14
_021EDA0E:
	add r5, r5, #1
	cmp r5, #3
	blt _021ED9F6
_021EDA14:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021EDA24
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021ED9EE
_021EDA24:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021EDA46
	ldr r0, [sp]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _021ED9E4
_021EDA46:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021EDA50
	mov r0, #4
	str r0, [sp]
_021EDA50:
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED9CC

	thumb_func_start ov96_021EDA58
ov96_021EDA58: ; 0x021EDA58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	bl PokeathlonCourse_GetFieldData
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, _021EDC28 ; =0xF8007FFF
	mov r5, #0
	and r1, r0
	asr r0, r0, #0xc
	and r0, r1
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, _021EDC2C ; =0xF000FFFF
	and r0, r1
	str r0, [r4, #8]
_021EDA88:
	lsl r1, r5, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov96_021ED954
	strb r0, [r4, r5]
	add r5, r5, #1
	cmp r5, #4
	blt _021EDA88
	ldr r0, [sp]
	bl ov96_021ED9CC
	ldr r2, [r4, #4]
	mov r1, #7
	bic r2, r1
	mov r1, #7
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0xc]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1d
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	str r1, [r4, #4]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
_021EDACC:
	ldr r0, [sp, #0x24]
	ldr r5, [sp, #8]
	lsl r0, r0, #0x18
	mov r6, #0
	lsr r7, r0, #0x18
_021EDAD6:
	ldr r0, [sp, #0x1c]
	cmp r0, #4
	beq _021EDAF2
	lsl r3, r6, #0x18
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl ov96_021EDCEC
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bge _021EDAF2
	str r0, [sp, #0x20]
_021EDAF2:
	ldr r1, [r5, #8]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bhs _021EDAFC
	str r1, [sp, #0xc]
_021EDAFC:
	add r6, r6, #1
	add r5, #0x20
	cmp r6, #3
	blt _021EDAD6
	ldr r0, [sp, #8]
	add r0, #0x60
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #4
	blt _021EDACC
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #0x14]
_021EDB1A:
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	mov r6, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_021EDB36:
	ldr r0, [sp, #0x14]
	add r0, r6, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [r5]
	cmp r0, #0
	bne _021EDB6A
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021EDB6A
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _021EDB6A
	ldr r2, [r4, #4]
	ldr r0, _021EDC28 ; =0xF8007FFF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #5
	mov r2, #1
	lsl r2, r7
	lsr r0, r0, #0x14
	add r0, r0, r2
	lsl r0, r0, #0x14
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r4, #4]
_021EDB6A:
	ldr r1, [r5, #8]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _021EDB90
	ldr r0, [sp, #0x2c]
	ldr r2, [r0]
	ldr r0, _021EDC2C ; =0xF000FFFF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #4
	mov r2, #1
	lsl r2, r7
	lsr r0, r0, #0x14
	add r0, r0, r2
	lsl r0, r0, #0x14
	lsr r0, r0, #4
	orr r1, r0
	ldr r0, [sp, #0x2c]
	str r1, [r0]
_021EDB90:
	ldr r0, [sp, #0x1c]
	cmp r0, #4
	beq _021EDBD2
	lsl r3, r6, #0x18
	ldr r0, [sp]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsr r3, r3, #0x18
	bl ov96_021EDCEC
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x18]
	cmp r0, r1
	ble _021EDBB0
	bl GF_AssertFail
_021EDBB0:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne _021EDBD2
	ldr r2, [r4, #4]
	ldr r0, _021EDC30 ; =0xFFFF8007
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #0x11
	mov r2, #1
	lsl r2, r7
	lsr r0, r0, #0x14
	add r0, r0, r2
	lsl r0, r0, #0x14
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r4, #4]
_021EDBD2:
	add r6, r6, #1
	add r5, #0x20
	cmp r6, #3
	blt _021EDB36
	ldr r0, [sp, #0x14]
	add r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _021EDB1A
	ldr r1, [r4, #8]
	ldr r0, _021EDC34 ; =0xFFFF0000
	and r1, r0
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r4, #8]
	bl MTRandom
	add r2, r0, #0
	mov r1, #3
	and r2, r1
	mov r3, #0
	mov r0, #0x1e
_021EDC0E:
	add r1, r4, r2
	strb r3, [r1, #0xd]
	add r1, r2, #1
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r3, r3, #1
	add r2, r2, r1
	cmp r3, #4
	blt _021EDC0E
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EDC28: .word 0xF8007FFF
_021EDC2C: .word 0xF000FFFF
_021EDC30: .word 0xFFFF8007
_021EDC34: .word 0xFFFF0000
	thumb_func_end ov96_021EDA58

	thumb_func_start ov96_021EDC38
ov96_021EDC38: ; 0x021EDC38
	cmp r0, #0xa
	bhi _021EDCB0
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EDC48: ; jump table
	.short _021EDCB0 - _021EDC48 - 2 ; case 0
	.short _021EDCB0 - _021EDC48 - 2 ; case 1
	.short _021EDCB0 - _021EDC48 - 2 ; case 2
	.short _021EDCB0 - _021EDC48 - 2 ; case 3
	.short _021EDCB0 - _021EDC48 - 2 ; case 4
	.short _021EDC62 - _021EDC48 - 2 ; case 5
	.short _021EDC72 - _021EDC48 - 2 ; case 6
	.short _021EDC82 - _021EDC48 - 2 ; case 7
	.short _021EDC92 - _021EDC48 - 2 ; case 8
	.short _021EDCA2 - _021EDC48 - 2 ; case 9
	.short _021EDC5E - _021EDC48 - 2 ; case 10
_021EDC5E:
	mov r0, #0
	bx lr
_021EDC62:
	cmp r1, #0
	beq _021EDC6A
	mov r0, #4
	b _021EDC6C
_021EDC6A:
	mov r0, #0
_021EDC6C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EDC72:
	cmp r1, #0
	beq _021EDC7A
	mov r0, #2
	b _021EDC7C
_021EDC7A:
	mov r0, #4
_021EDC7C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EDC82:
	cmp r1, #0
	beq _021EDC8A
	mov r0, #1
	b _021EDC8C
_021EDC8A:
	mov r0, #2
_021EDC8C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EDC92:
	cmp r1, #0
	beq _021EDC9A
	mov r0, #3
	b _021EDC9C
_021EDC9A:
	mov r0, #1
_021EDC9C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EDCA2:
	cmp r1, #0
	beq _021EDCAA
	mov r0, #0
	b _021EDCAC
_021EDCAA:
	mov r0, #3
_021EDCAC:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021EDCB0:
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EDC38

