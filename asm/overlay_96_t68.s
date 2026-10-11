	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E8448
	.public ov96_021E8484
	.public ov96_021E860C
	.public ov96_021E86FC
	.public ov96_021E872C
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern ov96_021E679C

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
	thumb_func_start ov96_021E8448
ov96_021E8448: ; 0x021E8448
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	beq _021E847A
	cmp r5, #0x64
	bhi _021E847A
	bl PokeathlonCourse_GetHeapID
	add r1, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	bl NARC_New
	add r4, r0, #0
	sub r1, r5, #1
	add r2, sp, #0
	bl NARC_ReadWholeMember
	add r0, r4, #0
	bl NARC_Delete
	add r0, sp, #0
	add sp, #8
	ldrb r0, [r0, #7]
	pop {r3, r4, r5, pc}
_021E847A:
	bl GF_AssertFail
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E8448

	thumb_func_start ov96_021E8484
ov96_021E8484: ; 0x021E8484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	add r4, r1, #0
	bl PokeathlonCourse_GetHeapID
	add r3, r0, #0
	ldr r2, _021E8608 ; =0x00000136
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	str r0, [sp, #0x14]
	mov r0, #4
	sub r0, r0, r4
	str r0, [sp, #4]
	mov r1, #0x7e
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r0, r4, #0
	ldrb r1, [r2, #0xc]
	ldrb r2, [r2, #0xf]
	add r3, sp, #0x2c
	bl ov96_021E860C
	ldr r0, [sp]
	bl PokeathlonCourse_GetHeapID
	add r1, r0, #0
	mov r0, #0xa9
	bl NARC_New
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl PokeathlonCourse_GetHeapID
	add r1, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	bl NARC_New
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	cmp r0, #4
	bge _021E84E6
	blt _021E84E8
_021E84E6:
	b _021E85F0
_021E84E8:
	add r0, sp, #0x2c
	str r0, [sp, #8]
_021E84EC:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl PokeathlonCourse_GetParticipantData
	add r5, r0, #0
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	str r0, [r5]
	cmp r0, #0
	bne _021E8504
	bl GF_AssertFail
_021E8504:
	ldr r1, [r5]
	ldr r0, [sp, #0xc]
	sub r1, r1, #1
	add r2, sp, #0x24
	bl NARC_ReadWholeMember
	add r1, sp, #0x24
	ldrb r1, [r1, #6]
	ldr r0, [sp, #0x14]
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl PokeathlonCourse_GetPlayerProfileFromData
	add r6, r0, #0
	add r0, r4, #0
	bl String_cstr
	add r1, r0, #0
	add r0, r6, #0
	bl Save_Profile_PlayerName_Set
	add r0, r4, #0
	bl String_Delete
	mov r0, #0
	add r6, r5, #0
	str r0, [sp, #0x18]
	add r4, sp, #0x24
	add r6, #0x16
	add r7, sp, #0x24
_021E8546:
	ldrh r0, [r4]
	mov r1, #0x12
	strh r0, [r5, #4]
	mov r0, #0
	strh r0, [r5, #6]
	strb r0, [r5, #0x14]
	str r0, [r5, #8]
	ldrh r0, [r5, #4]
	bl GetMonBaseStat
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021E856A
	cmp r0, #0xfe
	beq _021E856E
	cmp r0, #0xff
	beq _021E8572
	b _021E8576
_021E856A:
	mov r0, #0
	b _021E8578
_021E856E:
	mov r0, #1
	b _021E8578
_021E8572:
	mov r0, #2
	b _021E8578
_021E8576:
	mov r0, #0
_021E8578:
	strb r0, [r5, #0x15]
	ldrh r0, [r5, #4]
	mov r1, #0
	bl ov96_021E679C
	add r1, r0, #0
	add r2, sp, #0x2c
	ldr r0, [sp, #0x10]
	add r2, #3
	bl NARC_ReadWholeMember
	ldrb r0, [r7, #0xb]
	strb r0, [r5, #0xc]
	ldrb r0, [r7, #0xc]
	strb r0, [r5, #0xd]
	ldrb r0, [r7, #0xd]
	strb r0, [r5, #0xe]
	ldrb r0, [r7, #0xe]
	strb r0, [r5, #0xf]
	ldrb r0, [r7, #0xf]
	strb r0, [r5, #0x10]
	ldr r0, [sp]
	bl PokeathlonCourse_GetHeapID
	add r1, r0, #0
	ldrh r0, [r4]
	bl GetSpeciesName
	str r0, [sp, #0x20]
	bl String_cstr
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xb
	bl CopyU16StringArrayN
	ldr r0, [sp, #0x20]
	bl String_Delete
	ldr r0, [sp, #0x18]
	add r4, r4, #2
	add r0, r0, #1
	add r5, #0x28
	add r6, #0x28
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _021E8546
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	cmp r0, #4
	bge _021E85F0
	b _021E84EC
_021E85F0:
	ldr r0, [sp, #0xc]
	bl NARC_Delete
	ldr r0, [sp, #0x10]
	bl NARC_Delete
	ldr r0, [sp, #0x14]
	bl DestroyMsgData
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021E8608: .word 0x00000136
	thumb_func_end ov96_021E8484

	thumb_func_start ov96_021E860C
ov96_021E860C: ; 0x021E860C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0
	str r2, [sp]
	add r4, r3, #0
	add r2, r1, #0
_021E861C:
	strb r2, [r4, r1]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #3
	blo _021E861C
	cmp r0, #0xa
	bne _021E8678
	add r1, sp, #0xc
	mov r7, #0x19
	add r1, #1
_021E8632:
	add r0, r2, #1
	lsl r0, r0, #0x18
	strb r2, [r1, r2]
	lsr r2, r0, #0x18
	cmp r2, #0x19
	blo _021E8632
	mov r6, #0
	cmp r5, #0
	bls _021E86C4
_021E8644:
	bl LCRandom
	add r1, r7, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	add r1, sp, #0xc
	lsr r0, r0, #0x18
	add r1, #1
	ldrb r1, [r1, r0]
	strb r1, [r4, r6]
	add r1, #0x19
	strb r1, [r4, r6]
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	add r1, sp, #0xc
	add r1, #1
	ldrb r2, [r1, r7]
	strb r2, [r1, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, r5
	blo _021E8644
	b _021E86C4
_021E8678:
	mov r7, #5
	add r1, sp, #8
_021E867C:
	strb r2, [r1, r2]
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #5
	blo _021E867C
	mov r6, #0
	cmp r5, #0
	bls _021E86C4
	lsl r1, r0, #2
	add r0, r0, r1
	str r0, [sp, #4]
_021E8694:
	bl LCRandom
	add r1, r7, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r1, sp, #8
	ldrb r2, [r1, r0]
	ldr r1, [sp, #4]
	strb r2, [r4, r6]
	add r1, r2, r1
	strb r1, [r4, r6]
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	add r1, sp, #8
	ldrb r2, [r1, r7]
	strb r2, [r1, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, r5
	blo _021E8694
_021E86C4:
	ldr r0, [sp]
	cmp r0, #0
	beq _021E86E0
	mov r1, #0
	cmp r5, #0
	bls _021E86E0
_021E86D0:
	ldrb r0, [r4, r1]
	add r0, #0x32
	strb r0, [r4, r1]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blo _021E86D0
_021E86E0:
	mov r1, #0
	cmp r5, #0
	bls _021E86F6
_021E86E6:
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blo _021E86E6
_021E86F6:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E860C

	thumb_func_start ov96_021E86FC
ov96_021E86FC: ; 0x021E86FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	blo _021E870A
	bl GF_AssertFail
_021E870A:
	ldr r0, _021E8728 ; =0x00000D68
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E8716
	bl GF_AssertFail
_021E8716:
	bl sub_02031B10
	ldr r1, _021E8728 ; =0x00000D68
	ldr r2, [r5, r1]
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	pop {r3, r4, r5, pc}
	nop
_021E8728: .word 0x00000D68
	thumb_func_end ov96_021E86FC

	thumb_func_start ov96_021E872C
ov96_021E872C: ; 0x021E872C
	push {lr}
	sub sp, #0x24
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	lsl r0, r1, #0xc
	mov r1, #0
	str r0, [sp, #0x1c]
	lsl r0, r2, #0xc
	str r0, [sp, #0xc]
	lsl r0, r3, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r1, [sp, #0x14]
	add r0, sp, #0x18
	add r1, sp, #0xc
	add r2, sp, #0
	bl VEC_Subtract
	add r0, sp, #0
	bl VEC_Mag
	ldr r1, [sp, #0x2c]
	str r0, [r1]
	ldr r1, [sp, #0x28]
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _021E8768
	add sp, #0x24
	mov r0, #1
	pop {pc}
_021E8768:
	mov r0, #0
	add sp, #0x24
	pop {pc}
	.balign 4, 0
	thumb_func_end ov96_021E872C

