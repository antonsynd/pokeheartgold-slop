	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EDA58
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetFieldData
	.extern ov96_021E8A20
	.extern ov96_021ED954
	.extern ov96_021ED9CC
	.extern ov96_021EDCEC

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

