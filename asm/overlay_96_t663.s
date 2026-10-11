	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02210324
	.public ov96_02210390
	.public ov96_0221040C
	.extern ov96_021E5F24
	.extern ov96_0221058C

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
	thumb_func_start ov96_02210324
ov96_02210324: ; 0x02210324
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	add r4, r2, #0
	bl ov96_021E5F24
	cmp r7, r0
	bne _02210386
	add r0, r5, #0
	add r0, #0xe6
	ldrh r0, [r0]
	cmp r4, r0
	beq _02210386
	cmp r0, r4
	bls _02210352
	add r0, r5, #0
	add r0, #0xe5
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xe5
	strb r1, [r0]
_02210352:
	add r0, r5, #0
	add r0, #0xe5
	ldrb r0, [r0]
	lsl r0, r0, #7
	add r1, r4, r0
	ldr r0, _0221038C ; =0x000003E7
	cmp r1, r0
	ble _02210366
	add r1, r0, #0
	b _0221036C
_02210366:
	cmp r1, #0
	bge _0221036C
	mov r1, #0
_0221036C:
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov96_0221058C
	add r0, r5, #0
	add r0, #0xe6
	ldrh r0, [r0]
	add r5, #0xe6
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	strh r4, [r5]
_02210386:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221038C: .word 0x000003E7
	thumb_func_end ov96_02210324

	thumb_func_start ov96_02210390
ov96_02210390: ; 0x02210390
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _022103A0
	bl GF_AssertFail
_022103A0:
	cmp r4, #4
	blo _022103A8
	bl GF_AssertFail
_022103A8:
	add r0, r4, #3
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r4, #4
	bl ManagedSprite_SetAnim
	ldr r0, [r5]
	bl ov96_021E5F24
	cmp r4, r0
	bne _02210402
	add r0, r5, #0
	add r0, #0xe6
	ldrh r0, [r0]
	cmp r6, r0
	beq _02210402
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov96_02210324
	cmp r0, #1
	beq _022103FE
	cmp r0, #2
	bne _022103E6
	ldr r0, _02210408 ; =0x0000088D
	mov r1, #0x80
	bl PlaySE_SetPitch
	b _022103FE
_022103E6:
	cmp r0, #3
	ldr r0, _02210408 ; =0x0000088D
	bne _022103F6
	mov r1, #1
	lsl r1, r1, #8
	bl PlaySE_SetPitch
	b _022103FE
_022103F6:
	mov r1, #5
	lsl r1, r1, #6
	bl PlaySE_SetPitch
_022103FE:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02210402:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02210408: .word 0x0000088D
	thumb_func_end ov96_02210390

	thumb_func_start ov96_0221040C
ov96_0221040C: ; 0x0221040C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r0, #0xe4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0221044E
	cmp r0, #1
	beq _02210478
	cmp r0, #2
	beq _022104A6
	b _022104A2
_0221044E:
	cmp r4, #0x14
	bhi _022104A6
	mov r4, #0
	add r5, r6, #0
	mov r7, #2
_02210458:
	ldr r0, [r5, #0x6c]
	add r1, r7, #0
	bl ManagedSprite_SetPaletteOverride
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02210458
	add r0, r6, #0
	add r0, #0xe4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0xe4
	strb r1, [r0]
	b _022104A6
_02210478:
	cmp r4, #3
	bhi _022104A6
	mov r4, #0
	add r5, r6, #0
	mov r7, #3
_02210482:
	ldr r0, [r5, #0x6c]
	add r1, r7, #0
	bl ManagedSprite_SetPaletteOverride
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02210482
	add r0, r6, #0
	add r0, #0xe4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0xe4
	strb r1, [r0]
	b _022104A6
_022104A2:
	bl GF_AssertFail
_022104A6:
	ldr r1, [sp, #4]
	ldr r0, [r6, #0x6c]
	add r1, #9
	str r1, [sp, #4]
	bl ManagedSprite_SetAnim
	ldr r1, [sp]
	ldr r0, [r6, #0x70]
	add r1, #9
	str r1, [sp]
	bl ManagedSprite_SetAnim
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0221040C

