	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220C490
	.public ov96_0220C54C
	.public ov96_0220C578
	.public ov96_0220C680
	.public ov96_0220C714
	.extern ov96_021E5F24
	.extern ov96_021E6168
	.extern ov96_021E8228
	.extern ov96_021EEBE4
	.extern ov96_0220C7C4
	.extern ov96_0220C7FC
	.extern ov96_0220C8B8

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
	thumb_func_start ov96_0220C490
ov96_0220C490: ; 0x0220C490
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	str r2, [sp]
	mov r0, #0
	add r7, r1, #0
	add r1, r0, #0
	add r2, sp, #4
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	cmp r7, #0
	bne _0220C4B6
	bl GF_AssertFail
_0220C4B6:
	ldr r0, [sp]
	cmp r0, #0
	bne _0220C4C0
	bl GF_AssertFail
_0220C4C0:
	ldr r1, _0220C540 ; =0x00002712
	mov r3, #2
	add r0, r1, #1
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	mov r1, #0x88
	add r0, sp, #4
	strh r1, [r0]
	mov r1, #0x70
	strh r1, [r0, #2]
	mov r0, #0x1b
	str r0, [sp, #0xc]
	str r3, [sp, #0x30]
	ldr r1, [sp]
	add r0, r7, #0
	add r2, sp, #4
	lsl r3, r3, #0x13
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	str r0, [r5]
	bl ManagedSprite_SetAnimateFlag
	mov r4, #0
	mov r6, #0x30
_0220C4FA:
	ldr r0, _0220C544 ; =0x00002713
	mov r3, #1
	add r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, _0220C548 ; =0x00002714
	mov r1, #0x28
	add r0, r4, r0
	str r0, [sp, #0x1c]
	ldr r0, _0220C540 ; =0x00002712
	add r2, sp, #4
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x14]
	add r0, sp, #4
	strh r1, [r0]
	strh r6, [r0, #2]
	add r0, r4, #1
	str r0, [sp, #0xc]
	ldr r1, [sp]
	add r0, r7, #0
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	str r0, [r5, #0x14]
	bl ManagedSprite_SetAnimateFlag
	add r4, r4, #1
	add r6, #0x58
	add r5, r5, #4
	cmp r4, #2
	blt _0220C4FA
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220C540: .word 0x00002712
_0220C544: .word 0x00002713
_0220C548: .word 0x00002714
	thumb_func_end ov96_0220C490

	thumb_func_start ov96_0220C54C
ov96_0220C54C: ; 0x0220C54C
	push {r4, r5, lr}
	sub sp, #0x14
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r4, [r0]
	ldr r5, [r1, #0x10]
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r0, #0xc]
	add r3, sp, #4
	bl ov96_021E6168
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	add r1, sp, #4
	mov r3, #0
	str r4, [sp]
	bl ov96_021EEBE4
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_0220C54C

	thumb_func_start ov96_0220C578
ov96_0220C578: ; 0x0220C578
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	beq _0220C58A
	cmp r4, #3
	beq _0220C5C8
	b _0220C648
_0220C58A:
	ldr r0, [r5, #0xc]
	bl ov96_021E5F24
	mov r3, #1
	str r3, [sp]
	add r1, r0, #0
	ldr r2, [r5, #0x40]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x18
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021E8228
	ldr r1, [r5, #0x40]
	add r0, r5, #0
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1e
	lsl r3, r1, #2
	add r0, #0x34
	ldr r2, [r0, r3]
	ldr r1, _0220C668 ; =0xFC03FFFF
	and r1, r2
	str r1, [r0, r3]
	ldr r1, [r5, #0x40]
	ldr r0, _0220C66C ; =0xFFE003FF
	and r0, r1
	str r0, [r5, #0x40]
	b _0220C648
_0220C5C8:
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
	mov r3, #7
	bl ov96_021E8228
	ldr r1, [r5, #0x44]
	ldr r0, _0220C670 ; =0x00FFFFFF
	and r0, r1
	str r0, [r5, #0x44]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	sub r2, #0xa
	cmp r2, #0x64
	ble _0220C600
	mov r2, #0x64
	b _0220C606
_0220C600:
	cmp r2, #0
	bge _0220C606
	mov r2, #0
_0220C606:
	ldr r1, [r5, #0x44]
	mov r0, #0xff
	bic r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r5, #0x44]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	beq _0220C620
	add r0, r5, #0
	bl ov96_0220C7FC
_0220C620:
	ldr r3, [r5, #0x40]
	add r1, r5, #0
	add r0, r3, #0
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1e
	mov r2, #3
	add r6, r3, #1
	mov r3, #3
	bic r0, r2
	and r3, r6
	orr r0, r3
	str r0, [r5, #0x40]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	add r1, #0x40
	cmp r0, #3
	blo _0220C648
	ldr r0, [r1]
	bic r0, r2
	str r0, [r1]
_0220C648:
	ldr r1, [r5, #0x40]
	ldr r0, _0220C674 ; =0xFFFFFC03
	and r1, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r0, _0220C678 ; =0xFFFF03FF
	and r1, r0
	ldr r0, _0220C67C ; =0xFF00FFFF
	and r0, r1
	str r0, [r5, #0x44]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0220C668: .word 0xFC03FFFF
_0220C66C: .word 0xFFE003FF
_0220C670: .word 0x00FFFFFF
_0220C674: .word 0xFFFFFC03
_0220C678: .word 0xFFFF03FF
_0220C67C: .word 0xFF00FFFF
	thumb_func_end ov96_0220C578

	thumb_func_start ov96_0220C680
ov96_0220C680: ; 0x0220C680
	push {r4, lr}
	ldr r3, [r0, #0x40]
	lsl r1, r3, #0x16
	lsr r1, r1, #0x18
	cmp r1, #3
	beq _0220C70C
	ldr r1, [r0, #0x44]
	lsl r2, r1, #0x17
	lsr r2, r2, #0x1f
	beq _0220C6B0
	ldr r1, _0220C710 ; =0x001FFFFF
	add r2, r3, #0
	and r2, r1
	lsr r1, r3, #0x15
	add r1, r1, #1
	lsl r1, r1, #0x15
	orr r1, r2
	str r1, [r0, #0x40]
	lsr r1, r1, #0x15
	cmp r1, #0x5a
	blo _0220C70C
	bl ov96_0220C7FC
	pop {r4, pc}
_0220C6B0:
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	beq _0220C704
	add r1, r3, #0
	ldr r4, _0220C710 ; =0x001FFFFF
	lsr r3, r3, #0x15
	add r3, r3, #1
	add r2, r0, #0
	and r1, r4
	lsl r3, r3, #0x15
	orr r1, r3
	str r1, [r0, #0x40]
	lsr r1, r1, #0x15
	add r2, #0x40
	cmp r1, #2
	blo _0220C6EC
	ldr r1, [r2]
	and r1, r4
	str r1, [r2]
	ldr r3, [r0, #0x44]
	mov r2, #0xff
	add r1, r3, #0
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	orr r1, r2
	str r1, [r0, #0x44]
_0220C6EC:
	ldr r1, [r0, #0x44]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0x32
	blo _0220C70C
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x10
	mov r2, #1
	bl ov96_0220C8B8
	pop {r4, pc}
_0220C704:
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_0220C70C:
	pop {r4, pc}
	nop
_0220C710: .word 0x001FFFFF
	thumb_func_end ov96_0220C680

	thumb_func_start ov96_0220C714
ov96_0220C714: ; 0x0220C714
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	add r5, r1, #0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	beq _0220C726
	bl GF_AssertFail
_0220C726:
	cmp r5, #0
	beq _0220C740
	ldr r2, [r4, #0x44]
	mov r1, #0xff
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r1, #0x1e
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r4, #0x44]
_0220C740:
	ldr r1, [r4, #0x44]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x64
	bls _0220C754
	mov r0, #0xff
	bic r1, r0
	mov r0, #0x64
	orr r0, r1
	str r0, [r4, #0x44]
_0220C754:
	ldr r0, [r4, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x64
	blo _0220C764
	add r0, r4, #0
	bl ov96_0220C7C4
_0220C764:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_0220C714

