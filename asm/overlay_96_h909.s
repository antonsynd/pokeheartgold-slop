	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220B374
	.extern ov96_021E5F24
	.extern ov96_0220C490
	.extern ov96_0220C54C
	.extern ov96_0220D13C
	.extern ov96_0220D1A0
	.extern ov96_0220D200

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
	thumb_func_start ov96_0220B374
ov96_0220B374: ; 0x0220B374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #8]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #0x48
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
	str r7, [r4]
	str r5, [r4, #4]
	ldr r0, [sp, #8]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x44]
	mov r0, #0xff
	bic r1, r0
	str r1, [r4, #0x44]
	add r0, r4, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, #0x34
	bl ov96_0220D200
	add r0, r4, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, #0x10
	bl ov96_0220C490
	add r1, sp, #0x14
	mov r3, #1
	ldr r0, [r4, #0x24]
	add r1, #2
	add r2, sp, #0x14
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r3, sp, #0x10
	mov r7, #4
	ldrsh r0, [r3, r7]
	mov r2, #6
	add r1, r6, #0
	sub r0, #0x18
	strh r0, [r3, #4]
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r7]
	add r0, r5, #0
	bl ov96_0220D1A0
	str r0, [r4, #0x2c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r1, sp, #0x14
	ldr r0, [r4, #0x28]
	add r1, #2
	add r2, sp, #0x14
	lsl r3, r7, #0x12
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r3, sp, #0x10
	ldrsh r0, [r3, r7]
	mov r2, #6
	add r1, r6, #0
	sub r0, #0x18
	strh r0, [r3, #4]
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r7]
	add r0, r5, #0
	bl ov96_0220D1A0
	str r0, [r4, #0x30]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r1, sp, #0x10
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #0x10
	bl ManagedSprite_GetPositionXY
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	add r7, sp, #0x10
	mov r2, #2
	mov r3, #0
	ldrsh r2, [r7, r2]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_0220D13C
	mov r1, #0
	str r0, [r4, #0x14]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r2, #2
	mov r3, #0
	ldrsh r2, [r7, r2]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_0220D13C
	mov r1, #0
	str r0, [r4, #0x1c]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r2, #2
	mov r3, #0
	ldrsh r2, [r7, r2]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_0220D13C
	mov r1, #0
	str r0, [r4, #0x20]
	bl ManagedSprite_SetDrawFlag
	add r3, r7, #0
	mov r7, #0
	ldrsh r0, [r3, r7]
	mov r2, #2
	add r1, r6, #0
	sub r0, #0x18
	strh r0, [r3]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0x19
	str r0, [sp, #4]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r7]
	add r0, r5, #0
	bl ov96_0220D13C
	add r1, r7, #0
	str r0, [r4, #0x18]
	bl ManagedSprite_SetDrawFlag
	mov r0, #1
	str r0, [sp]
	add r1, r7, #0
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r3, r1, #0
	bl ov96_0220C54C
	add r0, r7, #0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #5
	mov r3, #2
	bl ov96_0220C54C
	add r0, r7, #0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #6
	mov r3, #1
	bl ov96_0220C54C
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220B374

