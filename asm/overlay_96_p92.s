	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E8484
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern ov96_021E679C
	.extern ov96_021E860C

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

