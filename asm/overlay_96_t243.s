	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EDF84
	.public ov96_021EDFFC
	.public ov96_021EE040
	.public ov96_021EE0AC
	.public ov96_021EE144
	.public ov96_021EE1D8
	.public ov96_021EE264
	.public ov96_021EE290
	.public ov96_021EE324
	.public ov96_021EE440
	.public ov96_021EE54C
	.public ov96_021EE580
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField974_AtIndex
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetSaveData
	.extern ov96_021E5F24
	.extern ov96_021E60D8
	.extern ov96_021E8448
	.extern ov96_021E8A20
	.extern ov96_021ECC58
	.extern ov96_021EDF5C
	.extern ov96_021EDF7C
	.extern ov96_021EEA80
	.extern ov96_0221AF54
	.extern ov96_0221B124

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
	thumb_func_start ov96_021EDF84
ov96_021EDF84: ; 0x021EDF84
	push {r4, r5}
	mov r4, #0
	add r3, r4, #0
	add r5, r1, #0
_021EDF8C:
	ldr r2, [r5, #0x44]
	add r3, r3, #1
	add r4, r4, r2
	add r5, r5, #4
	cmp r3, #0xa
	blt _021EDF8C
	ldr r2, [r1, #4]
	mov r5, #0
	str r2, [r0]
	ldr r2, [r1, #8]
	add r3, r1, #0
	str r2, [r0, #4]
	ldr r2, [r1, #0xc]
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	ldr r2, [r1, #0x6c]
	add r4, r0, #0
	str r2, [r0, #0x10]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x14]
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x18]
	ldr r2, [r1, #0x18]
	str r2, [r0, #0x1c]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x20]
	ldr r2, [r1, #0x20]
	str r2, [r0, #0x24]
	ldr r2, [r1, #0x24]
	str r2, [r0, #0x28]
	ldr r2, [r1, #0x28]
	str r2, [r0, #0x2c]
	ldr r2, [r1, #0x2c]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x34]
	ldr r2, [r1, #0x38]
	str r2, [r0, #0x38]
	ldr r2, [r1, #0x3c]
	str r2, [r0, #0x3c]
	ldr r2, [r1, #0x40]
	str r2, [r0, #0x40]
_021EDFE0:
	ldr r2, [r3, #0x44]
	add r5, r5, #1
	str r2, [r4, #0x44]
	add r3, r3, #4
	add r4, r4, #4
	cmp r5, #0xa
	blt _021EDFE0
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x6c]
	ldr r1, [r1, #0x70]
	str r1, [r0, #0x70]
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EDF84

	thumb_func_start ov96_021EDFFC
ov96_021EDFFC: ; 0x021EDFFC
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021EE03C ; =ov96_0221B124
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
_021EE006:
	ldr r0, [r5]
	cmp r0, #0
	bne _021EE010
	bl GF_AssertFail
_021EE010:
	bl MTRandom
	mov r1, #3
	bl _u32_div_f
	strb r1, [r6, r4]
	ldr r0, [r7]
	cmp r0, #0
	beq _021EE02E
	ldr r1, [r5]
	bl _u32_div_f
	ldrb r1, [r6, r4]
	add r0, r1, r0
	strb r0, [r6, r4]
_021EE02E:
	add r4, r4, #1
	add r5, r5, #4
	add r7, r7, #4
	cmp r4, #0x1d
	blt _021EE006
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE03C: .word ov96_0221B124
	thumb_func_end ov96_021EDFFC

	thumb_func_start ov96_021EE040
ov96_021EE040: ; 0x021EE040
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, sp, #0
	mov r3, #0x1d
	mov r2, #0
_021EE04A:
	strb r2, [r4]
	add r4, r4, #1
	sub r3, r3, #1
	bne _021EE04A
	mov r2, #0
	add r4, r2, #0
	add r5, r2, #0
_021EE058:
	ldrb r3, [r0, r5]
	cmp r2, r3
	bhs _021EE060
	add r2, r3, #0
_021EE060:
	add r5, r5, #1
	cmp r5, #0x1d
	blt _021EE058
	mov r6, #0
	add r5, sp, #0
_021EE06A:
	ldrb r3, [r0, r6]
	cmp r2, r3
	bne _021EE076
	strb r6, [r5]
	add r5, r5, #1
	add r4, r4, #1
_021EE076:
	add r6, r6, #1
	cmp r6, #0x1d
	blt _021EE06A
	ldr r3, _021EE0A8 ; =ov96_0221AF54
	mov r5, #0
_021EE080:
	ldr r0, [r3]
	cmp r2, r0
	blo _021EE08E
	mov r0, #3
	sub r0, r0, r5
	strb r0, [r1]
	b _021EE096
_021EE08E:
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, #4
	blt _021EE080
_021EE096:
	bl MTRandom
	add r1, r4, #0
	bl _u32_div_f
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE0A8: .word ov96_0221AF54
	thumb_func_end ov96_021EE040

	thumb_func_start ov96_021EE0AC
ov96_021EE0AC: ; 0x021EE0AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x94
	add r5, r0, #0
	mov r0, #0
	add r2, r1, #0
	add r4, sp, #0x20
	add r1, r0, #0
	mov r3, #7
_021EE0BC:
	stmia r4!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021EE0BC
	add r3, sp, #0
	str r0, [r4]
	add r3, #1
	mov r1, #0x1d
	mov r0, #0
_021EE0CE:
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _021EE0CE
	add r0, r2, #0
	bl PokeathlonCourse_GetSaveData
	bl Save_Pokeathlon_Get
	bl PokeathlonSave_GetAgainUnkB00
	add r6, r0, #0
	add r0, sp, #0x20
	add r1, r6, #0
	bl ov96_021EDF84
	add r0, sp, #0
	add r0, #1
	add r1, sp, #0x20
	bl ov96_021EDFFC
	add r0, sp, #0
	add r0, #1
	add r1, sp, #0
	bl ov96_021EE040
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl ov96_021EDF7C
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r2, r4, #2
	add r0, r1, r0
	str r0, [r5]
	mov r0, #0xff
	ldr r1, [r5, #4]
	lsl r0, r0, #0x18
	and r0, r1
	add r1, sp, #0x20
	ldr r2, [r1, r2]
	ldr r1, _021EE140 ; =0x00FFFFFF
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #0x70]
	bl ov96_021EDF5C
	ldr r2, [r5, #4]
	ldr r1, _021EE140 ; =0x00FFFFFF
	lsl r0, r0, #0x18
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	add sp, #0x94
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EE140: .word 0x00FFFFFF
	thumb_func_end ov96_021EE0AC

	thumb_func_start ov96_021EE144
ov96_021EE144: ; 0x021EE144
	push {r3, r4, r5, r6, lr}
	sub sp, #0x94
	add r5, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r6, sp, #0x20
	add r1, r0, #0
	mov r4, #7
_021EE154:
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r4, r4, #1
	bne _021EE154
	add r4, sp, #0
	str r0, [r6]
	add r4, #1
	mov r1, #0x1d
	mov r0, #0
_021EE166:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _021EE166
	add r0, r3, #0
	add r1, r2, #0
	bl PokeathlonCourse_GetField974_AtIndex
	add r6, r0, #0
	add r0, sp, #0x20
	add r1, r6, #0
	bl ov96_021EDF84
	add r0, sp, #0
	add r0, #1
	add r1, sp, #0x20
	bl ov96_021EDFFC
	add r0, sp, #0
	add r0, #1
	add r1, sp, #0
	bl ov96_021EE040
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl ov96_021EDF7C
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r2, r4, #2
	add r0, r1, r0
	str r0, [r5]
	mov r0, #0xff
	ldr r1, [r5, #4]
	lsl r0, r0, #0x18
	and r0, r1
	add r1, sp, #0x20
	ldr r2, [r1, r2]
	ldr r1, _021EE1D4 ; =0x00FFFFFF
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #0x70]
	bl ov96_021EDF5C
	ldr r2, [r5, #4]
	ldr r1, _021EE1D4 ; =0x00FFFFFF
	lsl r0, r0, #0x18
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	add sp, #0x94
	pop {r3, r4, r5, r6, pc}
	nop
_021EE1D4: .word 0x00FFFFFF
	thumb_func_end ov96_021EE144

	thumb_func_start ov96_021EE1D8
ov96_021EE1D8: ; 0x021EE1D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	add r7, r1, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	mov r5, #0
	bl PokeathlonCourse_GetParticipantData
	str r0, [sp, #8]
	add r4, r5, #0
_021EE1F0:
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	bl ov96_021E60D8
	ldrb r6, [r0, #4]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	ldrb r0, [r0]
	add r4, r4, #1
	add r0, r1, r0
	add r0, r2, r0
	add r0, r3, r0
	add r0, r6, r0
	add r0, r0, #5
	add r5, r5, r0
	cmp r4, #3
	blt _021EE1F0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	sub r4, #8
	cmp r4, #0xc
	ble _021EE22A
	mov r4, #0xc
	b _021EE230
_021EE22A:
	cmp r4, #0
	bge _021EE230
	mov r4, #0
_021EE230:
	ldr r1, [sp, #8]
	add r0, r7, #0
	ldr r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021E8448
	ldr r1, [sp]
	str r0, [r1]
	add r0, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r0, _021EE260 ; =0x00FFFFFF
	and r1, r0
	lsl r0, r4, #0x18
	orr r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE260: .word 0x00FFFFFF
	thumb_func_end ov96_021EE1D8

	thumb_func_start ov96_021EE264
ov96_021EE264: ; 0x021EE264
	push {r3, r4}
	mov r3, #0
	add r4, r0, #0
_021EE26A:
	ldr r2, [r4]
	lsl r2, r2, #4
	lsr r2, r2, #0x1c
	cmp r1, r2
	bne _021EE280
	lsl r1, r3, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	pop {r3, r4}
	bx lr
_021EE280:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #4
	blt _021EE26A
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021EE264

	thumb_func_start ov96_021EE290
ov96_021EE290: ; 0x021EE290
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r3, #0
	ldr r7, _021EE318 ; =0xFF00FFFF
	add r2, r3, #0
	add r6, r4, #0
_021EE29C:
	ldr r0, [r6]
	lsl r1, r0, #8
	lsr r1, r1, #0x18
	bne _021EE2BA
	add r1, r1, #1
	lsl r1, r1, #0x18
	and r0, r7
	lsr r1, r1, #8
	orr r0, r1
	str r0, [r6]
	lsr r0, r0, #0x1c
	cmp r0, r3
	bls _021EE2BA
	add r3, r0, #0
	add r5, r2, #0
_021EE2BA:
	add r2, r2, #1
	add r6, r6, #4
	cmp r2, #4
	blt _021EE29C
	lsl r1, r5, #2
	ldr r3, [r4, r1]
	ldr r2, _021EE318 ; =0xFF00FFFF
	add r0, r3, #0
	lsl r3, r3, #8
	lsr r3, r3, #0x18
	sub r3, r3, #1
	lsl r3, r3, #0x18
	and r0, r2
	lsr r3, r3, #8
	orr r0, r3
	str r0, [r4, r1]
	ldr r3, [r4, r1]
	lsl r0, r2, #0x10
	lsl r2, r3, #0x10
	lsr r2, r2, #0x10
	add r2, r2, #1
	lsl r2, r2, #0x10
	and r0, r3
	lsr r2, r2, #0x10
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	ldr r3, _021EE31C ; =ov96_021ECC58
	add r0, r4, #0
	add r2, r1, #0
	bl MATH_QSort
	ldr r1, [r4]
	ldr r0, _021EE320 ; =0xFFFF0000
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE318: .word 0xFF00FFFF
_021EE31C: .word ov96_021ECC58
_021EE320: .word 0xFFFF0000
	thumb_func_end ov96_021EE290

	thumb_func_start ov96_021EE324
ov96_021EE324: ; 0x021EE324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0x10]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, #0xb7
	ldrb r6, [r0]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bne _021EE3FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, #0x20
	strb r6, [r0]
	ldr r0, [sp, #0x10]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	mov r2, #0x24
_021EE37E:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021EE37E
	add r0, r7, #0
	mov r4, #0
	bl PokeathlonCourse_GetParticipantCount
	cmp r0, #0
	ble _021EE3C8
	ldr r5, [sp, #0x10]
	add r5, #0x50
_021EE39A:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r1, [r0]
	cmp r1, r6
	blo _021EE3AC
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021EE3B0
_021EE3AC:
	mov r1, #1
	str r1, [sp, #4]
_021EE3B0:
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _021EE3BA
	mov r0, #0
	str r0, [sp]
_021EE3BA:
	add r0, r7, #0
	add r5, #0x28
	add r4, r4, #1
	bl PokeathlonCourse_GetParticipantCount
	cmp r4, r0
	blt _021EE39A
_021EE3C8:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EE3DE
	ldr r0, [sp, #0xc]
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r0, #0x21
	strb r1, [r0]
_021EE3DE:
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r0, #0x21
	ldrb r0, [r0]
	bic r0, r1
	ldr r1, [sp, #4]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #1
	and r1, r2
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r0, #0x21
	str r0, [sp, #0xc]
	strb r1, [r0]
_021EE3FC:
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	ldr r0, [r0, #0xc]
	bl ov96_021EEA80
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	add r0, #0xb8
	str r0, [sp, #0x14]
	ldr r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [sp, #8]
	add r0, #0x21
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021EE438
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldrb r0, [r0]
	cmp r6, r0
	blo _021EE438
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE438:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE324

	thumb_func_start ov96_021EE440
ov96_021EE440: ; 0x021EE440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0x10]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, #0xb7
	ldrb r6, [r0]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bne _021EE50A
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	strb r6, [r0, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	mov r2, #0x24
_021EE498:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021EE498
	add r0, r7, #0
	mov r4, #0
	bl PokeathlonCourse_GetParticipantCount
	cmp r0, #0
	ble _021EE4E2
	ldr r5, [sp, #0x10]
	add r5, #0x50
_021EE4B4:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r1, [r0]
	cmp r1, r6
	blo _021EE4C6
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021EE4CA
_021EE4C6:
	mov r1, #1
	str r1, [sp, #4]
_021EE4CA:
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _021EE4D4
	mov r0, #0
	str r0, [sp]
_021EE4D4:
	add r0, r7, #0
	add r5, #0x28
	add r4, r4, #1
	bl PokeathlonCourse_GetParticipantCount
	cmp r4, r0
	blt _021EE4B4
_021EE4E2:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EE4F6
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	mov r0, #2
	lsl r0, r0, #0x1c
	orr r1, r0
	ldr r0, [sp, #0xc]
	str r1, [r0, #8]
_021EE4F6:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	ldr r0, _021EE548 ; =0xEFFFFFFF
	and r1, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #3
	orr r1, r0
	ldr r0, [sp, #0xc]
	str r1, [r0, #8]
_021EE50A:
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	ldr r0, [r0, #0xc]
	bl ov96_021EEA80
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	add r0, #0xb8
	str r0, [sp, #0x14]
	ldr r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _021EE540
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xc]
	cmp r6, r0
	blo _021EE540
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE540:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE548: .word 0xEFFFFFFF
	thumb_func_end ov96_021EE440

	thumb_func_start ov96_021EE54C
ov96_021EE54C: ; 0x021EE54C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021EE566
	bl GF_AssertFail
_021EE566:
	cmp r6, #0
	bne _021EE56E
	bl GF_AssertFail
_021EE56E:
	cmp r4, #0
	bne _021EE576
	bl GF_AssertFail
_021EE576:
	add r4, #0x21
	ldrb r0, [r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021EE54C

	thumb_func_start ov96_021EE580
ov96_021EE580: ; 0x021EE580
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021EE59A
	bl GF_AssertFail
_021EE59A:
	cmp r6, #0
	bne _021EE5A2
	bl GF_AssertFail
_021EE5A2:
	cmp r4, #0
	bne _021EE5AA
	bl GF_AssertFail
_021EE5AA:
	ldr r0, [r4, #8]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE580

