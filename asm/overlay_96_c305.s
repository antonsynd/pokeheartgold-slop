	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EE040
	.public ov96_021EE0AC
	.public ov96_021EE144
	.public ov96_021EE1D8
	.extern PokeathlonCourse_GetField974_AtIndex
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetSaveData
	.extern ov96_021E60D8
	.extern ov96_021E8448
	.extern ov96_021EDF5C
	.extern ov96_021EDF7C
	.extern ov96_021EDF84
	.extern ov96_021EDFFC
	.extern ov96_0221AF54

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

