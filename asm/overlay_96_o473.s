	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F31F0
	.extern ov96_021EB52C
	.extern ov96_021EB5B8
	.extern ov96_0221DBC8

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
	thumb_func_start ov96_021F31F0
ov96_021F31F0: ; 0x021F31F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r5, r0, #0
	ldr r0, [sp]
	mov r7, #0
	lsl r1, r0, #2
	ldr r0, _021F3294 ; =ov96_0221DBC8
	ldr r4, [r0, r1]
_021F3202:
	ldr r0, [r4]
	cmp r0, #0
	beq _021F3288
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	lsl r0, r0, #4
	add r6, r5, r0
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021F321C
	bl GF_AssertFail
_021F321C:
	mov r0, #1
	str r0, [r6]
	ldr r0, [sp]
	str r0, [r6, #8]
	add r0, r5, #0
	str r4, [r6, #4]
	add r0, #0x80
	ldr r0, [r0]
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl ov96_021EB5B8
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, [r4]
	add r0, r6, #0
	sub r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r0, [r4, #4]
	add r1, sp, #4
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldrh r0, [r4, #6]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r6, #0
	bl Sprite_SetMatrix
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0x80
	str r1, [r0]
_021F3288:
	add r7, r7, #1
	add r4, #8
	cmp r7, #4
	blt _021F3202
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3294: .word ov96_0221DBC8
	thumb_func_end ov96_021F31F0

