	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02219DD0
	.public ov96_02219E00
	.public ov96_02219E60
	.public ov96_02219EE0
	.public ov96_02219F20
	.extern ov96_021E6168
	.extern ov96_021EA374
	.extern ov96_021EECB8
	.extern ov96_02219BC4
	.extern ov96_0221D944

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
	thumb_func_start ov96_02219DD0
ov96_02219DD0: ; 0x02219DD0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #2
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r6, [r0, #0x60]
	ldr r0, [r5]
	add r3, sp, #8
	bl ov96_021E6168
	lsl r0, r4, #9
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, sp, #8
	str r0, [sp, #4]
	ldrh r2, [r5, #0x20]
	ldr r3, [r5, #0x24]
	add r0, r6, #0
	bl ov96_021EECB8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_02219DD0

	thumb_func_start ov96_02219E00
ov96_02219E00: ; 0x02219E00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _02219E5C ; =ov96_0221D944
	add r7, r2, #0
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	mov r2, #6
_02219E12:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02219E12
	ldr r0, [r6]
	cmp r5, #0
	str r0, [r3]
	bne _02219E26
	bl GF_AssertFail
_02219E26:
	cmp r4, #0
	bne _02219E2E
	bl GF_AssertFail
_02219E2E:
	add r1, sp, #4
	strh r7, [r1]
	ldr r0, [sp]
	mov r3, #0x1e
	strh r0, [r1, #2]
	add r0, sp, #0x40
	ldrh r2, [r0, #0x10]
	lsl r3, r3, #0x10
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
_02219E5C: .word ov96_0221D944
	thumb_func_end ov96_02219E00

	thumb_func_start ov96_02219E60
ov96_02219E60: ; 0x02219E60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	mov r2, #0x72
	mov r3, #0xb4
	bl ov96_02219E00
	mov r1, #0xe
	str r0, [r6, #0x64]
	bl ManagedSprite_SetPaletteOverride
	mov r7, #0
	add r4, r6, #0
	mov r5, #0x86
_02219E88:
	mov r1, #0
	add r0, sp, #8
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r6, #0xc]
	bl SpriteManager_GetSpriteList
	add r1, r0, #0
	ldr r0, [r6, #0x10]
	ldr r3, [r6, #4]
	mov r2, #1
	bl ov96_021EA374
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	lsl r0, r5, #0xc
	str r0, [sp, #8]
	mov r0, #0x2d
	lsl r0, r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, sp, #8
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r7, #2
	blt _02219E88
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02219E60

	thumb_func_start ov96_02219EE0
ov96_02219EE0: ; 0x02219EE0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #1
	mov r1, #3
	bl _s32_div_f
	lsl r2, r1, #0x18
	mov r0, #1
	lsr r2, r2, #0x16
	add r2, r4, r2
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	add r2, #0xb0
	ldr r0, [r4, #0x1c]
	ldr r2, [r2]
	mov r1, #0
	bl BufferString
	ldr r0, [r4, #4]
	mov r3, #0x9a
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	add r0, #0x40
	bl ov96_02219BC4
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_02219EE0

	thumb_func_start ov96_02219F20
ov96_02219F20: ; 0x02219F20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r6, r1, #2
	add r0, r5, r6
	add r7, r2, #0
	add r4, r3, #0
	mov r3, #0x1e
	ldr r0, [r0, #0x60]
	add r1, r7, #0
	add r2, r4, #0
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add r0, r5, r6
	sub r4, #0x18
	lsl r2, r4, #0x10
	mov r3, #0x1e
	ldr r0, [r0, #0x68]
	add r1, r7, #0
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_02219F20

