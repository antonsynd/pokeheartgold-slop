	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EAED4
	.public ov96_021EAF60
	.extern ov96_021E8BAC
	.extern ov96_021E8BF4
	.extern ov96_021EAC0C

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
	thumb_func_start ov96_021EAED4
ov96_021EAED4: ; 0x021EAED4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r3, #0
	add r0, r0, r1
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x24]
	add r0, r0, r2
	str r0, [r5, #0x24]
	lsl r0, r1, #0xc
	str r0, [sp, #0xc]
	lsl r0, r2, #0xc
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5]
	bl ov96_021E8BAC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_021EAC0C
	add r0, r4, #0
	bl Sprite_GetMatrixPtr
	add r1, r0, #0
	add r0, sp, #0xc
	add r2, sp, #0
	bl VEC_Add
	add r0, r4, #0
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EAF38
	bl Sprite_GetMatrixPtr
	add r1, r0, #0
	add r0, sp, #0xc
	add r2, sp, #0
	bl VEC_Add
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl Sprite_SetMatrix
_021EAF38:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021EAF5A
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EAF5A
	bl Sprite_GetMatrixPtr
	add r1, r0, #0
	add r0, sp, #0xc
	add r2, sp, #0
	bl VEC_Add
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl Sprite_SetMatrix
_021EAF5A:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAED4

	thumb_func_start ov96_021EAF60
ov96_021EAF60: ; 0x021EAF60
	push {r3, lr}
	ldr r0, [r0, #0x14]
	bl ov96_021E8BF4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAF60

