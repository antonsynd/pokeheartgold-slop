	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221040C

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

