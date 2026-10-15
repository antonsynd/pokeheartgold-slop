	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02219C30
	.extern ov96_022199A8
	.extern ov96_02219DA8
	.extern ov96_02219DD0
	.extern ov96_02219E60

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
	thumb_func_start ov96_02219C30
ov96_02219C30: ; 0x02219C30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	mov r0, #0
	add r2, sp, #0xc
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r2, #0x86
	mov r3, #0xa0
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl ov96_022199A8
	mov r1, #1
	str r0, [r5, #0x60]
	bl ManagedSprite_SetPaletteOverride
	mov r7, #0
	mov r6, #0x78
	add r4, r5, #0
_02219C76:
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #8]
	mov r3, #0x24
	bl ov96_022199A8
	lsl r1, r7, #0x18
	str r0, [r4, #0x68]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov96_02219DD0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #8]
	mov r3, #0x24
	bl ov96_022199A8
	mov r1, #0
	str r0, [r4, #0x78]
	bl ManagedSprite_SetDrawFlag
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r2, r6, #0x10
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	asr r2, r2, #0x10
	mov r3, #0x18
	bl ov96_022199A8
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r7, r7, #1
	add r6, #0x20
	add r4, r4, #4
	cmp r7, #4
	blt _02219C76
	mov r4, #0
	mov r7, #0x30
	add r6, r5, #0
_02219CF6:
	ldr r0, _02219DA4 ; =0x00002712
	mov r3, #0x1e
	add r0, r4, r0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, _02219DA4 ; =0x00002712
	mov r1, #0x28
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x1c]
	add r0, sp, #0xc
	strh r1, [r0]
	strh r7, [r0, #2]
	add r0, r4, #2
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x38]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	add r2, sp, #0xc
	lsl r3, r3, #0x10
	bl SpriteSystem_NewSpriteWithYOffset
	add r1, r6, #0
	add r1, #0x98
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	add r4, r4, #1
	add r7, #0x58
	add r6, r6, #4
	cmp r4, #2
	blt _02219CF6
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x18
_02219D48:
	mov r0, #2
	sub r0, r0, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r3, r5, #0
	add r2, r4, #0
	add r3, #0x22
	add r2, #0x98
	ldrb r3, [r3]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r2]
	bl ov96_02219DA8
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r3, r7, #0x10
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r2, #0x28
	asr r3, r3, #0x10
	bl ov96_022199A8
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r6, r6, #1
	add r4, r4, #4
	add r7, #0x58
	cmp r6, #2
	blt _02219D48
	add r0, r5, #0
	bl ov96_02219E60
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02219DA4: .word 0x00002712
	thumb_func_end ov96_02219C30

