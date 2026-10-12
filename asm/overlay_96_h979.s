	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220DEAC
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021EAA04
	.extern ov96_021EAB38
	.extern ov96_021EABA8
	.extern ov96_021EAC0C
	.extern ov96_021EB01C
	.extern ov96_021EB06C
	.extern ov96_021EB0A4
	.extern ov96_021EB10C
	.extern ov96_0220D52C
	.extern ov96_0220D554
	.extern ov96_0220DE90
	.extern ov96_0220E8C0
	.extern ov96_0220F378
	.extern ov96_0220F3B4

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
	thumb_func_start ov96_0220DEAC
ov96_0220DEAC: ; 0x0220DEAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r5, r0, #0
	str r2, [sp, #8]
	mov r0, #0
	str r1, [sp, #4]
	add r3, sp, #0x40
	add r1, r0, #0
	mov r2, #6
_0220DEBE:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0220DEBE
	ldr r0, [sp, #8]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x1c]
	add r0, sp, #0x40
	mov r6, #0
	str r0, [sp, #0x14]
	mov r0, #0xff
	add r5, #0x3c
	str r6, [sp, #0x10]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
_0220DEDE:
	ldr r0, [sp, #0x1c]
	lsl r1, r6, #0x18
	ldr r0, [r0, #0x20]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r4, r0, #0
	cmp r5, #0
	bne _0220DEF4
	bl GF_AssertFail
_0220DEF4:
	cmp r4, #0
	bne _0220DEFC
	bl GF_AssertFail
_0220DEFC:
	ldr r0, [sp, #4]
	add r3, sp, #0x3c
	add r0, r0, r6
	ldrb r7, [r0, #0x10]
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	ldrb r1, [r1, #4]
	add r2, r7, #0
	bl ov96_021EB0A4
	ldr r0, [sp, #0x14]
	strb r7, [r0]
	str r4, [r0, #4]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x14
	add r1, r0, #0
	lsr r1, r6
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	cmp r0, #1
	bne _0220DF68
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1f
	bne _0220DF68
	add r0, r4, #0
	mov r1, #1
	bl ov96_0220D554
	mov r0, #1
	ldr r1, [r5, #0x18]
	lsl r0, r0, #0x12
	orr r1, r0
	ldr r0, _0220E1FC ; =0xFFFF00FF
	and r1, r0
	mov r0, #6
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r5, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x14]
	ldr r0, _0220E200 ; =0x0000089E
	bl PlaySE
	b _0220DFC6
_0220DF68:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0220DFC6
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0220DFC6
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	mov r3, #0x1e
	ldr r0, [r5]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r5]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	add r0, r4, #0
	mov r1, #0
	bl ov96_0220D554
	mov r1, #0xfe
	lsl r1, r1, #0x16
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_021EB10C
	add r0, r4, #0
	mov r1, #1
	bl ov96_021EAB38
	ldr r1, [r5, #0x18]
	ldr r0, _0220E204 ; =0xFFFBFFFF
	and r0, r1
	str r0, [r5, #0x18]
	ldr r0, _0220E208 ; =0x000008B6
	bl PlaySE
_0220DFC6:
	ldr r2, [r5, #0x18]
	ldr r1, _0220E20C ; =0xFFF7FFFF
	add r0, r5, #0
	and r1, r2
	ldr r2, [sp, #0x18]
	add r0, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0xc
	orr r1, r2
	str r1, [r5, #0x18]
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1f
	beq _0220E058
	ldr r1, [r0]
	ldr r2, _0220E1FC ; =0xFFFF00FF
	and r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r1, r2
	str r1, [r0]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	bne _0220E006
	add r0, r4, #0
	mov r1, #0
	bl ov96_021EAB38
	b _0220E1B4
_0220E006:
	ldr r1, [r5, #0x14]
	ldr r0, _0220E210 ; =0x0000019A
	sub r0, r1, r0
	str r0, [r5, #0x14]
	bl _fflt
	ldr r1, _0220E214 ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_021EB10C
	add r0, sp, #0x30
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldrb r1, [r1, #4]
	ldrb r2, [r2, #0x10]
	add r0, r4, #0
	add r3, sp, #0x34
	bl ov96_021EB06C
	ldr r0, [sp, #0x30]
	cmp r0, #0xb4
	bge _0220E03E
	b _0220E1B4
_0220E03E:
	ldr r0, [r5, #0x18]
	mov r3, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x18
	mov r0, #6
	sub r0, r0, r1
	lsl r2, r0, #2
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	add r2, r7, r2
	bl ov96_021EB01C
	b _0220E1B4
_0220E058:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x38]
	ldr r0, [r0, #0x1c]
	mov r3, #1
	lsl r0, r0, #8
	lsr r1, r0, #8
	ldr r0, [sp, #0x10]
	lsr r1, r0
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	bl ov96_021EB01C
	add r0, r4, #0
	add r1, r7, #1
	bl ov96_021EAC0C
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x20]
	lsl r0, r0, #1
	lsr r0, r0, #0x14
	add r1, r0, #0
	lsr r1, r6
	mov r0, #1
	tst r0, r1
	beq _0220E10C
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	ldr r1, [sp, #0x20]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_0220F378
	add r7, r0, #0
	ldr r0, [sp, #8]
	bl ov96_021E5F24
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bne _0220E0E6
	ldr r0, [r5, #0x18]
	lsl r1, r0, #0xf
	lsr r1, r1, #0x1f
	bne _0220E0E6
	lsl r0, r0, #0xe
	lsr r0, r0, #0x1f
	bne _0220E0E6
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _0220E0E0
	ldr r0, _0220E218 ; =0x000005F3
	bl PlaySE
	b _0220E0E6
_0220E0E0:
	ldr r0, _0220E21C ; =0x000008C5
	bl PlaySE
_0220E0E6:
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _0220E100
	add r0, r5, #4
	add r1, r4, #0
	bl ov96_0220D52C
	mov r0, #2
	ldr r1, [r5, #0x18]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5, #0x18]
	b _0220E114
_0220E100:
	mov r0, #1
	ldr r1, [r5, #0x18]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5, #0x18]
	b _0220E114
_0220E10C:
	ldr r1, [r5, #0x18]
	ldr r0, _0220E220 ; =0xFFFDFFFF
	and r0, r1
	str r0, [r5, #0x18]
_0220E114:
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1f
	beq _0220E1B4
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_0220F378
	ldr r1, [r5, #0x18]
	add r2, sp, #0x2c
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r7, r0, #0
	bl ov96_0220E8C0
	add r3, r0, #0
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	add r2, r2, r3
	add r0, r4, #0
	mov r3, #0
	bl ov96_021EB01C
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_021EB10C
	add r0, r7, #0
	bl ov96_0220F3B4
	ldr r7, [r5, #0x18]
	add r3, r0, #0
	add r2, r5, #0
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	bic r1, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r5, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r2, #0x18
	cmp r0, r3
	bls _0220E1B4
	ldr r1, [r2]
	ldr r0, _0220E224 ; =0xFFFEFFFF
	mov r3, #0
	and r1, r0
	ldr r0, [sp, #0x28]
	bic r1, r0
	str r1, [r2]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	bl ov96_021EB01C
	mov r1, #0xfe
	lsl r1, r1, #0x16
	add r0, r4, #0
	add r2, r1, #0
	bl ov96_021EB10C
_0220E1B4:
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r0, #8
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r5, #0x1c
	add r0, r0, #2
	str r0, [sp, #0x10]
	cmp r6, #0xc
	bge _0220E1CA
	b _0220DEDE
_0220E1CA:
	mov r0, #0
	str r0, [sp]
	ldr r3, _0220E228 ; =ov96_0220DE90
	add r0, sp, #0x40
	mov r1, #0xc
	mov r2, #8
	bl MATH_QSort
	mov r5, #0
	add r4, sp, #0x40
_0220E1DE:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0220E1E8
	bl GF_AssertFail
_0220E1E8:
	ldr r0, [r4, #4]
	add r1, r5, #7
	bl ov96_021EABA8
	add r5, r5, #1
	add r4, #8
	cmp r5, #0xc
	blt _0220E1DE
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220E1FC: .word 0xFFFF00FF
_0220E200: .word 0x0000089E
_0220E204: .word 0xFFFBFFFF
_0220E208: .word 0x000008B6
_0220E20C: .word 0xFFF7FFFF
_0220E210: .word 0x0000019A
_0220E214: .word 0x45800000
_0220E218: .word 0x000005F3
_0220E21C: .word 0x000008C5
_0220E220: .word 0xFFFDFFFF
_0220E224: .word 0xFFFEFFFF
_0220E228: .word ov96_0220DE90
	thumb_func_end ov96_0220DEAC

