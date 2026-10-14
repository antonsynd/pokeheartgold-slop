	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220BE28
	.public ov96_0220BFB4
	.extern PokeathlonCourse_GetDataCopyArea
	.extern ov96_021E5F24
	.extern ov96_021E8A20
	.extern ov96_021E8BB0
	.extern ov96_021EAA04
	.extern ov96_021EAA20
	.extern ov96_0220D13C

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
	thumb_func_start ov96_0220BE28
ov96_0220BE28: ; 0x0220BE28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #0
	mov r2, #0x3c
	add r5, r0, #0
	str r3, [sp, #0x10]
	bl MI_CpuFill8
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	ldr r1, [r5, #0x38]
	str r0, [sp, #0x14]
	ldr r0, _0220BFA4 ; =0xF9FFFFFF
	and r1, r0
	ldr r0, [sp, #0x14]
	lsl r3, r0, #0x1e
	lsr r0, r3, #5
	orr r0, r1
	str r0, [r5, #0x38]
	ldr r0, [sp, #0x34]
	ldr r1, _0220BFA8 ; =0xE7FFFFFF
	str r0, [r5]
	ldr r2, [r5, #0x38]
	and r2, r1
	lsr r1, r3, #3
	orr r1, r2
	str r1, [r5, #0x38]
	bl ov96_021E5F24
	ldr r2, [r5, #0x38]
	lsl r1, r2, #5
	lsr r1, r1, #0x1e
	cmp r1, r0
	bls _0220BE84
	ldr r0, _0220BFA8 ; =0xE7FFFFFF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #3
	lsr r0, r0, #0x1e
	sub r0, r0, #1
	lsl r0, r0, #0x1e
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r5, #0x38]
_0220BE84:
	ldr r6, [sp, #0x38]
	mov r7, #0
	add r4, r5, #0
_0220BE8A:
	ldr r1, [r5, #0x38]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #3
	lsr r2, r1, #0x1e
	lsl r1, r2, #1
	add r1, r2, r1
	add r1, r7, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	str r0, [r4, #4]
	ldr r0, [r6]
	add r7, r7, #1
	str r0, [r4, #0x10]
	add r4, r4, #4
	add r6, r6, #4
	cmp r7, #3
	blt _0220BE8A
	ldr r0, [sp, #0x34]
	bl PokeathlonCourse_GetDataCopyArea
	ldr r1, [sp, #0x14]
	mov r2, #0x28
	add r0, #0x50
	mul r2, r1
	add r0, r0, r2
	bl ov96_021E8A20
	ldr r2, [r0]
	ldr r1, _0220BFAC ; =0xFFFF00FF
	mov r3, #0x38
	and r2, r1
	ldr r1, [sp, #0x38]
	ldr r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r1, r2
	str r1, [r0]
	ldr r0, [r5, #0x38]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #3
	lsr r0, r0, #0x1e
	lsl r4, r0, #6
	mov r0, #0xc
	add r4, #0x48
	str r0, [sp]
	mov r0, #0x1d
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, [sp, #8]
	asr r2, r2, #0x10
	bl ov96_0220D13C
	str r0, [r5, #0x1c]
	mov r0, #5
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	mov r3, #0x38
	bl ov96_0220D13C
	mov r1, #0
	str r0, [r5, #0x20]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	mov r3, #0x28
	bl ov96_0220D13C
	mov r1, #1
	str r0, [r5, #0x28]
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r1, _0220BFB0 ; =0x3F333333
	ldr r0, [r5, #0x28]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	mov r3, #0x28
	bl ov96_0220D13C
	mov r1, #0
	str r0, [r5, #0x24]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	mov r3, #0x28
	bl ov96_0220D13C
	mov r1, #0
	str r0, [r5, #0x2c]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	mov r3, #0x28
	bl ov96_0220D13C
	mov r1, #0
	str r0, [r5, #0x30]
	bl ManagedSprite_SetDrawFlag
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220BFA4: .word 0xF9FFFFFF
_0220BFA8: .word 0xE7FFFFFF
_0220BFAC: .word 0xFFFF00FF
_0220BFB0: .word 0x3F333333
	thumb_func_end ov96_0220BE28

	thumb_func_start ov96_0220BFB4
ov96_0220BFB4: ; 0x0220BFB4
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0, #0x38]
	add r7, r1, #0
	lsl r1, r2, #3
	lsr r1, r1, #0x1e
	lsl r1, r1, #6
	add r1, #0x48
	lsl r1, r1, #0x10
	asr r6, r1, #0x10
	lsl r1, r2, #7
	lsr r1, r1, #0x1e
	lsl r1, r1, #2
	ldr r5, [r0, #0x24]
	add r0, r0, r1
	ldr r0, [r0, #4]
	mov r4, #0x28
	bl ov96_021EAA20
	bl ov96_021E8BB0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0220BFE8
	sub r4, #0x10
	lsl r0, r4, #0x10
	asr r4, r0, #0x10
_0220BFE8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	add r1, r7, #0
	bl ManagedSprite_SetAnimNoRestart
	add r0, r5, #0
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220BFB4

