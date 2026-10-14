	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220A14C
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E8A20
	.extern ov96_0220A254

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

