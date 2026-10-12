	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220E3F0
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern ov96_021E5F24
	.extern ov96_021E61D8
	.extern ov96_021E64B8
	.extern ov96_021E6670
	.extern ov96_021E8A20
	.extern ov96_021EAA00
	.extern ov96_0220D420
	.extern ov96_0220E868
	.extern ov96_0220EA08
	.extern ov96_0220EB3C
	.extern ov96_0220ED9C
	.extern ov96_0220EE8C
	.extern ov96_0220F3FC
	.extern ov96_0220F4A0
	.extern ov96_0220FA18
	.extern ov96_0220FF64
	.extern ov96_0221007C
	.extern ov96_0221022C
	.extern ov96_02210240
	.extern ov96_022107F0

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
	thumb_func_start ov96_0220E3F0
ov96_0220E3F0: ; 0x0220E3F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetField1ED
	cmp r0, #3
	bls _0220E408
	b _0220E5C6
_0220E408:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220E414: ; jump table
	.short _0220E41C - _0220E414 - 2 ; case 0
	.short _0220E488 - _0220E414 - 2 ; case 1
	.short _0220E4C4 - _0220E414 - 2 ; case 2
	.short _0220E4F6 - _0220E414 - 2 ; case 3
_0220E41C:
	mov r2, #6
	mov r0, #0x5c
	mov r1, #0x8e
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0220E5D0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _0220E5D4 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_0220E868
	ldr r0, _0220E5D8 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r1, _0220E5DC ; =0x000006BC
	add r0, r5, #0
	bl PokeathlonCourse_AllocPtr4FromHeap
	ldr r2, _0220E5DC ; =0x000006BC
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x8e
	str r0, [r4]
	ldr r1, _0220E5E0 ; =0x00000708
	ldr r0, _0220E5E4 ; =0x0000050C
	str r5, [r4, #4]
	str r1, [r4, r0]
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _0220E5CA
_0220E488:
	ldr r0, [r4]
	bl BgConfig_Alloc
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #4
	bl ov96_021E6670
	add r0, r4, #0
	bl ov96_0220ED9C
	add r0, r4, #0
	bl ov96_0220EE8C
	add r0, r4, #0
	bl ov96_0221022C
	mov r0, #2
	bl sub_0203A994
	add r0, r4, #0
	bl ov96_0220EA08
	add r0, r4, #0
	bl ov96_0220F3FC
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _0220E5CA
_0220E4C4:
	ldr r0, [r4, #0x20]
	bl ov96_021EAA00
	cmp r0, #0
	beq _0220E5CA
	add r0, r4, #0
	bl ov96_0220EB3C
	ldr r0, [r4, #0x10]
	bl SpriteManager_GetSpriteList
	add r3, r0, #0
	ldr r2, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #0
	bl ov96_021E61D8
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetDrawPriority
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _0220E5CA
_0220E4F6:
	add r0, r5, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [r4, #0x14]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x18]
	bl ov96_02210240
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	add r3, r4, #0
	mov r0, #0x51
	add r3, #0xc4
	lsl r0, r0, #4
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldr r3, [r3]
	add r0, r4, r0
	bl ov96_0221007C
	ldr r1, [r4]
	add r0, r5, #0
	bl ov96_022107F0
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r5, #0
	bl ov96_021E64B8
	ldr r0, _0220E5E8 ; =0x000006A8
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	bl ov96_0220D420
	ldr r0, [r4, #8]
	bl PokeathlonCourse_SetVBlankIntrCB
	add r0, r5, #0
	mov r1, #1
	bl PokeathlonCourse_SetField1F4
	add r0, r4, #0
	bl ov96_0220F4A0
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _0220E5A2
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r6, r0, #0
	ldr r0, _0220E5E4 ; =0x0000050C
	mov r1, #0x1e
	ldr r0, [r4, r0]
	add r0, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x1a
	ldr r2, [r6, #0x1c]
	ldr r1, _0220E5EC ; =0xC0FFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r6, #0x1c]
	add r0, r4, #0
	add r0, #0xcc
	add r1, r5, #0
	bl ov96_0220FA18
_0220E5A2:
	ldr r0, _0220E5F0 ; =0x000004EC
	mov r1, #0x57
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov96_0220FF64
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0220E5C6:
	bl GF_AssertFail
_0220E5CA:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220E5D0: .word 0xFFFFE0FF
_0220E5D4: .word 0x04001000
_0220E5D8: .word gSystem + 0x60
_0220E5DC: .word 0x000006BC
_0220E5E0: .word 0x00000708
_0220E5E4: .word 0x0000050C
_0220E5E8: .word 0x000006A8
_0220E5EC: .word 0xC0FFFFFF
_0220E5F0: .word 0x000004EC
	thumb_func_end ov96_0220E3F0

