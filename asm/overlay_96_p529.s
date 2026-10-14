	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F4DAC
	.extern ov96_021EB5B8

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
	thumb_func_start ov96_021F4DAC
ov96_021F4DAC: ; 0x021F4DAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r5, #5
	bhi _021F4DE0
	ldr r7, [r4]
	ldr r0, [r4, #0xc]
	ldr r6, [r4, #4]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x10]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r4, r6, r0
	b _021F4E3C
_021F4DE0:
	bls _021F4E12
	cmp r5, #0x2d
	bhi _021F4E12
	sub r0, r5, #5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r7, [r4, #0xc]
	ldr r0, [r4, #0x18]
	ldr r6, [r4, #0x10]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x28
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x1c]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x28
	bl _s32_div_f
	add r4, r6, r0
	b _021F4E3C
_021F4E12:
	sub r5, #0x2d
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	ldr r7, [r4, #0x18]
	ldr r0, [r4, #0x24]
	ldr r6, [r4, #0x1c]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x28]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r4, r6, r0
_021F4E3C:
	ldr r0, [sp]
	bl ov96_021EB5B8
	mov r1, #2
	lsl r1, r1, #0x14
	add r1, r4, r1
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	add r1, sp, #4
	str r7, [sp, #4]
	bl Sprite_SetMatrix
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4DAC

