	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FFC34
	.extern ov96_021EB52C
	.extern ov96_021EB588
	.extern ov96_0221C5CC
	.extern ov96_0221C5D8
	.extern ov96_0221C5F0

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
	thumb_func_start ov96_021FFC34
ov96_021FFC34: ; 0x021FFC34
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r3, _021FFD3C ; =ov96_0221C5CC
	add r4, r0, #0
	add r5, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021FFD40 ; =ov96_0221C5D8
	str r0, [r2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021FFD44 ; =ov96_0221C5F0
	str r0, [r2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r4, #0xe]
	cmp r0, r5
	bge _021FFC6C
	strh r5, [r4, #0xe]
	mov r0, #1
	b _021FFC6E
_021FFC6C:
	mov r0, #0
_021FFC6E:
	cmp r0, #0
	beq _021FFD0E
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	cmp r6, #0
	beq _021FFCB2
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4]
	add r1, r6, #1
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #4]
	add r1, r5, #1
	bl Sprite_SetAnimCtrlSeq
	b _021FFCCE
_021FFCB2:
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	add r1, r5, #1
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #4]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
_021FFCCE:
	ldr r0, [r4, #8]
	add r1, sp, #0x18
	bl ov96_021EB588
	ldr r0, [r4]
	add r1, sp, #0xc
	bl Sprite_SetMatrix
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl Sprite_SetMatrix
	mov r1, #1
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #4]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x3c
	strh r0, [r4, #0xc]
	ldr r0, _021FFD48 ; =0x0000088F
	bl PlaySE
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_021FFD0E:
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _021FFD36
	mov r2, #0
	strh r2, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #4]
	mov r1, #0
	bl Sprite_SetDrawFlag
_021FFD36:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021FFD3C: .word ov96_0221C5CC
_021FFD40: .word ov96_0221C5D8
_021FFD44: .word ov96_0221C5F0
_021FFD48: .word 0x0000088F
	thumb_func_end ov96_021FFC34

