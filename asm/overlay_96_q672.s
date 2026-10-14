	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FA83C
	.extern ov96_021EAB94
	.extern ov96_021EAC0C
	.extern ov96_021EAD88
	.extern ov96_021EAE4C
	.extern ov96_021EAE9C
	.extern ov96_021EAED4
	.extern ov96_021EB5B8
	.extern ov96_021FB8B4
	.extern ov96_021FB8FC
	.extern ov96_0221C55C
	.extern ov96_0221C589
	.extern ov96_0221DC28
	.extern ov96_0221DC2C

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
	thumb_func_start ov96_021FA83C
ov96_021FA83C: ; 0x021FA83C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _021FA8F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FA856: ; jump table
	.short _021FAA64 - _021FA856 - 2 ; case 0
	.short _021FA85E - _021FA856 - 2 ; case 1
	.short _021FA9AE - _021FA856 - 2 ; case 2
	.short _021FAA1E - _021FA856 - 2 ; case 3
_021FA85E:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _021FA874
	cmp r0, #2
	beq _021FA8D8
	cmp r0, #3
	beq _021FA912
	b _021FA9A8
_021FA874:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	ldr r3, _021FAAC8 ; =ov96_0221C55C
	lsl r1, r0, #3
	add r5, r0, r1
	ldrb r1, [r4, #0xc]
	sub r2, r1, #1
	add r1, r3, r5
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x14]
	sub r5, r2, r1
	cmp r0, #0
	bne _021FA8A4
	add r0, r4, #0
	mov r1, #0
	bl ov96_021FB8FC
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	bl ov96_021EAE4C
	b _021FA8B6
_021FA8A4:
	add r0, r4, #0
	bl ov96_021FB8B4
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	mov r3, #0
	bl ov96_021EAD88
_021FA8B6:
	ldrb r1, [r4, #0xc]
	ldrh r0, [r4, #0x38]
	cmp r1, r0
	blt _021FA8F2
	mov r0, #2
	str r0, [r4, #8]
	mov r1, #0
	add r0, r4, #0
	strb r1, [r4, #0xc]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FA8F2
	ldr r0, [r4]
	bl ov96_021EAB94
	b _021FAA6A
_021FA8D8:
	ldrb r1, [r4, #0xc]
	ldrh r0, [r4, #0x3a]
	cmp r1, r0
	blt _021FA8F2
	mov r0, #3
	str r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #0xc]
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA8F4
_021FA8F2:
	b _021FAA6A
_021FA8F4:
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EAB94
	ldr r6, _021FAACC ; =ov96_0221DC2C
	ldr r0, _021FAAD0 ; =0x000008AA
	ldrb r1, [r6, r5]
	bl sub_0200606C
	ldr r1, _021FAAD4 ; =ov96_0221DC28
	ldrb r0, [r6, r5]
	ldrsb r1, [r1, r5]
	bl sub_020061D0
	b _021FAA6A
_021FA912:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	ldr r3, _021FAAD8 ; =ov96_0221C589
	lsl r1, r0, #3
	add r6, r0, r1
	ldrb r1, [r4, #0xc]
	sub r2, r1, #1
	add r1, r3, r6
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x14]
	sub r6, r2, r1
	cmp r0, #0
	bne _021FA942
	add r0, r4, #0
	mov r1, #1
	bl ov96_021FB8FC
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	bl ov96_021EAE4C
	b _021FA954
_021FA942:
	add r0, r4, #0
	bl ov96_021FB8B4
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	mov r3, #0
	bl ov96_021EAD88
_021FA954:
	ldrh r0, [r4, #0x38]
	ldrb r1, [r4, #0xc]
	cmp r1, r0
	blt _021FA99C
	mov r3, #0
	str r3, [r4, #4]
	str r3, [r4, #8]
	strb r3, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov96_021EAD88
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA98C
	ldr r6, _021FAACC ; =ov96_0221DC2C
	ldr r0, _021FAADC ; =0x000008A8
	ldrb r1, [r6, r5]
	bl sub_0200606C
	ldr r1, _021FAAD4 ; =ov96_0221DC28
	ldrb r0, [r6, r5]
	ldrsb r1, [r1, r5]
	bl sub_020061D0
_021FA98C:
	add r0, r4, #0
	mov r1, #0
	bl ov96_021FB8B4
	mov r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
	b _021FAA6A
_021FA99C:
	sub r0, r0, #5
	cmp r1, r0
	bge _021FAA6A
	mov r0, #0
	strh r0, [r4, #0x3c]
	b _021FAA6A
_021FA9A8:
	bl GF_AssertFail
	b _021FAA6A
_021FA9AE:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _021FA9F4
	ldrb r0, [r4, #0xe]
	cmp r0, #4
	bhi _021FA9EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FA9CC: ; jump table
	.short _021FA9EC - _021FA9CC - 2 ; case 0
	.short _021FA9D6 - _021FA9CC - 2 ; case 1
	.short _021FA9E2 - _021FA9CC - 2 ; case 2
	.short _021FA9DC - _021FA9CC - 2 ; case 3
	.short _021FA9E8 - _021FA9CC - 2 ; case 4
_021FA9D6:
	mov r0, #3
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9DC:
	mov r0, #2
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9E2:
	mov r0, #4
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9E8:
	mov r0, #1
	strb r0, [r4, #0xe]
_021FA9EC:
	ldrb r1, [r4, #0xe]
	ldr r0, [r4]
	bl ov96_021EAC0C
_021FA9F4:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	cmp r0, #0x1e
	bls _021FAA6A
	mov r0, #0
	strb r0, [r4, #0xc]
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EAC0C
	b _021FAA6A
_021FAA1E:
	ldr r1, [r4, #0x18]
	mov r0, #0
	cmp r1, #0x78
	bge _021FAA36
	add r0, r1, #1
	mov r2, #1
	cmp r0, #0x78
	ble _021FAA32
	add r2, r1, #0
	sub r2, #0x78
_021FAA32:
	mov r0, #1
	b _021FAA46
_021FAA36:
	ble _021FAA46
	sub r2, r0, #1
	sub r0, r1, #1
	cmp r0, #0x78
	bge _021FAA44
	mov r0, #0x78
	sub r2, r0, r1
_021FAA44:
	mov r0, #1
_021FAA46:
	cmp r0, #0
	beq _021FAA6A
	ldr r0, [r4, #0x18]
	mov r3, #1
	add r0, r0, r2
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r0, r0, r2
	str r0, [r4, #0x1c]
	str r3, [sp]
	ldr r0, [r4]
	bl ov96_021EAED4
	b _021FAA6A
_021FAA64:
	mov r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
_021FAA6A:
	ldr r0, [r4, #0x20]
	bl ov96_021EB5B8
	add r5, r0, #0
	bl Sprite_GetMatrixPtr
	add r6, r0, #0
	add r3, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl Sprite_SetMatrix
	ldr r0, [r4]
	add r1, sp, #8
	add r2, sp, #4
	bl ov96_021EAE9C
	ldr r0, [r4, #0x28]
	bl ov96_021EB5B8
	add r4, r0, #0
	bl Sprite_GetMatrixPtr
	add r5, r0, #0
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl Sprite_SetMatrix
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FAAC8: .word ov96_0221C55C
_021FAACC: .word ov96_0221DC2C
_021FAAD0: .word 0x000008AA
_021FAAD4: .word ov96_0221DC28
_021FAAD8: .word ov96_0221C589
_021FAADC: .word 0x000008A8
	thumb_func_end ov96_021FA83C

