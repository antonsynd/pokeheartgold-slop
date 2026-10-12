	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02219030
	.public ov96_0221910C
	.extern ov96_021E8228
	.extern ov96_02218578

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
	thumb_func_start ov96_02219030
ov96_02219030: ; 0x02219030
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0x3c
	add r0, #0x5b
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x58
	strb r2, [r0]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _02219084
	ldr r0, [r4, #0x60]
	lsl r0, r0, #0x14
	lsr r3, r0, #0x14
	sub r3, #0xa
	bpl _02219056
	add r3, r2, #0
_02219056:
	ldr r1, [r4, #0x60]
	ldr r0, _02219108 ; =0xFFFFF000
	and r1, r0
	lsr r0, r0, #0x14
	and r0, r3
	orr r0, r1
	str r0, [r4, #0x60]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #8
	bl ov96_021E8228
	b _022190C2
_02219084:
	ldr r0, [r1, #0x60]
	lsl r0, r0, #0x14
	lsr r3, r0, #0x14
	add r3, #0xa
	cmp r3, #0xc8
	ble _02219092
	mov r3, #0xc8
_02219092:
	ldr r2, [r1, #0x60]
	ldr r0, _02219108 ; =0xFFFFF000
	and r2, r0
	lsr r0, r0, #0x14
	and r0, r3
	orr r0, r2
	str r0, [r1, #0x60]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r1, #0x60]
	ldr r0, [r1]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #3
	bl ov96_021E8228
	mov r0, #0
	str r0, [r4, #0x10]
_022190C2:
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #5
	bl ov96_021E8228
	mov r3, #1
	str r3, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021E8228
	add r0, r4, #0
	mov r1, #3
	bl ov96_02218578
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02219108: .word 0xFFFFF000
	thumb_func_end ov96_02219030

	thumb_func_start ov96_0221910C
ov96_0221910C: ; 0x0221910C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	beq _0221911E
	bl GF_AssertFail
_0221911E:
	ldr r0, [r4, #0x60]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _0221912A
	bl GF_AssertFail
_0221912A:
	ldr r1, [r4, #0x60]
	mov r0, #1
	add r2, r1, #0
	lsl r0, r0, #0x1a
	orr r2, r0
	ldr r1, _02219170 ; =0xFCFFFFFF
	add r3, r4, #0
	and r1, r2
	lsr r0, r0, #2
	orr r0, r1
	add r2, r4, #0
	add r3, #0x2c
	str r0, [r4, #0x60]
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r3, #7
	str r0, [r2]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x60]
	ldr r0, [r4]
	lsl r1, r2, #0xa
	lsl r2, r2, #8
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021E8228
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02219170: .word 0xFCFFFFFF
	thumb_func_end ov96_0221910C

