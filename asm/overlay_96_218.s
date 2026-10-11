	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ECDEC
	.extern ov96_0221B0BC

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
	thumb_func_start ov96_021ECDEC
ov96_021ECDEC: ; 0x021ECDEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	cmp r5, #0
	bne _021ECDFE
	bl GF_AssertFail
_021ECDFE:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	cmp r1, #0
	beq _021ECE32
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	lsl r0, r1, #0xc
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021ECE4A
_021ECE32:
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	lsl r0, r1, #0xc
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021ECE4A:
	bl _ffix
	asr r1, r0, #1
	mov r0, #6
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r5, #8]
	bl MTRandom
	mov r1, #1
	tst r0, r1
	beq _021ECE7A
	bl MTRandom
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x13
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021ECE8E
_021ECE7A:
	bl MTRandom
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x13
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021ECE8E:
	bl _ffix
	ldr r1, _021ECF3C ; =0x0000019A
	add r0, r0, r1
	asr r0, r0, #1
	str r0, [r5, #4]
	bl MTRandom
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021ECEBC
	bl MTRandom
	lsl r0, r0, #0x18
	lsr r0, r0, #0xc
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021ECED0
_021ECEBC:
	bl MTRandom
	lsl r0, r0, #0x18
	lsr r0, r0, #0xc
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021ECED0:
	bl _ffix
	str r0, [r5, #0xc]
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	add r1, r1, #1
	lsl r1, r1, #0x1c
	ldr r2, [r5, #0x14]
	ldr r0, _021ECF40 ; =0xFFF0FFFF
	lsr r1, r1, #0xc
	and r0, r2
	orr r1, r0
	mov r0, #1
	lsl r0, r0, #0x14
	orr r0, r1
	ldr r6, _021ECF44 ; =ov96_0221B0BC
	str r0, [r5, #0x14]
	add r3, sp, #0
	mov r2, #6
_021ECEFC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021ECEFC
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r5, #0xc]
	asr r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0]
	bl MTRandom
	mov r1, #1
	tst r0, r1
	bne _021ECF20
	mov r1, #0xc
	add r0, sp, #0
	strh r1, [r0, #6]
_021ECF20:
	mov r3, #0x83
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	lsl r3, r3, #0xe
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	str r0, [r5]
	bl ManagedSprite_SetAnimateFlag
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021ECF3C: .word 0x0000019A
_021ECF40: .word 0xFFF0FFFF
_021ECF44: .word ov96_0221B0BC
	thumb_func_end ov96_021ECDEC

