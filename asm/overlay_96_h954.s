	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220D0F8
	.public ov96_0220D13C
	.public ov96_0220D1A0
	.extern ov96_0221CE84
	.extern ov96_0221CEB8

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
	thumb_func_start ov96_0220D0F8
ov96_0220D0F8: ; 0x0220D0F8
	push {r3, r4}
	ldr r4, [r0, #0x1c]
	ldr r3, _0220D12C ; =0xFFFFFDFF
	ldr r1, [r0, #0x14]
	and r3, r4
	str r3, [r0, #0x1c]
	ldr r4, [r0, #0x18]
	ldr r3, _0220D130 ; =0xFFC007FF
	lsr r1, r1, #0x1e
	and r3, r4
	str r3, [r0, #0x18]
	ldr r4, [r0, #0x14]
	ldr r3, _0220D134 ; =0xFF00FFFF
	add r2, r0, #4
	and r3, r4
	str r3, [r0, #0x14]
	lsl r1, r1, #2
	ldr r3, [r2, r1]
	ldr r0, _0220D138 ; =0xFC03FFFF
	and r3, r0
	mov r0, #0xa
	lsl r0, r0, #0x12
	orr r0, r3
	str r0, [r2, r1]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_0220D12C: .word 0xFFFFFDFF
_0220D130: .word 0xFFC007FF
_0220D134: .word 0xFF00FFFF
_0220D138: .word 0xFC03FFFF
	thumb_func_end ov96_0220D0F8

	thumb_func_start ov96_0220D13C
ov96_0220D13C: ; 0x0220D13C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _0220D19C ; =ov96_0221CE84
	add r7, r2, #0
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	mov r2, #6
_0220D14E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0220D14E
	ldr r0, [r6]
	cmp r5, #0
	str r0, [r3]
	bne _0220D162
	bl GF_AssertFail
_0220D162:
	cmp r4, #0
	bne _0220D16A
	bl GF_AssertFail
_0220D16A:
	add r1, sp, #4
	strh r7, [r1]
	ldr r0, [sp]
	mov r3, #1
	strh r0, [r1, #2]
	add r0, sp, #0x40
	ldrh r2, [r0, #0x10]
	strh r2, [r1, #6]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	add r2, sp, #4
	str r0, [sp, #0xc]
	str r3, [sp, #0x30]
	add r0, r5, #0
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	add r4, r0, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220D19C: .word ov96_0221CE84
	thumb_func_end ov96_0220D13C

	thumb_func_start ov96_0220D1A0
ov96_0220D1A0: ; 0x0220D1A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _0220D1FC ; =ov96_0221CEB8
	add r7, r2, #0
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	mov r2, #6
_0220D1B2:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0220D1B2
	ldr r0, [r6]
	cmp r5, #0
	str r0, [r3]
	bne _0220D1C6
	bl GF_AssertFail
_0220D1C6:
	cmp r4, #0
	bne _0220D1CE
	bl GF_AssertFail
_0220D1CE:
	add r1, sp, #4
	strh r7, [r1]
	ldr r0, [sp]
	mov r3, #1
	strh r0, [r1, #2]
	add r0, sp, #0x40
	ldrh r2, [r0, #0x10]
	lsl r3, r3, #0x14
	strh r2, [r1, #6]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	add r2, sp, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	add r4, r0, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220D1FC: .word ov96_0221CEB8
	thumb_func_end ov96_0220D1A0

