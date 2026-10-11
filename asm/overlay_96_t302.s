	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F2E4C
	.public ov96_021F2E80
	.extern ov96_021E60D8
	.extern ov96_021EAED4
	.extern ov96_0221DB5C

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
	thumb_func_start ov96_021F2E4C
ov96_021F2E4C: ; 0x021F2E4C
	push {r4, lr}
	mov r2, #0x2c
	ldrsh r4, [r1, r2]
	ldrh r2, [r1, #0x2e]
	lsl r3, r2, #2
	ldr r2, _021F2E7C ; =ov96_0221DB5C
	ldr r2, [r2, r3]
	add r2, r4, r2
	strh r2, [r1, #0x2c]
	ldrh r2, [r1, #0x2e]
	add r2, r2, #1
	strh r2, [r1, #0x2e]
	ldrh r2, [r1, #0x2e]
	cmp r2, #5
	blo _021F2E7A
	mov r2, #0
	strh r2, [r1, #0x2c]
	str r2, [r1, #0x14]
	strh r2, [r1, #0x2e]
	mov r2, #0xc
	str r2, [r1, #0x28]
	bl SysTask_Destroy
_021F2E7A:
	pop {r4, pc}
	.balign 4, 0
_021F2E7C: .word ov96_0221DB5C
	thumb_func_end ov96_021F2E4C

	thumb_func_start ov96_021F2E80
ov96_021F2E80: ; 0x021F2E80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r3, #0
	add r7, r2, #0
	cmp r0, r4
	bne _021F2EC4
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov96_021E60D8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021F2EC4
	mov r1, #0
	str r1, [sp]
	mov r2, #0x2c
	ldrsh r2, [r5, r2]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	bl ov96_021EAED4
_021F2EC4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F2E80

