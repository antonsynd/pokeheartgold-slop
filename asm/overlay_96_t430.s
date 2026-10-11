	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F9CC4
	.extern PokeathlonCourse_GetField5F0_AtIndex
	.extern PokeathlonCourse_GetGraphicsSystem
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E93B4
	.extern ov96_021E9510
	.extern ov96_021E952C
	.extern ov96_021E9570
	.extern ov96_021E966C
	.extern ov96_0221A56C

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
	thumb_func_start ov96_021F9CC4
ov96_021F9CC4: ; 0x021F9CC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r0, r6, #0
	bl PokeathlonCourse_GetGraphicsSystem
	str r0, [sp, #0x1c]
	bl ov96_021E9510
	mov r5, #0
_021F9CDC:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl PokeathlonCourse_GetField5F0_AtIndex
	add r4, r0, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x1e
	bl _s32_div_f
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, _021F9D54 ; =0x00000123
	lsl r3, r4, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ov96_021E966C
	add r5, r5, #1
	cmp r5, #4
	blt _021F9CDC
	ldr r0, [sp, #0x1c]
	mov r1, #2
	bl ov96_021E93B4
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl ov96_0221A56C
	ldr r0, [sp, #0x1c]
	bl ov96_021E952C
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl ov96_021E9570
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F9D54: .word 0x00000123
	thumb_func_end ov96_021F9CC4

