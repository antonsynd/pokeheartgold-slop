	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02207800
	.public ov96_02207818

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
	thumb_func_start ov96_02207800
ov96_02207800: ; 0x02207800
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb4
	ldrh r0, [r0]
	mov r1, #0x14
	add r0, r0, #1
	bl _s32_div_f
	add r4, #0xb4
	strh r1, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_02207800

	thumb_func_start ov96_02207818
ov96_02207818: ; 0x02207818
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	add r2, r5, #0
_02207820:
	ldr r0, [r2]
	cmp r0, #0
	bne _02207862
	mov r0, #0x14
	add r4, r1, #0
	mul r4, r0
	add r0, r5, #0
	add r0, #0xb4
	ldrh r1, [r0]
	add r0, r5, r4
	str r1, [r0, #0xc]
	add r1, r5, #0
	add r1, #0xb4
	ldrh r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x64
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	add r1, r5, #0
	add r1, #0xb4
	ldrh r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x66
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	add r0, r5, #0
	bl ov96_02207800
	mov r0, #1
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
_02207862:
	add r1, r1, #1
	add r2, #0x14
	cmp r1, #5
	blt _02207820
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_02207818

