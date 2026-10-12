	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220A14C
	.public ov96_0220A254
	.public ov96_0220A298
	.public ov96_0220A424
	.public ov96_0220A4DC
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E6168
	.extern ov96_021E8A20
	.extern ov96_021EECB8
	.extern ov96_0220AD4C
	.extern ov96_0220B6EC
	.extern ov96_0220B730
	.extern ov96_0220B744
	.extern ov96_0220B758
	.extern ov96_0220B774
	.extern ov96_0220B788
	.extern ov96_0220B79C
	.extern ov96_0220B7B4
	.extern ov96_0221CC04

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
	thumb_func_start ov96_0220A14C
ov96_0220A14C: ; 0x0220A14C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	cmp r0, #0
	bne _0220A15A
	bl GF_AssertFail
_0220A15A:
	ldr r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r7, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r7, #0x54
_0220A176:
	ldr r0, [sp, #4]
	mov r1, #5
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl _u32_div_f
	add r6, r0, #0
	cmp r6, #0x14
	ble _0220A1BE
	ldr r0, [r7, #0x5c]
	bl ManagedSprite_GetDrawFlag
	cmp r0, #0
	bne _0220A1BC
	mov r4, #0
	add r5, r7, #0
_0220A198:
	ldr r0, [r5, #0x5c]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0220A198
	mov r5, #0
	add r4, r7, #0
_0220A1AC:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x14
	blt _0220A1AC
_0220A1BC:
	sub r6, #0x14
_0220A1BE:
	cmp r6, #0x14
	ble _0220A1C4
	mov r6, #0x14
_0220A1C4:
	mov r4, #0
	cmp r6, #0
	ble _0220A1EC
	add r5, r7, #0
_0220A1CC:
	ldr r0, [r5, #0xc]
	bl ManagedSprite_GetDrawFlag
	cmp r0, #0
	bne _0220A1E4
	ldr r0, [r5, #0xc]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_0220A1E4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _0220A1CC
_0220A1EC:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	lsl r1, r0, #4
	lsr r1, r1, #0x1f
	beq _0220A22C
	lsl r0, r0, #6
	lsr r2, r0, #0x1e
	ldrb r0, [r7]
	cmp r2, r0
	beq _0220A21A
	ldr r1, [sp, #8]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_0220A254
	ldr r0, [sp, #4]
	ldr r0, [r0]
	lsl r0, r0, #6
	lsr r0, r0, #0x1e
	strb r0, [r7]
_0220A21A:
	ldr r0, [r7, #4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r7, #8]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	b _0220A23C
_0220A22C:
	ldr r0, [r7, #8]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r7, #4]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_0220A23C:
	ldr r0, [sp, #4]
	add r7, #0x70
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _0220A176
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220A14C

	thumb_func_start ov96_0220A254
ov96_0220A254: ; 0x0220A254
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #8]
	add r7, r0, #0
	add r5, r1, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	add r4, r6, #0
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r5, #0
	add r3, sp, #0xc
	add r4, #0x50
	bl ov96_021E6168
	lsl r0, r5, #9
	str r0, [sp]
	ldr r0, [r6]
	mov r2, #0x71
	str r0, [sp, #4]
	mov r0, #0x70
	mul r0, r5
	lsl r2, r2, #2
	add r0, r4, r0
	ldrh r2, [r4, r2]
	ldr r0, [r0, #8]
	ldr r3, [r6, #0x50]
	add r1, sp, #0xc
	bl ov96_021EECB8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220A254

	thumb_func_start ov96_0220A298
ov96_0220A298: ; 0x0220A298
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	add r6, r1, #0
	bl ov96_0220B730
	mov r4, #0x99
	lsl r4, r4, #2
	bl System_GetTouchNew
	cmp r0, #0
	beq _0220A322
	add r0, sp, #0xc
	add r1, sp, #8
	bl System_GetTouchNewCoords
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r1, #0
	add r3, r1, #0
	cmp r0, #0x60
	blo _0220A2CC
	cmp r0, #0xb0
	bhi _0220A2CC
	mov r3, #1
_0220A2CC:
	cmp r3, #0
	beq _0220A2D8
	ldr r0, [sp, #8]
	cmp r0, #0x48
	blo _0220A2D8
	mov r2, #1
_0220A2D8:
	cmp r2, #0
	beq _0220A2E4
	ldr r0, [sp, #8]
	cmp r0, #0x98
	bhi _0220A2E4
	mov r1, #1
_0220A2E4:
	cmp r6, #0
	bne _0220A2EC
	cmp r1, #0
	beq _0220A3A2
_0220A2EC:
	ldr r1, [r5, r4]
	ldr r0, _0220A40C ; =0xFFFF00FF
	and r1, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r5, r4]
	ldr r1, [r5, r4]
	ldr r0, _0220A410 ; =0xFF00FFFF
	and r1, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	orr r0, r1
	str r0, [r5, r4]
	ldr r1, [r5, r4]
	mov r0, #0xff
	bic r1, r0
	mov r0, #1
	orr r1, r0
	str r1, [r5, r4]
	ldr r1, [r5, r4]
	lsl r0, r0, #0x18
	orr r0, r1
	str r0, [r5, r4]
	b _0220A3A2
_0220A322:
	ldr r0, [r5, r4]
	lsl r0, r0, #7
	lsr r0, r0, #0x1f
	beq _0220A35C
	bl System_GetTouchHeld
	cmp r0, #0
	bne _0220A35C
	ldr r0, [r5, r4]
	lsl r1, r0, #0x10
	lsl r0, r0, #8
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	sub r0, r1, r0
	cmp r0, #0x20
	blt _0220A352
	ldr r0, [r5, #0x4c]
	bl ov96_0220B744
	cmp r0, #0
	beq _0220A352
	ldr r0, [r5, #0x4c]
	bl ov96_0220B6EC
_0220A352:
	ldr r1, [r5, r4]
	ldr r0, _0220A414 ; =0xFEFFFFFF
	and r0, r1
	str r0, [r5, r4]
	b _0220A3A2
_0220A35C:
	ldr r0, [r5, r4]
	lsl r0, r0, #7
	lsr r0, r0, #0x1f
	beq _0220A3A2
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	ldr r1, [r5, r4]
	ldr r0, _0220A410 ; =0xFF00FFFF
	and r1, r0
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	orr r0, r1
	str r0, [r5, r4]
	ldr r2, [r5, r4]
	mov r1, #0xff
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r5, r4]
	ldr r1, [r5, r4]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xa
	blo _0220A3A2
	ldr r0, _0220A414 ; =0xFEFFFFFF
	and r0, r1
	str r0, [r5, r4]
_0220A3A2:
	bl System_GetTouchNew
	cmp r0, #0
	bne _0220A3B2
	bl System_GetTouchHeld
	cmp r0, #0
	bgt _0220A408
_0220A3B2:
	ldr r0, _0220A418 ; =ov96_0221CC04
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	ldr r0, [r5, #0x4c]
	beq _0220A3E4
	bl ov96_0220B744
	cmp r0, #0
	beq _0220A3DA
	ldr r0, _0220A41C ; =0x0000089B
	mov r4, #0x14
	bl PlaySE
	ldr r0, [r5, #0x4c]
	bl ov96_0220B6EC
	b _0220A400
_0220A3DA:
	ldr r0, _0220A420 ; =0x0000089C
	mov r4, #0x16
	bl PlaySE
	b _0220A400
_0220A3E4:
	bl ov96_0220B744
	cmp r0, #0
	bne _0220A3F0
	mov r4, #0x15
	b _0220A400
_0220A3F0:
	ldr r0, [r5, #0x4c]
	bl ov96_0220B788
	cmp r0, #0
	beq _0220A3FE
	mov r4, #0x17
	b _0220A400
_0220A3FE:
	mov r4, #0x13
_0220A400:
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	bl ManagedSprite_SetAnimNoRestart
_0220A408:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220A40C: .word 0xFFFF00FF
_0220A410: .word 0xFF00FFFF
_0220A414: .word 0xFEFFFFFF
_0220A418: .word ov96_0221CC04
_0220A41C: .word 0x0000089B
_0220A420: .word 0x0000089C
	thumb_func_end ov96_0220A298

	thumb_func_start ov96_0220A424
ov96_0220A424: ; 0x0220A424
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	bl ov96_021E8A20
	add r5, r0, #0
	ldr r0, [r4, #0x4c]
	bl ov96_0220B758
	add r6, r0, #0
	ldr r0, [r4, #0x4c]
	bl ov96_0220B730
	add r7, r0, #0
	ldr r0, [r4, #0x40]
	bl ov96_0220AD4C
	lsl r0, r0, #0x18
	ldr r1, [r5]
	mov r2, #0xff
	bic r1, r2
	lsr r0, r0, #0x18
	orr r1, r0
	ldr r0, _0220A4C8 ; =0xFFFF00FF
	str r1, [r5]
	and r0, r1
	ldr r1, [r6]
	lsl r1, r1, #6
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x4c]
	bl ov96_0220B79C
	lsl r0, r0, #0x18
	ldr r2, [r5]
	ldr r1, _0220A4CC ; =0xFF00FFFF
	lsr r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x4c]
	bl ov96_0220B774
	lsl r0, r0, #0x1f
	ldr r2, [r5]
	ldr r1, _0220A4D0 ; =0xFBFFFFFF
	lsr r0, r0, #5
	and r1, r2
	orr r0, r1
	str r0, [r5]
	cmp r7, #3
	bne _0220A4A0
	mov r2, #1
	b _0220A4A2
_0220A4A0:
	mov r2, #0
_0220A4A2:
	ldr r1, [r5]
	ldr r0, _0220A4D4 ; =0xEFFFFFFF
	and r1, r0
	lsl r0, r2, #0x1f
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x4c]
	bl ov96_0220B7B4
	lsl r0, r0, #0x1e
	ldr r2, [r5]
	ldr r1, _0220A4D8 ; =0xFCFFFFFF
	lsr r0, r0, #6
	and r1, r2
	orr r0, r1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220A4C8: .word 0xFFFF00FF
_0220A4CC: .word 0xFF00FFFF
_0220A4D0: .word 0xFBFFFFFF
_0220A4D4: .word 0xEFFFFFFF
_0220A4D8: .word 0xFCFFFFFF
	thumb_func_end ov96_0220A424

	thumb_func_start ov96_0220A4DC
ov96_0220A4DC: ; 0x0220A4DC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl ov96_021E5F24
	add r6, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r5, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	add r4, r0, #0
	cmp r5, #0
	bne _0220A4FE
	bl GF_AssertFail
_0220A4FE:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _0220A508
	bl GF_AssertFail
_0220A508:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _0220A512
	bl GF_AssertFail
_0220A512:
	cmp r6, #0
	bne _0220A5C0
	add r0, r4, #0
	add r0, #0x28
	bl ov96_021E8A20
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x50
	bl ov96_021E8A20
	add r6, r0, #0
	add r0, r4, #0
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_0220A534:
	ldmia r3!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r2, r2, #1
	bne _0220A534
	ldr r0, [r3]
	add r4, #0x50
	str r0, [r6]
	mov r6, #0
	mov r7, #0xff
_0220A546:
	add r0, r4, #0
	bl ov96_021E8A20
	ldr r2, [r0]
	ldr r1, [r5]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	bic r1, r7
	lsr r2, r2, #0x18
	orr r2, r1
	ldr r1, _0220A5C8 ; =0xFFFF00FF
	str r2, [r5]
	and r1, r2
	ldr r2, [r0]
	add r6, r6, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r2, r1
	ldr r1, _0220A5CC ; =0xFF00FFFF
	str r2, [r5]
	and r1, r2
	ldr r2, [r0]
	add r4, #0x28
	lsl r2, r2, #8
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #8
	orr r2, r1
	ldr r1, _0220A5D0 ; =0xFCFFFFFF
	str r2, [r5]
	and r1, r2
	ldr r2, [r0]
	lsl r2, r2, #6
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x1e
	lsr r2, r2, #6
	orr r2, r1
	ldr r1, _0220A5D4 ; =0xFBFFFFFF
	str r2, [r5]
	and r1, r2
	ldr r2, [r0]
	lsl r2, r2, #5
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #5
	orr r2, r1
	str r2, [r5]
	ldr r0, [r0]
	ldr r1, _0220A5D8 ; =0xF7FFFFFF
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	lsl r0, r0, #0x1f
	and r1, r2
	lsr r0, r0, #4
	orr r0, r1
	stmia r5!, {r0}
	cmp r6, #4
	blt _0220A546
_0220A5C0:
	ldr r0, [sp]
	bl ov96_0220A424
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220A5C8: .word 0xFFFF00FF
_0220A5CC: .word 0xFF00FFFF
_0220A5D0: .word 0xFCFFFFFF
_0220A5D4: .word 0xFBFFFFFF
_0220A5D8: .word 0xF7FFFFFF
	thumb_func_end ov96_0220A4DC

