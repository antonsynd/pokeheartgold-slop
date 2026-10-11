	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220B528
	.public ov96_0220B634
	.public ov96_0220B6EC
	.extern ov96_021E5F24
	.extern ov96_021E8228
	.extern ov96_0220B940
	.extern ov96_0220B95C
	.extern ov96_0220B988
	.extern ov96_0220B9A8
	.extern ov96_0220BD38
	.extern ov96_0220C578
	.extern ov96_0220C680
	.extern ov96_0220C714
	.extern ov96_0220D2AC
	.extern ov96_0220D33C
	.extern ov96_0221E5A4

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
	thumb_func_start ov96_0220B528
ov96_0220B528: ; 0x0220B528
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _0220B538
	bl GF_AssertFail
_0220B538:
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _0220B578
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220B54E: ; jump table
	.short _0220B556 - _0220B54E - 2 ; case 0
	.short _0220B560 - _0220B54E - 2 ; case 1
	.short _0220B568 - _0220B54E - 2 ; case 2
	.short _0220B570 - _0220B54E - 2 ; case 3
_0220B556:
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_0220B940
	b _0220B57C
_0220B560:
	add r0, r4, #0
	bl ov96_0220B95C
	b _0220B57C
_0220B568:
	add r0, r4, #0
	bl ov96_0220B988
	b _0220B57C
_0220B570:
	add r0, r4, #0
	bl ov96_0220B9A8
	b _0220B57C
_0220B578:
	bl GF_AssertFail
_0220B57C:
	ldr r0, _0220B62C ; =ov96_0221E5A4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	cmp r5, #0
	bne _0220B58E
	add r0, r4, #0
	bl ov96_0220C680
_0220B58E:
	add r0, r4, #0
	bl ov96_0220BD38
	ldr r2, [r4, #0x40]
	add r0, r4, #0
	lsl r1, r2, #0xb
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x18
	add r0, #0x34
	lsr r1, r1, #0x15
	lsr r2, r2, #0x18
	bl ov96_0220D2AC
	ldr r1, [r4, #0x40]
	ldr r0, _0220B630 ; =0xFFE003FF
	and r0, r1
	lsl r1, r1, #0xb
	lsr r1, r1, #0x15
	add r1, r1, #1
	lsl r1, r1, #0x15
	lsr r1, r1, #0xb
	orr r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x10]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	beq _0220B628
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	bl Sprite_GetCellAnim
	add r6, r0, #0
	bl NNS_G2dGetAnimCtrlCurrentElement
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _0220B5E2
	bl GF_AssertFail
_0220B5E2:
	add r1, sp, #0
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #4
	add r3, sp, #0
	mov r1, #2
	ldrsh r2, [r3, r1]
	ldrsh r0, [r5, r0]
	mov r6, #6
	add r0, r2, r0
	strh r0, [r3, #2]
	mov r2, #0
	ldrsh r0, [r3, r2]
	ldrsh r5, [r5, r6]
	add r0, r0, r5
	strh r0, [r3]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0x14]
	bl ManagedSprite_SetPositionXY
	add r3, sp, #0
	mov r2, #0
	ldrsh r0, [r3, r2]
	mov r1, #2
	sub r0, #0x18
	strh r0, [r3]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0x18]
	bl ManagedSprite_SetPositionXY
_0220B628:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0220B62C: .word ov96_0221E5A4
_0220B630: .word 0xFFE003FF
	thumb_func_end ov96_0220B528

	thumb_func_start ov96_0220B634
ov96_0220B634: ; 0x0220B634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, _0220B6E4 ; =ov96_0221E5A4
	str r2, [sp, #4]
	mov r1, #0
	str r1, [r0]
	ldr r0, [r5, #0x40]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x18
	cmp r0, #2
	bne _0220B652
	bl GF_AssertFail
_0220B652:
	ldr r0, [r5, #0x40]
	lsl r1, r0, #0x16
	lsr r1, r1, #0x18
	cmp r1, #1
	bne _0220B69C
	lsl r0, r0, #0x1e
	add r4, r5, #0
	lsr r0, r0, #0x1e
	ldr r1, [r5, #0x44]
	add r4, #0x34
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	lsl r1, r1, #8
	lsr r1, r1, #0x18
	lsl r0, r0, #6
	lsl r1, r1, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	bl ov96_0220D33C
	lsl r0, r0, #0x18
	ldr r2, [r4, r6]
	ldr r1, _0220B6E8 ; =0xFC03FFFF
	lsr r0, r0, #6
	and r1, r2
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	lsl r0, r0, #6
	lsr r0, r0, #0x18
	bne _0220B69C
	add r0, r5, #0
	mov r1, #2
	bl ov96_0220C578
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0220B69C:
	ldr r0, [r5, #0x44]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	bne _0220B6AE
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	bl ov96_0220C714
_0220B6AE:
	ldr r0, [r5, #0x10]
	mov r1, #2
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #0xc]
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, [r5, #0x40]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x18
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov96_021E8228
	add r0, r5, #0
	mov r1, #1
	bl ov96_0220C578
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220B6E4: .word ov96_0221E5A4
_0220B6E8: .word 0xFC03FFFF
	thumb_func_end ov96_0220B634

	thumb_func_start ov96_0220B6EC
ov96_0220B6EC: ; 0x0220B6EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x18
	cmp r0, #3
	bne _0220B6FE
	bl GF_AssertFail
_0220B6FE:
	add r0, r4, #0
	mov r1, #3
	bl ov96_0220C578
	pop {r4, pc}
	thumb_func_end ov96_0220B6EC

