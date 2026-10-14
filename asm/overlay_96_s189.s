	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EA8A8
	.extern ov96_021E8B1C
	.extern ov96_021E9CF4
	.extern ov96_021EAA24
	.extern ov96_021EAA88

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
	thumb_func_start ov96_021EA8A8
ov96_021EA8A8: ; 0x021EA8A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r6, #4]
	add r7, r3, #0
	str r2, [sp, #0xc]
	cmp r0, #0
	bgt _021EA8C4
	b _021EA9C8
_021EA8C4:
	add r4, r2, #0
	add r5, r6, #0
	str r7, [sp, #0x10]
_021EA8CA:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _021EA8D4
	mov r0, #0x20
	b _021EA8D6
_021EA8D4:
	mov r0, #0x10
_021EA8D6:
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _021EA8EC
	cmp r0, #2
	beq _021EA8F2
	cmp r0, #3
	beq _021EA8F8
	b _021EA8FE
_021EA8EC:
	mov r0, #3
	str r0, [r5, #0x2c]
	b _021EA906
_021EA8F2:
	mov r0, #4
	str r0, [r5, #0x2c]
	b _021EA906
_021EA8F8:
	mov r0, #5
	str r0, [r5, #0x2c]
	b _021EA906
_021EA8FE:
	bl GF_AssertFail
	mov r0, #3
	str r0, [r5, #0x2c]
_021EA906:
	ldr r0, [r6, #0x18]
	mov r1, #2
	bl ov96_021E9CF4
	cmp r0, #0
	beq _021EA956
	ldr r1, [r7, #4]
	ldr r2, [r7, #0x10]
	add r0, r6, #0
	mov r3, #0x16
	bl ov96_021EAA88
	str r0, [r5, #0x20]
	ldrh r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r5, #0x20]
	beq _021EA930
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	b _021EA936
_021EA930:
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
_021EA936:
	ldrh r1, [r4]
	ldr r0, _021EA9F8 ; =0x0000FFCE
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021EA952
	mov r0, #1
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x20]
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _021EA956
_021EA952:
	mov r0, #0
	str r0, [r5, #0x5c]
_021EA956:
	ldr r0, [r6, #0x18]
	mov r1, #4
	bl ov96_021E9CF4
	cmp r0, #0
	beq _021EA9AE
	ldr r1, [r7, #4]
	ldr r2, [r7, #0x10]
	add r0, r6, #0
	mov r3, #0x15
	bl ov96_021EAA88
	str r0, [r5, #0x24]
	ldr r0, [r4, #8]
	cmp r0, #4
	blt _021EA97A
	bl GF_AssertFail
_021EA97A:
	ldr r0, [r5, #0x24]
	ldr r1, [r4, #8]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _021EA994
	cmp r0, #2
	beq _021EA99A
	cmp r0, #3
	beq _021EA9A0
	b _021EA9A6
_021EA994:
	mov r0, #3
	str r0, [r5, #0x28]
	b _021EA9AE
_021EA99A:
	mov r0, #4
	str r0, [r5, #0x28]
	b _021EA9AE
_021EA9A0:
	mov r0, #5
	str r0, [r5, #0x28]
	b _021EA9AE
_021EA9A6:
	bl GF_AssertFail
	mov r0, #3
	str r0, [r5, #0x28]
_021EA9AE:
	mov r0, #0xc
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x10]
	ldr r1, [r6, #4]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x44
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _021EA8CA
_021EA9C8:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bgt _021EA9D2
	mov r0, #1
	str r0, [sp, #0x14]
_021EA9D2:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	sub r0, r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	add r3, r7, #0
	bl ov96_021E8B1C
	ldr r0, _021EA9FC ; =ov96_021EAA24
	ldr r2, [sp, #0x14]
	add r1, r6, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021EA9F8: .word 0x0000FFCE
_021EA9FC: .word ov96_021EAA24
	thumb_func_end ov96_021EA8A8

