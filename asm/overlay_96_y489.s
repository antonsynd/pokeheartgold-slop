	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FB6C8
	.public ov96_021FB784
	.extern ov96_021FC698
	.extern ov96_0221C41C
	.extern ov96_0221C428

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
	thumb_func_start ov96_021FB6C8
ov96_021FB6C8: ; 0x021FB6C8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021FB780 ; =ov96_0221C428
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [r4, #0x28]
	cmp r1, #1
	beq _021FB77A
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _021FB77A
	cmp r1, #2
	bne _021FB6F0
	mov r0, #0x18
	b _021FB726
_021FB6F0:
	ldrb r0, [r4, #9]
	cmp r0, #4
	bhi _021FB720
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FB702: ; jump table
	.short _021FB70C - _021FB702 - 2 ; case 0
	.short _021FB710 - _021FB702 - 2 ; case 1
	.short _021FB714 - _021FB702 - 2 ; case 2
	.short _021FB718 - _021FB702 - 2 ; case 3
	.short _021FB71C - _021FB702 - 2 ; case 4
_021FB70C:
	mov r0, #8
	b _021FB726
_021FB710:
	mov r0, #6
	b _021FB726
_021FB714:
	mov r0, #6
	b _021FB726
_021FB718:
	mov r0, #6
	b _021FB726
_021FB71C:
	mov r0, #4
	b _021FB726
_021FB720:
	bl GF_AssertFail
	mov r0, #8
_021FB726:
	add r1, r4, #0
	add r1, #0x6a
	ldrh r1, [r1]
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0x6a
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x6a
	ldrh r1, [r1]
	cmp r1, r0
	blt _021FB77A
	add r0, sp, #0
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	bl LCRandom
	mov r1, #7
	bl _s32_div_f
	ldrb r0, [r4, #0x18]
	add r5, #0xdc
	lsl r2, r0, #2
	add r0, sp, #0xc
	ldr r2, [r0, r2]
	sub r0, r1, #3
	add r0, r2, r0
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x62
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	ldrb r1, [r4, #0x18]
	ldr r0, [r5]
	add r2, sp, #0
	bl ov96_021FC698
_021FB77A:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021FB780: .word ov96_0221C428
	thumb_func_end ov96_021FB6C8

	thumb_func_start ov96_021FB784
ov96_021FB784: ; 0x021FB784
	push {r4, r5, r6}
	sub sp, #0xc
	ldr r6, _021FB7C4 ; =ov96_0221C41C
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r5, sp, #0
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	mov r0, #0
_021FB79A:
	lsl r1, r0, #2
	ldr r1, [r3, r1]
	sub r1, #0x18
	cmp r1, r4
	bge _021FB7B2
	add r1, #0x30
	cmp r4, r1
	bge _021FB7B2
	cmp r2, #0x58
	ble _021FB7B2
	cmp r2, #0xa8
	blt _021FB7BE
_021FB7B2:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	blo _021FB79A
	mov r0, #3
_021FB7BE:
	add sp, #0xc
	pop {r4, r5, r6}
	bx lr
	.balign 4, 0
_021FB7C4: .word ov96_0221C41C
	thumb_func_end ov96_021FB784

