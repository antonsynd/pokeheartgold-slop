	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F6B50
	.public ov96_021F6BB0

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
	thumb_func_start ov96_021F6B50
ov96_021F6B50: ; 0x021F6B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	neg r0, r1
	str r0, [sp, #4]
	mov r0, #0x7f
	str r2, [sp]
	sub r4, r0, r7
	mov r6, #0
	cmp r7, #0
	ble _021F6B82
	add r5, r2, #0
_021F6B68:
	add r0, r6, #1
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	mul r0, r1
	add r1, r7, #1
	bl _s32_div_f
	neg r0, r0
	add r6, r6, #1
	stmia r5!, {r0}
	cmp r6, r7
	blt _021F6B68
_021F6B82:
	mov r5, #0
	cmp r4, #0
	ble _021F6BAC
	add r6, r7, #1
_021F6B8A:
	sub r0, r4, r5
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	mul r0, r1
	add r1, r4, #1
	bl _s32_div_f
	add r1, r6, r5
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, [sp]
	neg r0, r0
	add r5, r5, #1
	str r0, [r1, r2]
	cmp r5, r4
	blt _021F6B8A
_021F6BAC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F6B50

	thumb_func_start ov96_021F6BB0
ov96_021F6BB0: ; 0x021F6BB0
	push {r4, r5}
	mov r1, #0x1a
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r3, _021F6BE0 ; =0x00000FAC
	mov r4, #0xe
	add r0, r0, r3
	mov r1, #0
	add r3, r2, #0
	lsl r4, r4, #8
_021F6BC4:
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _021F6BD2
	ldr r5, [r3, r4]
	lsl r5, r5, #2
	ldr r5, [r2, r5]
	str r5, [r0, #8]
_021F6BD2:
	add r1, r1, #1
	add r0, #0x1c
	add r3, r3, #4
	cmp r1, #3
	blt _021F6BC4
	pop {r4, r5}
	bx lr
	.balign 4, 0
_021F6BE0: .word 0x00000FAC
	thumb_func_end ov96_021F6BB0

