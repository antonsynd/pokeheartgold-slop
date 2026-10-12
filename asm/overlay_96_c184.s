	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EAD88
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
	thumb_func_start ov96_021EAD88
ov96_021EAD88: ; 0x021EAD88
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
	add r7, r3, #0
	bl ov96_021E8BAC
	str r0, [sp]
	lsl r0, r4, #0xc
	str r0, [sp, #4]
	lsl r0, r6, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	add r0, r4, r0
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	add r0, r6, r0
	str r0, [r5, #0x24]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EADF0
	add r4, sp, #4
	ldmia r4!, {r0, r1}
	add r3, sp, #0x10
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x14]
	lsl r3, r1, #1
	ldr r1, [r5, #0xc]
	sub r1, r3, r1
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	add r1, r2, #0
	bl Sprite_SetMatrix
_021EADF0:
	cmp r7, #0
	beq _021EAE2A
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EAE2A
	add r4, sp, #4
	ldmia r4!, {r0, r1}
	add r3, sp, #0x10
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x14]
	lsl r3, r1, #1
	ldr r1, [r5, #0x10]
	sub r1, r3, r1
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	add r1, r2, #0
	bl Sprite_SetMatrix
_021EAE2A:
	ldr r0, [r5]
	bl ov96_021E92AC
	cmp r0, #0
	beq _021EAE3E
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
_021EAE3E:
	ldr r0, [sp]
	add r1, sp, #4
	bl Sprite_SetMatrix
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAD88

