	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ECC7C
	.extern ov96_021ECC4C
	.extern ov96_021ECC58

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
	thumb_func_start ov96_021ECC7C
ov96_021ECC7C: ; 0x021ECC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r6, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r4, r6, #0
	add r5, r7, #0
_021ECC8C:
	ldr r1, [r5]
	ldr r0, _021ECD10 ; =0xF0FFFFFF
	and r1, r0
	lsl r0, r4, #0x1c
	lsr r0, r0, #4
	orr r0, r1
	str r0, [r5]
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	lsl r0, r0, #0x10
	ldr r2, [r5]
	ldr r1, _021ECD14 ; =0xFFFF0000
	lsr r0, r0, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _021ECD18 ; =0x0FFFFFFF
	str r1, [r5]
	and r0, r1
	ldr r1, [sp, #8]
	ldrb r1, [r1, r4]
	add r4, r4, #1
	lsl r1, r1, #0x1c
	orr r0, r1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021ECC8C
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	ldr r3, _021ECD1C ; =ov96_021ECC58
	add r0, r7, #0
	add r2, r1, #0
	bl MATH_QSort
	ldr r3, _021ECD20 ; =0xFF00FFFF
	mov r2, #0
	add r1, r7, #0
_021ECCDC:
	ldr r0, [r1]
	add r4, r0, #0
	lsl r0, r6, #0x18
	and r4, r3
	lsr r0, r0, #8
	orr r0, r4
	str r0, [r1]
	cmp r2, #3
	beq _021ECD04
	add r5, r2, #1
	lsl r4, r5, #2
	ldr r0, [r1]
	ldr r4, [r7, r4]
	lsl r0, r0, #0x10
	lsl r4, r4, #0x10
	lsr r0, r0, #0x10
	lsr r4, r4, #0x10
	cmp r0, r4
	beq _021ECD04
	add r6, r5, #0
_021ECD04:
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #4
	blt _021ECCDC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021ECD10: .word 0xF0FFFFFF
_021ECD14: .word 0xFFFF0000
_021ECD18: .word 0x0FFFFFFF
_021ECD1C: .word ov96_021ECC58
_021ECD20: .word 0xFF00FFFF
	thumb_func_end ov96_021ECC7C

