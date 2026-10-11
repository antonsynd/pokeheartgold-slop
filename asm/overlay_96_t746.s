	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02216770
	.public ov96_02216934
	.extern ov96_021EAB38
	.extern ov96_022193CC
	.extern ov96_02219794
	.extern ov96_02219940

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
	thumb_func_start ov96_02216770
ov96_02216770: ; 0x02216770
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r5, r1, #0
	add r0, #0xe4
	add r1, r2, #0
	ldr r2, [r0]
	add r6, r3, #0
	lsl r0, r2, #0x14
	lsr r0, r0, #0x1c
	cmp r0, #3
	bls _0221678A
	b _0221691E
_0221678A:
	add r3, r0, r0
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02216796: ; jump table
	.short _0221679E - _02216796 - 2 ; case 0
	.short _02216810 - _02216796 - 2 ; case 1
	.short _02216870 - _02216796 - 2 ; case 2
	.short _02216922 - _02216796 - 2 ; case 3
_0221679E:
	mov r1, #0
	mov r2, #2
	mov r3, #0x1e
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #0x10]
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x10]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	mov r1, #0
	mov r2, #2
	mov r3, #0x1e
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #0xc]
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4]
	mov r1, #0
	bl ov96_021EAB38
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe2
	strb r1, [r0]
	ldr r0, _02216928 ; =0x000008B4
	ldr r1, [sp, #0x20]
	bl ov96_022193CC
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _0221692C ; =0xFFFFF0FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x14
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x14
	orr r0, r2
	add r4, #0xe4
	add sp, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02216810:
	add r1, sp, #0
	ldr r0, [r4, #0xc]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r3, sp, #0
	mov r2, #0
	ldrsh r0, [r3, r2]
	mov r1, #2
	sub r0, #0x28
	strh r0, [r3]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r3, #0x1e
	ldr r0, [r4, #0xc]
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	mov r1, #0xe2
	ldrsb r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0xe2
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0xa
	blt _02216922
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _0221692C ; =0xFFFFF0FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x14
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x14
	orr r0, r2
	add r4, #0xe4
	add sp, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02216870:
	ldr r3, [sp, #0x20]
	cmp r3, #0
	beq _022168BA
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x18
	add r0, r1, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov96_02219794
	cmp r0, #0
	beq _02216922
	ldr r2, [sp, #0x18]
	ldr r0, _02216930 ; =0xFFF9FFFF
	ldr r1, [r2]
	add sp, #4
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _0221692C ; =0xFFFFF0FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x14
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x14
	orr r0, r2
	add r4, #0xe4
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022168BA:
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _02216904
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x18
	add r0, r1, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov96_02219940
	cmp r0, #0
	beq _02216922
	ldr r2, [sp, #0x18]
	ldr r0, _02216930 ; =0xFFF9FFFF
	ldr r1, [r2]
	add sp, #4
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _0221692C ; =0xFFFFF0FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x14
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x14
	orr r0, r2
	add r4, #0xe4
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02216904:
	add r1, r4, #0
	add r1, #0xe4
	ldr r2, [r1]
	ldr r1, _0221692C ; =0xFFFFF0FF
	add r0, r0, #1
	lsl r0, r0, #0x1c
	and r1, r2
	lsr r0, r0, #0x14
	orr r0, r1
	add r4, #0xe4
	add sp, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0221691E:
	bl GF_AssertFail
_02216922:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02216928: .word 0x000008B4
_0221692C: .word 0xFFFFF0FF
_02216930: .word 0xFFF9FFFF
	thumb_func_end ov96_02216770

	thumb_func_start ov96_02216934
ov96_02216934: ; 0x02216934
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r2, r1, #0
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1c
	cmp r0, #3
	bhi _02216A3E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02216954: ; jump table
	.short _0221695C - _02216954 - 2 ; case 0
	.short _022169B0 - _02216954 - 2 ; case 1
	.short _02216A08 - _02216954 - 2 ; case 2
	.short _02216A42 - _02216954 - 2 ; case 3
_0221695C:
	mov r3, #2
	mov r1, #0
	ldrsh r3, [r2, r3]
	ldrsh r1, [r2, r1]
	mov r2, #0x19
	lsl r2, r2, #4
	sub r2, r3, r2
	lsl r2, r2, #0x10
	mov r3, #0x1e
	ldr r0, [r4, #0xc]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe2
	strb r1, [r0]
	ldr r0, _02216A48 ; =0x000008B5
	ldr r1, [sp, #0x18]
	bl ov96_022193CC
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _02216A4C ; =0xFFFFF0FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x14
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x14
	orr r0, r2
	add r4, #0xe4
	add sp, #4
	str r0, [r4]
	pop {r3, r4, pc}
_022169B0:
	add r1, sp, #0
	ldr r0, [r4, #0xc]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r3, sp, #0
	mov r2, #0
	ldrsh r0, [r3, r2]
	mov r1, #2
	add r0, #0x28
	strh r0, [r3]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r3, #0x1e
	ldr r0, [r4, #0xc]
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	mov r1, #0xe2
	ldrsb r0, [r4, r1]
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0xe2
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0xa
	blt _02216A42
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _02216A4C ; =0xFFFFF0FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x14
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x14
	orr r0, r2
	add r4, #0xe4
	add sp, #4
	str r0, [r4]
	pop {r3, r4, pc}
_02216A08:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02216A1E
	ldr r2, [sp, #0x10]
	ldr r0, _02216A50 ; =0xFFF9FFFF
	ldr r1, [r2]
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0x12
	orr r0, r1
	str r0, [r2]
_02216A1E:
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _02216A4C ; =0xFFFFF0FF
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x14
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x14
	orr r0, r2
	add r4, #0xe4
	add sp, #4
	str r0, [r4]
	pop {r3, r4, pc}
_02216A3E:
	bl GF_AssertFail
_02216A42:
	add sp, #4
	pop {r3, r4, pc}
	nop
_02216A48: .word 0x000008B5
_02216A4C: .word 0xFFFFF0FF
_02216A50: .word 0xFFF9FFFF
	thumb_func_end ov96_02216934

