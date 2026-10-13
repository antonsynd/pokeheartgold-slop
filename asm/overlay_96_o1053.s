	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220DC7C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_0220D428
	.extern ov96_0220DB3C
	.extern ov96_0220DBCC
	.extern ov96_0220DBE8
	.extern ov96_0220DC38
	.extern ov96_0220E6DC

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
	thumb_func_start ov96_0220DC7C
ov96_0220DC7C: ; 0x0220DC7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r4, r0, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r6, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	add r4, r4, #4
_0220DCA0:
	ldrh r1, [r5]
	lsl r0, r1, #0x19
	lsr r2, r0, #0x16
	lsr r0, r2, #0x1f
	add r0, r2, r0
	lsl r1, r1, #0x12
	lsl r0, r0, #0xf
	lsr r1, r1, #0x1d
	asr r0, r0, #0x10
	cmp r1, #2
	bne _0220DCC0
	mov r1, #0x1e
	lsl r1, r1, #4
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_0220DCC0:
	mov r1, #0x12
	lsl r1, r1, #4
	add r7, r0, #0
	cmp r0, r1
	blt _0220DCCE
	mov r6, #1
	b _0220DCD0
_0220DCCE:
	mov r6, #0
_0220DCD0:
	cmp r6, #0
	beq _0220DCDE
	mov r1, #0x12
	lsl r1, r1, #4
	sub r1, r7, r1
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
_0220DCDE:
	ldrh r1, [r5]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1c
	bl ov96_0220E6DC
	str r0, [sp, #4]
	ldrh r0, [r5]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1d
	bne _0220DD0E
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov96_0220DB3C
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _0220DD90
_0220DD0E:
	cmp r0, #3
	blo _0220DD72
	ldr r1, [r4, #0x18]
	lsl r1, r1, #8
	lsr r1, r1, #0x18
	cmp r1, #3
	bhs _0220DD72
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov96_0220DB3C
	ldrh r1, [r5]
	add r3, r7, #0
	sub r3, #0x28
	lsl r1, r1, #0x12
	lsl r3, r3, #0x10
	ldr r2, [sp, #4]
	add r0, r4, #0
	lsr r1, r1, #0x1d
	asr r3, r3, #0x10
	bl ov96_0220DBE8
	ldrh r0, [r5]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x1e
	ldr r0, [sp]
	cmp r1, r0
	bne _0220DD62
	ldr r1, [sp, #0xc]
	ldr r0, _0220DE70 ; =0x000006A8
	add r0, r1, r0
	mov r1, #4
	add r2, r1, #0
	bl ov96_0220D428
	ldrh r0, [r5]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1d
	bl ov96_0220DC38
	b _0220DD6A
_0220DD62:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_0220DD6A:
	ldr r0, _0220DE74 ; =0x000008C4
	bl PlaySE
	b _0220DD90
_0220DD72:
	cmp r0, #1
	bne _0220DD90
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ov96_0220DB3C
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_0220DD90:
	ldr r0, [r4, #0x18]
	lsl r1, r0, #8
	lsr r1, r1, #0x18
	bne _0220DDB6
	ldrh r1, [r5]
	lsl r1, r1, #0x12
	lsr r1, r1, #0x1d
	cmp r1, #1
	bne _0220DDB6
	ldr r1, _0220DE78 ; =0xFFFF0000
	and r0, r1
	str r0, [r4, #0x18]
	ldr r1, _0220DE7C ; =0x3F99999A
	add r0, r4, #0
	bl ov96_0220DBCC
	ldr r0, _0220DE80 ; =0x000008C3
	bl PlaySE
_0220DDB6:
	ldrh r0, [r5]
	lsl r0, r0, #0x12
	lsr r1, r0, #0x1d
	ldr r0, _0220DE84 ; =0x0000FFFF
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0220DE46
	cmp r6, #0
	beq _0220DDDE
	ldr r0, [sp, #4]
	cmp r0, #0x10
	ble _0220DDDE
	lsl r0, r6, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	mov r1, #1
	bl ManagedSprite_SetAnimNoRestart
_0220DDDE:
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	mov r1, #0x12
	bl _s32_div_f
	bl _fflt
	ldr r1, _0220DE88 ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _0220DE7C ; =0x3F99999A
	bl _fadd
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	ldr r2, _0220DE78 ; =0xFFFF0000
	and r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, #0xa
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov96_0220DBCC
	add r2, r7, #0
	lsl r0, r6, #2
	sub r2, #0x28
	add r6, r4, r0
	lsl r2, r2, #0x10
	mov r3, #0x1e
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	mov r3, #0x1e
	ldr r0, [r6, #8]
	ldr r1, [sp, #4]
	add r2, r7, #0
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
_0220DE46:
	ldr r1, [r4, #0x18]
	ldr r0, _0220DE8C ; =0xFF00FFFF
	and r0, r1
	ldrh r1, [r5]
	add r5, r5, #2
	lsl r1, r1, #0x12
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x18
	lsr r1, r1, #8
	orr r0, r1
	str r0, [r4, #0x18]
	ldr r0, [sp, #8]
	add r4, #0x1c
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	bge _0220DE6A
	b _0220DCA0
_0220DE6A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220DE70: .word 0x000006A8
_0220DE74: .word 0x000008C4
_0220DE78: .word 0xFFFF0000
_0220DE7C: .word 0x3F99999A
_0220DE80: .word 0x000008C3
_0220DE84: .word 0x0000FFFF
_0220DE88: .word 0x45800000
_0220DE8C: .word 0xFF00FFFF
	thumb_func_end ov96_0220DC7C

