	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ECB38
	.public ov96_021ECBB8
	.extern PokeathlonCourse_GetParticipantData
	.extern ov96_021E8424
	.extern ov96_021EEA88
	.extern ov96_021EEB74
	.extern ov96_021EEDCC

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
	thumb_func_start ov96_021ECB38
ov96_021ECB38: ; 0x021ECB38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	add r1, r5, #0
	add r7, r3, #0
	bl PokeathlonCourse_GetParticipantData
	ldr r0, [r0]
	cmp r0, #0
	ble _021ECB56
	mov r6, #1
	b _021ECB58
_021ECB56:
	mov r6, #0
_021ECB58:
	cmp r7, #1
	beq _021ECB62
	cmp r7, #2
	beq _021ECB66
	b _021ECB72
_021ECB62:
	mov r4, #0
	b _021ECB76
_021ECB66:
	cmp r6, #0
	beq _021ECB6E
	mov r4, #0xb
	b _021ECB76
_021ECB6E:
	mov r4, #0x1b
	b _021ECB76
_021ECB72:
	bl GF_AssertFail
_021ECB76:
	cmp r6, #0
	beq _021ECBA6
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl PokeathlonCourse_GetParticipantData
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov96_021E8424
	bl ov96_021EEDCC
	add r1, r0, #0
	ldr r0, [sp]
	lsl r2, r5, #2
	ldr r0, [r0, r2]
	lsl r2, r4, #0x18
	ldr r3, [sp, #0x20]
	lsr r2, r2, #0x18
	bl ov96_021EEA88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021ECBA6:
	lsl r2, r5, #0x18
	ldr r0, [sp]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl ov96_021EEB74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ECB38

	thumb_func_start ov96_021ECBB8
ov96_021ECBB8: ; 0x021ECBB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x70
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x70
	str r0, [sp]
	bl MI_CpuFill8
	ldr r3, [sp]
	mov r1, #0
	mov r4, #5
_021ECBD2:
	lsl r0, r4, #2
	mov r2, #0
	add r5, r7, r0
	add r6, r3, #0
_021ECBDA:
	ldr r0, [r5]
	add r2, r2, #1
	add r5, r5, #4
	stmia r6!, {r0}
	cmp r2, #4
	blt _021ECBDA
	add r1, r1, #1
	add r3, #0x1c
	add r4, r4, #4
	cmp r1, #4
	blt _021ECBD2
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ECBB8

