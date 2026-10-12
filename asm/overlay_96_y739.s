	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220EFD0
	.public ov96_0220F03C
	.public ov96_0220F1CC
	.public ov96_0220F280
	.public ov96_0220F378
	.public ov96_0220F3B4
	.public ov96_0220F3BC
	.public ov96_0220F3FC
	.public ov96_0220F4A0
	.public ov96_0220F710
	.public ov96_0220F8C8
	.public ov96_0220FA18
	.public ov96_0220FB98
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E60D8
	.extern ov96_021E6104
	.extern ov96_021E6108
	.extern ov96_021E6138
	.extern ov96_021E6168
	.extern ov96_021E62AC
	.extern ov96_021E64F8
	.extern ov96_021E65A4
	.extern ov96_021E8228
	.extern ov96_021E8A20
	.extern ov96_021E8BB0
	.extern ov96_021EA854
	.extern ov96_021EA8A8
	.extern ov96_021EAA04
	.extern ov96_021EAA20
	.extern ov96_021EAB38
	.extern ov96_021EABA8
	.extern ov96_021EAC0C
	.extern ov96_021EAF6C
	.extern ov96_021EAF70
	.extern ov96_021EAF94
	.extern ov96_021EB06C
	.extern ov96_021EB0A4
	.extern ov96_021EB10C
	.extern ov96_021EB138
	.extern ov96_0220D554
	.extern ov96_0220D5D0
	.extern ov96_0220D630
	.extern ov96_0220D694
	.extern ov96_0220D6B0
	.extern ov96_0220D6CC
	.extern ov96_0220D8C4
	.extern ov96_0220D9A4
	.extern ov96_0220DAA0
	.extern ov96_0220E2A8
	.extern ov96_0220E974
	.extern ov96_0220EAC4
	.extern ov96_02210030
	.extern ov96_0221013C
	.extern ov96_02210858
	.extern ov96_0221CFBC

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
	thumb_func_start ov96_0220EFD0
ov96_0220EFD0: ; 0x0220EFD0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _0220EFE2
	bl GF_AssertFail
_0220EFE2:
	cmp r4, #0
	bne _0220EFEA
	bl GF_AssertFail
_0220EFEA:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldrb r0, [r5]
	cmp r0, #4
	blo _0220F038
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r1, [r5, #1]
	mov r0, #0xed
	add r2, r4, #0
	add r1, r1, #5
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r1, [r5, #1]
	mov r0, #0xed
	add r2, r4, #0
	add r1, r1, #5
	mov r3, #4
	bl GfGfxLoader_LoadScrnData
	ldrb r0, [r5, #1]
	mov r1, #6
	add r0, r0, #1
	bl _s32_div_f
	strb r1, [r5, #1]
	mov r0, #0
	strb r0, [r5]
_0220F038:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_0220EFD0

	thumb_func_start ov96_0220F03C
ov96_0220F03C: ; 0x0220F03C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r7, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	beq _0220F05C
	b _0220F1A4
_0220F05C:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #4]
	ldr r0, [r0, #0x20]
	lsr r0, r0, #0x1f
	beq _0220F07E
	add r7, #0xcc
	ldr r1, [sp]
	add r0, r7, #0
	bl ov96_0220FA18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0220F07E:
	ldr r0, _0220F1A8 ; =0x0000050C
	ldr r1, [r7, r0]
	cmp r1, #0
	ble _0220F0AA
	sub r1, r1, #1
	str r1, [r7, r0]
	ldr r0, [r7, r0]
	mov r1, #0x1e
	add r0, #0x1e
	bl _s32_div_f
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	ldr r0, _0220F1AC ; =0xC0FFFFFF
	and r1, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #2
	orr r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #0x1c]
_0220F0AA:
	ldr r0, [sp, #0xc]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_0220F0BE:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0220F0BE
	ldr r0, [r3]
	mov r6, #0
	str r0, [r4]
	ldr r4, [sp, #0xc]
	mov r0, #0x57
	lsl r0, r0, #2
	add r4, #0x50
	add r5, r7, r0
_0220F0D6:
	add r0, r4, #0
	bl ov96_021E8A20
	add r2, r0, #0
	ldr r0, [r2]
	ldr r1, [r5, #4]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1f
	beq _0220F13A
	lsl r0, r1, #0x11
	lsr r3, r0, #0x1f
	beq _0220F0FC
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	beq _0220F0FC
	ldr r0, _0220F1B0 ; =0xFFFFBFFF
	and r0, r1
	str r0, [r5, #4]
	b _0220F114
_0220F0FC:
	cmp r3, #0
	bne _0220F114
	ldr r1, [r5, #4]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	bne _0220F114
	mov r0, #1
	lsl r0, r0, #0xe
	orr r1, r0
	lsl r0, r0, #1
	orr r0, r1
	str r0, [r5, #4]
_0220F114:
	ldr r0, [r2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r5]
	ldr r0, [r2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	strh r0, [r5, #2]
	ldr r1, [r5, #4]
	ldr r0, _0220F1B4 ; =0xFFFFC000
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x12
	add r2, r1, #1
	ldr r1, _0220F1B8 ; =0x00003FFF
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	b _0220F156
_0220F13A:
	ldr r0, _0220F1BC ; =0xE000FFFF
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x12
	lsl r1, r1, #0x13
	lsr r1, r1, #3
	orr r1, r0
	ldr r0, _0220F1B4 ; =0xFFFFC000
	and r1, r0
	sub r0, r0, #1
	and r1, r0
	ldr r0, _0220F1C0 ; =0xFFFF7FFF
	and r0, r1
	str r0, [r5, #4]
_0220F156:
	add r6, r6, #1
	add r4, #0x28
	add r5, #0xe4
	cmp r6, #4
	blt _0220F0D6
	add r0, r7, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ov96_02210858
	ldr r0, _0220F1C4 ; =0x000004EC
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r7, r0
	bl ov96_02210030
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, [sp]
	add r0, r7, r0
	bl ov96_0220F8C8
	ldr r0, _0220F1A8 ; =0x0000050C
	ldr r0, [r7, r0]
	cmp r0, #0
	bgt _0220F19A
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x20]
	ldr r0, _0220F1C8 ; =0x7FFFFFFF
	and r1, r0
	add r0, r0, #1
	orr r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #0x20]
_0220F19A:
	add r7, #0xcc
	ldr r1, [sp]
	add r0, r7, #0
	bl ov96_0220FA18
_0220F1A4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220F1A8: .word 0x0000050C
_0220F1AC: .word 0xC0FFFFFF
_0220F1B0: .word 0xFFFFBFFF
_0220F1B4: .word 0xFFFFC000
_0220F1B8: .word 0x00003FFF
_0220F1BC: .word 0xE000FFFF
_0220F1C0: .word 0xFFFF7FFF
_0220F1C4: .word 0x000004EC
_0220F1C8: .word 0x7FFFFFFF
	thumb_func_end ov96_0220F03C

	thumb_func_start ov96_0220F1CC
ov96_0220F1CC: ; 0x0220F1CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r4, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r7, r0, #0
	add r0, r4, #0
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [r7, #0x20]
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0220F20C
	add r0, r6, #0
	bl ov96_0220EAC4
	add r0, r5, #0
	bl ov96_021E65A4
	add r0, r5, #0
	bl ov96_0220E2A8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0220F20C:
	bl System_GetTouchNew
	cmp r0, #0
	beq _0220F22E
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_0220F22E:
	bl System_GetTouchHeld
	cmp r0, #0
	ldr r1, [r4]
	beq _0220F25C
	mov r0, #0xff
	bic r1, r0
	ldr r0, _0220F274 ; =gSystem + 0x40
	ldrh r2, [r0, #0x20]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	orr r2, r1
	str r2, [r4]
	ldrh r0, [r0, #0x22]
	ldr r1, _0220F278 ; =0xFFFF00FF
	lsl r0, r0, #0x18
	and r1, r2
	lsr r0, r0, #0x10
	orr r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	orr r0, r1
	b _0220F260
_0220F25C:
	ldr r0, _0220F27C ; =0xFFFEFFFF
	and r0, r1
_0220F260:
	str r0, [r4]
	mov r0, #0x51
	lsl r0, r0, #4
	add r0, r6, r0
	add r1, r5, #0
	bl ov96_0221013C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220F274: .word gSystem + 0x40
_0220F278: .word 0xFFFF00FF
_0220F27C: .word 0xFFFEFFFF
	thumb_func_end ov96_0220F1CC

	thumb_func_start ov96_0220F280
ov96_0220F280: ; 0x0220F280
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r7, r0, #0
	add r0, sp, #8
	mov r1, #0xaa
	mov r2, #7
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp]
_0220F294:
	ldr r0, [sp]
	mov r6, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
_0220F29E:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r6, #0
	bl ov96_021E60D8
	lsl r2, r6, #0x18
	add r4, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	lsr r2, r2, #0x18
	bl ov96_0220F378
	add r5, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #5
	blo _0220F2C2
	bl GF_AssertFail
_0220F2C2:
	ldrb r0, [r4]
	cmp r0, #5
	blo _0220F2CC
	bl GF_AssertFail
_0220F2CC:
	ldrb r0, [r4, #1]
	cmp r0, #5
	blo _0220F2D6
	bl GF_AssertFail
_0220F2D6:
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #2]
	lsl r1, r0, #2
	add r0, sp, #8
	ldr r0, [r0, r1]
	strb r0, [r5]
	ldrb r0, [r4, #2]
	lsl r1, r0, #2
	add r0, sp, #8
	add r0, r0, r1
	ldr r0, [r0, #0x14]
	strb r0, [r5, #1]
	ldrb r0, [r4]
	lsl r1, r0, #2
	add r0, sp, #8
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	cmp r0, #0
	ble _0220F310
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0220F31E
_0220F310:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0220F31E:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r5, #4]
	ldrb r0, [r4, #1]
	lsl r1, r0, #2
	add r0, sp, #8
	add r0, r0, r1
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	ble _0220F34A
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0220F358
_0220F34A:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0220F358:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	add r6, r6, #1
	str r0, [r5, #8]
	cmp r6, #3
	blt _0220F29E
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #4
	blt _0220F294
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220F280

	thumb_func_start ov96_0220F378
ov96_0220F378: ; 0x0220F378
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	bne _0220F38A
	bl GF_AssertFail
_0220F38A:
	cmp r5, #4
	blo _0220F392
	bl GF_AssertFail
_0220F392:
	cmp r6, #3
	blo _0220F39A
	bl GF_AssertFail
_0220F39A:
	lsl r0, r5, #1
	add r0, r5, r0
	add r1, r6, r0
	mov r0, #0xc
	add r4, #0x34
	mul r0, r1
	add r4, r4, r0
	bne _0220F3AE
	bl GF_AssertFail
_0220F3AE:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_0220F378

	thumb_func_start ov96_0220F3B4
ov96_0220F3B4: ; 0x0220F3B4
	ldrb r0, [r0]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov96_0220F3B4

	thumb_func_start ov96_0220F3BC
ov96_0220F3BC: ; 0x0220F3BC
	push {r3, lr}
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1d
	cmp r0, #6
	bhi _0220F3F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220F3D4: ; jump table
	.short _0220F3F2 - _0220F3D4 - 2 ; case 0
	.short _0220F3F2 - _0220F3D4 - 2 ; case 1
	.short _0220F3F2 - _0220F3D4 - 2 ; case 2
	.short _0220F3E2 - _0220F3D4 - 2 ; case 3
	.short _0220F3E6 - _0220F3D4 - 2 ; case 4
	.short _0220F3EA - _0220F3D4 - 2 ; case 5
	.short _0220F3EE - _0220F3D4 - 2 ; case 6
_0220F3E2:
	mov r0, #1
	pop {r3, pc}
_0220F3E6:
	mov r0, #2
	pop {r3, pc}
_0220F3EA:
	mov r0, #3
	pop {r3, pc}
_0220F3EE:
	mov r0, #5
	pop {r3, pc}
_0220F3F2:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_0220F3BC

	thumb_func_start ov96_0220F3FC
ov96_0220F3FC: ; 0x0220F3FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x118
	str r0, [sp, #8]
	ldr r0, [r0, #0x10]
	bl SpriteManager_GetSpriteList
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #8]
	ldr r0, [r0]
	ldr r3, [r3, #0x1c]
	mov r1, #0xc
	mov r2, #7
	bl ov96_021EA854
	ldr r1, [sp, #8]
	str r0, [r1, #0x20]
	bl ov96_021EB138
	mov r4, #0
	add r5, sp, #0x14
	add r2, r5, #0
	add r0, r4, #0
	add r1, r4, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	ldr r0, [sp, #8]
	add r6, sp, #0x58
	ldr r0, [r0, #4]
	str r0, [sp, #0xc]
_0220F446:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r1, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, r7, #0
	add r3, r6, #0
	bl ov96_021E6168
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, r7, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	str r0, [r5, #0x14]
	add r4, r4, #1
	add r6, #0x10
	add r5, r5, #4
	cmp r4, #0xc
	blt _0220F446
	mov r0, #1
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	add r2, sp, #0x58
	add r3, sp, #0x14
	bl ov96_021EA8A8
	add sp, #0x118
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220F3FC

	thumb_func_start ov96_0220F4A0
ov96_0220F4A0: ; 0x0220F4A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #0xc]
	add r0, sp, #0x40
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	mov r1, #0xaa
	mov r2, #0x11
	bl ReadWholeNarcMemberByIdPair
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0220F4C8
	bl GF_AssertFail
_0220F4C8:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0220F4D4
	bl GF_AssertFail
_0220F4D4:
	ldr r0, [sp, #0xc]
	ldr r7, [r0, #4]
	add r0, r7, #0
	bl ov96_0220F280
	mov r2, #0x8f
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	mov r0, #0
	mov r2, #3
	mov r3, #3
_0220F4EC:
	ldr r5, [r1]
	add r4, r0, #0
	bic r5, r2
	and r4, r3
	orr r4, r5
	str r4, [r1]
	add r0, r0, #1
	add r1, #0xe4
	cmp r0, #4
	blt _0220F4EC
	mov r1, #0x59
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r6, #0
	str r0, [sp, #0x20]
_0220F50C:
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x10]
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	mov r1, #0xe4
	str r0, [sp, #0x1c]
	mul r1, r0
	ldr r0, [sp, #0x20]
	add r2, r0, r1
	ldr r1, [sp, #0x10]
	mov r0, #0x48
	mul r0, r1
	add r5, r2, r0
	ldr r0, [sp, #0xc]
	lsl r1, r6, #0x18
	ldr r0, [r0, #0x20]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	mov r1, #1
	str r0, [sp, #0x24]
	bl ov96_021EAB38
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	add r0, r7, #0
	add r1, r4, #0
	bl ov96_021E60C0
	bl ov96_021E6138
	lsl r1, r0, #3
	add r0, sp, #0x40
	add r2, r0, r1
	add r1, r2, #0
	sub r1, #8
	sub r2, r2, #4
	ldr r0, [sp, #0x24]
	ldr r1, [r1]
	ldr r2, [r2]
	bl ov96_021EAF70
	ldr r0, [sp, #0xc]
	lsl r1, r6, #0x18
	ldr r0, [r0, #0x20]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r4, r0, #0
	bl ov96_021EAA20
	bl ov96_021E8BB0
	str r0, [sp, #0x28]
	add r0, r4, #0
	mov r1, #0
	bl ov96_0220D554
	mov r1, #0xfe
	lsl r1, r1, #0x16
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_021EB10C
	ldr r1, [sp, #0x1c]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0220F700 ; =ov96_0221CFBC
	add r1, r0, r2
	ldr r0, [sp, #0x10]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	ldrsh r1, [r0, r1]
	str r1, [sp, #0x18]
	mov r1, #2
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov96_021EAC0C
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl ov96_021EAF94
	bl ov96_021E6104
	add r1, r0, #0
	add r0, r4, #0
	bl ov96_021EAF6C
	add r0, sp, #0x2c
	str r0, [sp]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r3, sp, #0x30
	bl ov96_021EB0A4
	str r7, [r5]
	ldr r1, [r5, #0x40]
	ldr r0, _0220F704 ; =0xFFF0FFFF
	and r1, r0
	lsl r0, r6, #0x1c
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	add r0, #0x45
	strb r1, [r0]
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	add r0, r5, #0
	add r0, #0x46
	strb r3, [r0]
	str r4, [r5, #4]
	ldr r2, [r5, #0x40]
	ldr r0, _0220F708 ; =0xFCFFFFFF
	and r0, r2
	ldr r2, [sp, #0x28]
	ldrh r2, [r2, #4]
	lsl r2, r2, #0x1e
	lsr r2, r2, #6
	orr r0, r2
	str r0, [r5, #0x40]
	add r0, r7, #0
	add r2, r3, #0
	bl ov96_0220F378
	str r0, [r5, #8]
	mov r0, #2
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x40]
	ldr r0, _0220F70C ; =0xFF0FFFFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x14
	orr r0, r1
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0xc
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #0xc
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #0xc
	str r0, [r5, #0x14]
	add r0, r7, #0
	bl ov96_021E5F24
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bne _0220F6A8
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x18]
	lsl r0, r0, #2
	add r1, sp, #0x34
	add r2, sp, #0x34
	add r1, r1, r0
	strh r3, [r2, r0]
	ldr r0, [sp, #0x14]
	strh r0, [r1, #2]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x10]
	bl SpriteManager_GetSpriteList
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	ldr r2, [r2, #0x1c]
	add r1, r4, #0
	bl ov96_021E64F8
	mov r1, #4
	bl Sprite_SetDrawPriority
	add r0, r4, #0
	mov r1, #6
	bl ov96_021EABA8
	b _0220F6B0
_0220F6A8:
	add r0, r4, #0
	mov r1, #7
	bl ov96_021EABA8
_0220F6B0:
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _0220F6D0
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r1, r0, r6
	ldr r0, [sp, #0x30]
	strb r0, [r1, #4]
	ldr r0, [sp, #0x2c]
	strb r0, [r1, #0x10]
_0220F6D0:
	add r6, r6, #1
	cmp r6, #0xc
	bge _0220F6D8
	b _0220F50C
_0220F6D8:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x10]
	bl SpriteManager_GetSpriteList
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, sp, #0x34
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	ldr r2, [r2, #0x1c]
	mov r1, #0
	bl ov96_021E62AC
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220F700: .word ov96_0221CFBC
_0220F704: .word 0xFFF0FFFF
_0220F708: .word 0xFCFFFFFF
_0220F70C: .word 0xFF0FFFFF
	thumb_func_end ov96_0220F4A0

	thumb_func_start ov96_0220F710
ov96_0220F710: ; 0x0220F710
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #8]
	str r0, [sp, #4]
	add r0, #0xcc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp]
_0220F728:
	ldr r0, [sp, #0xc]
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #3
	bl _s32_div_f
	mov r2, #0x59
	ldr r0, [sp, #8]
	lsl r2, r2, #2
	add r0, r0, r2
	str r0, [sp, #0x10]
	mov r0, #0xe4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x10]
	add r2, r0, r2
	mov r0, #0x48
	mul r0, r1
	add r7, r2, r0
	ldr r0, [sp, #0xc]
	add r4, r0, #1
	cmp r4, #0xc
	blt _0220F75E
	b _0220F8AE
_0220F75E:
	ldr r1, [sp, #4]
	add r1, r1, r0
	mov r0, #0xc
	mul r0, r4
	add r6, r1, r0
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x1c
	str r0, [sp, #0x14]
	add r0, r7, #0
	str r0, [sp, #0x18]
	add r0, #0x28
	str r0, [sp, #0x18]
	add r0, r7, #0
	str r0, [sp, #0x1c]
	add r0, #0x34
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, #0x40
	str r0, [sp, #0x20]
_0220F788:
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
	ldr r0, [sp, #0x10]
	add r2, r0, r2
	mov r0, #0x48
	mul r0, r1
	add r5, r2, r0
	add r0, r7, #0
	bl ov96_0220D694
	cmp r0, #0
	beq _0220F89A
	add r0, r5, #0
	bl ov96_0220D694
	cmp r0, #0
	beq _0220F89A
	add r0, r7, #0
	add r1, r5, #0
	bl ov96_0220D5D0
	cmp r0, #0
	beq _0220F89A
	ldr r0, [sp]
	ldrb r0, [r0, r4]
	cmp r0, #0
	bne _0220F89A
	mov r1, #0
	add r0, sp, #0x24
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	mov r0, #1
	strb r0, [r6]
	ldrb r1, [r6]
	ldr r0, [sp]
	add r2, sp, #0x24
	strb r1, [r0, r4]
	add r1, r5, #0
	ldr r0, [sp, #0x14]
	add r1, #0x1c
	bl VEC_Subtract
	add r0, sp, #0x24
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [r5, #8]
	ldr r1, [r0, #4]
	ldr r0, [r7, #0x40]
	lsl r0, r0, #6
	lsr r0, r0, #0x1e
	bne _0220F812
	mov r0, #6
	mul r0, r1
	mov r1, #5
	bl _s32_div_f
	add r1, r0, #0
_0220F812:
	ldr r2, [sp, #0x18]
	add r0, r1, #0
	ldr r3, [sp, #0x1c]
	add r1, sp, #0x24
	bl VEC_MultAdd
	ldr r0, [r7, #8]
	ldr r1, [r0, #4]
	ldr r0, [r5, #0x40]
	lsl r0, r0, #6
	lsr r0, r0, #0x1e
	bne _0220F836
	mov r0, #6
	mul r0, r1
	mov r1, #5
	bl _s32_div_f
	add r1, r0, #0
_0220F836:
	add r2, r5, #0
	add r3, r5, #0
	add r0, r1, #0
	add r1, sp, #0x24
	add r2, #0x28
	add r3, #0x34
	bl VEC_MultAdd
	mov r0, #0
	ldr r1, [r5, #0x34]
	mvn r0, r0
	mul r0, r1
	str r0, [r5, #0x34]
	mov r0, #0
	ldr r1, [r5, #0x38]
	mvn r0, r0
	mul r0, r1
	str r0, [r5, #0x38]
	mov r1, #2
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #0xe
	bl ov96_0220E974
	add r0, r5, #0
	mov r1, #2
	add r0, #0x34
	lsl r1, r1, #0xe
	bl ov96_0220E974
	add r0, sp, #0x24
	bl ov96_0220D6CC
	lsl r0, r0, #0x1c
	ldr r2, [r5, #0x40]
	ldr r1, _0220F8C4 ; =0xFF0FFFFF
	lsr r0, r0, #8
	and r1, r2
	orr r1, r0
	mov r0, #1
	lsl r0, r0, #0x1a
	orr r0, r1
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x20]
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	orr r1, r0
	ldr r0, [sp, #0x20]
	str r1, [r0]
	b _0220F8A4
_0220F89A:
	mov r0, #0
	strb r0, [r6]
	ldrb r1, [r6]
	ldr r0, [sp]
	strb r1, [r0, r4]
_0220F8A4:
	add r4, r4, #1
	add r6, #0xc
	cmp r4, #0xc
	bge _0220F8AE
	b _0220F788
_0220F8AE:
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0xc
	bge _0220F8C0
	b _0220F728
_0220F8C0:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220F8C4: .word 0xFF0FFFFF
	thumb_func_end ov96_0220F710

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

	thumb_func_start ov96_0220FB98
ov96_0220FB98: ; 0x0220FB98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	mov r0, #0x20
	orr r0, r1
	str r0, [r5, #4]
	mov r0, #0x80
	strh r0, [r5]
	mov r0, #0
	strh r0, [r5, #2]
	strh r0, [r5]
	ldr r1, [r5, #4]
	mov r0, #0x1c
	bic r1, r0
	mov r0, #4
	orr r0, r1
	str r0, [r5, #4]
	strb r2, [r5, #8]
	bl MTRandom
	mov r1, #0xf
	bl _u32_div_f
	strb r1, [r5, #9]
	ldr r1, [r5, #4]
	ldr r0, _0220FBD8 ; =0xFFFFC03F
	and r0, r1
	str r0, [r5, #4]
	strb r4, [r5, #0xa]
	pop {r3, r4, r5, pc}
	nop
_0220FBD8: .word 0xFFFFC03F
	thumb_func_end ov96_0220FB98

