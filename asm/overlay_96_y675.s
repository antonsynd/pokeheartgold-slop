	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220AE40
	.public ov96_0220AED4
	.extern ov96_0220AFF8
	.extern ov96_0220B068
	.extern ov96_0220D13C

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
	thumb_func_start ov96_0220AE40
ov96_0220AE40: ; 0x0220AE40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #0
	add r7, r2, #0
	add r5, r3, #0
	cmp r6, #0
	bne _0220AE54
	bl GF_AssertFail
_0220AE54:
	cmp r7, #0
	bne _0220AE5C
	bl GF_AssertFail
_0220AE5C:
	add r0, r4, #0
	mov r1, #0x14
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, _0220AED0 ; =0xF80FFFFF
	add r3, r2, #0
	and r1, r0
	lsl r0, r5, #0x19
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r4, #0x10]
	lsl r1, r5, #1
	mov r0, #0x16
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	mov r0, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	str r5, [sp, #4]
	bl ov96_0220D13C
	mov r1, #0
	str r0, [r4, #4]
	bl ManagedSprite_SetDrawFlag
	mov r0, #1
	str r0, [sp]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x78
	mov r3, #0
	bl ov96_0220D13C
	str r0, [r4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220AED0: .word 0xF80FFFFF
	thumb_func_end ov96_0220AE40

	thumb_func_start ov96_0220AED4
ov96_0220AED4: ; 0x0220AED4
	push {r4, lr}
	add r4, r0, #0
	bne _0220AEDE
	bl GF_AssertFail
_0220AEDE:
	mov r0, #0x64
	strh r0, [r4, #8]
	ldr r1, [r4, #0x10]
	ldr r0, _0220AF28 ; =0xFFFFF00F
	and r1, r0
	ldr r0, _0220AF2C ; =0xFFF00FFF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	orr r1, r0
	lsl r0, r0, #0xf
	orr r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldr r0, [r4]
	mov r1, #0x78
	mov r2, #0
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	bl ov96_0220AFF8
	add r0, r4, #0
	bl ov96_0220B068
	ldr r0, [r4, #4]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	.balign 4, 0
_0220AF28: .word 0xFFFFF00F
_0220AF2C: .word 0xFFF00FFF
	thumb_func_end ov96_0220AED4

