	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EAF94
	.extern ov96_021E8BAC
	.extern ov96_021E92AC

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
	thumb_func_start ov96_021EAF94
ov96_021EAF94: ; 0x021EAF94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5]
	add r6, r2, #0
	bl ov96_021E8BAC
	add r2, sp, #0x10
	add r3, sp, #4
	str r0, [sp]
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	lsl r0, r4, #0xc
	str r0, [sp, #0x10]
	lsl r0, r6, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EAFD2
	add r1, r7, #0
	bl Sprite_SetMatrix
_021EAFD2:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EAFDE
	add r1, sp, #0x10
	bl Sprite_SetMatrix
_021EAFDE:
	ldr r0, [r5, #0x10]
	add r1, r6, r0
	ldr r0, [r5, #0x18]
	lsl r0, r0, #1
	sub r0, r1, r0
	ldr r1, [r5, #0x14]
	str r4, [r5, #0x20]
	sub r2, r4, r1
	ldr r1, [r5, #0x18]
	add r1, r0, r1
	str r1, [r5, #0x24]
	lsl r1, r2, #0xc
	lsl r0, r0, #0xc
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	bl ov96_021E92AC
	cmp r0, #0
	beq _021EB010
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
_021EB010:
	ldr r0, [sp]
	add r1, sp, #4
	bl Sprite_SetMatrix
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EAF94

