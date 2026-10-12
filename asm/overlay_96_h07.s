	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E61D8
	.extern ov96_021EA214
	.extern ov96_021EA4D4
	.extern ov96_021EA584

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
	thumb_func_start ov96_021E61D8
ov96_021E61D8: ; 0x021E61D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r2, #0
	add r7, r3, #0
	add r4, r1, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #1
	bl ov96_021EA214
	ldr r1, _021E6280 ; =0x00000708
	mov r3, #0xa1
	str r0, [r5, r1]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl ov96_021EA4D4
	mov r1, #0x71
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #0xa1
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl ov96_021EA584
	ldr r1, _021E6284 ; =0x00000714
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x60
	lsl r0, r0, #0xc
	sub r1, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	add r1, sp, #0x10
	bl Sprite_SetMatrix
	ldr r0, _021E6288 ; =0x0000070E
	mov r1, #0
	strh r4, [r5, r0]
	str r1, [sp, #0xc]
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [sp, #4]
	ldrh r1, [r5, r0]
	add r0, r0, #6
	add r1, #0x48
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldr r0, [r5, r0]
	add r1, sp, #4
	bl Sprite_SetMatrix
	ldr r0, _021E628C ; =0x0000070D
	mov r1, #0
	strb r1, [r5, r0]
	add r4, #0x82
	lsl r1, r4, #0xc
	str r1, [sp, #0x14]
	add r0, r0, #3
	ldr r0, [r5, r0]
	add r1, sp, #0x10
	bl Sprite_SetMatrix
	ldr r0, _021E6280 ; =0x00000708
	add r0, r5, r0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6280: .word 0x00000708
_021E6284: .word 0x00000714
_021E6288: .word 0x0000070E
_021E628C: .word 0x0000070D
	thumb_func_end ov96_021E61D8

