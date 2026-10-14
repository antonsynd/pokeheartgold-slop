	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02209448
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E6108
	.extern ov96_021E6168
	.extern ov96_021E61D8
	.extern ov96_021E6670
	.extern ov96_021EA854
	.extern ov96_021EA8A8
	.extern ov96_021EAA00
	.extern ov96_021EB144
	.extern ov96_02209820
	.extern ov96_02209840
	.extern ov96_02209910
	.extern ov96_02209A14
	.extern ov96_02209B04
	.extern ov96_02209C14
	.extern ov96_02209D14
	.extern ov96_02209DE4
	.extern ov96_02209F14
	.extern ov96_02209F8C
	.extern ov96_0220A424
	.extern ov96_0220A4DC
	.extern ov96_0220A744
	.extern ov96_0220B374
	.extern ov96_0220B7F4
	.extern ov96_0220C93C
	.extern ov96_0220C9CC

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
	thumb_func_start ov96_02209448
ov96_02209448: ; 0x02209448
	push {r4, r5, r6, r7, lr}
	sub sp, #0xec
	str r0, [sp, #0xc]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_GetField1ED
	cmp r0, #7
	bls _02209460
	b _0220971E
_02209460:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220946C: ; jump table
	.short _0220947C - _0220946C - 2 ; case 0
	.short _022094EE - _0220946C - 2 ; case 1
	.short _02209546 - _0220946C - 2 ; case 2
	.short _022095D2 - _0220946C - 2 ; case 3
	.short _02209618 - _0220946C - 2 ; case 4
	.short _0220963C - _0220946C - 2 ; case 5
	.short _022096F2 - _0220946C - 2 ; case 6
	.short _02209710 - _0220946C - 2 ; case 7
_0220947C:
	mov r2, #6
	mov r0, #0x5c
	mov r1, #0x8d
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
	ldr r0, _02209728 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _0220972C ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_02209820
	ldr r0, _02209730 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r1, #0x27
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	bl PokeathlonCourse_AllocPtr4FromHeap
	mov r2, #0x27
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x8d
	str r0, [r4]
	mov r1, #0xe1
	mov r0, #0x26
	lsl r1, r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_IncrementField1ED
	b _02209722
_022094EE:
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	bl BgConfig_Alloc
	ldr r1, [sp, #0x14]
	str r0, [r1, #4]
	ldr r0, [sp, #0xc]
	mov r1, #4
	bl ov96_021E6670
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	ldr r1, [r1]
	bl ov96_02209C14
	ldr r0, [sp, #0xc]
	bl ov96_02209DE4
	ldr r0, [sp, #0x14]
	bl ov96_02209D14
	ldr r0, [sp, #0x14]
	bl ov96_02209840
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0xc]
	bl SpriteManager_GetSpriteList
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x14]
	ldr r0, [r0]
	ldr r3, [r3, #0x14]
	mov r1, #9
	mov r2, #0x20
	bl ov96_021EA854
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x10]
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_IncrementField1ED
	b _02209722
_02209546:
	mov r5, #0
	add r6, sp, #0x18
	add r2, r6, #0
	add r0, r5, #0
	add r1, r5, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	str r5, [sp, #0x10]
	add r7, sp, #0x5c
_02209566:
	ldr r0, [sp, #0xc]
	bl ov96_021E5F24
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _022095A4
	mov r4, #0
_02209574:
	cmp r5, #9
	blt _0220957C
	bl GF_AssertFail
_0220957C:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	add r3, r7, #0
	bl ov96_021E6168
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	str r0, [r6, #0x14]
	add r4, r4, #1
	add r7, #0x10
	add r6, r6, #4
	add r5, r5, #1
	cmp r4, #3
	blt _02209574
_022095A4:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _02209566
	mov r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #9
	ldr r0, [r0, #0x10]
	add r2, sp, #0x5c
	add r3, sp, #0x18
	bl ov96_021EA8A8
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_IncrementField1ED
	b _02209722
_022095D2:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	bl ov96_021EAA00
	cmp r0, #0
	bne _022095E0
	b _02209722
_022095E0:
	ldr r0, [sp, #0x14]
	bl ov96_02209A14
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	bl ov96_02209B04
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0xc]
	bl SpriteManager_GetSpriteList
	ldr r2, [sp, #0x14]
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0x14]
	mov r1, #0
	bl ov96_021E61D8
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_IncrementField1ED
	b _02209722
_02209618:
	ldr r0, [sp, #0x14]
	bl ov96_02209910
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x14]
	ldr r0, [r0]
	ldr r1, [r1, #8]
	ldr r2, [r2, #0xc]
	ldr r3, [sp, #0xc]
	bl ov96_0220A744
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x40]
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_IncrementField1ED
	b _02209722
_0220963C:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x14]
	ldr r0, [r0]
	ldr r1, [r1, #8]
	ldr r2, [r2, #0xc]
	ldr r3, [sp, #0xc]
	bl ov96_0220B374
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x14]
	str r0, [r1, #0x4c]
	add r0, r1, #0
	ldr r0, [r0, #0x10]
	ldr r3, [sp, #0xc]
	str r0, [sp]
	add r0, r1, #0
	ldr r0, [r0]
	ldr r1, [r1, #8]
	ldr r2, [r2, #0xc]
	bl ov96_0220B7F4
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x44]
	add r0, r1, #0
	ldr r0, [r0, #0x10]
	mov r1, #1
	bl ov96_021EB144
	ldr r0, [sp, #0xc]
	bl ov96_021E5F24
	cmp r0, #0
	bne _0220968E
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r1, [r1]
	bl ov96_0220C93C
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x48]
_0220968E:
	ldr r0, [sp, #0x14]
	bl ov96_02209F14
	ldr r0, [sp, #0xc]
	bl ov96_02209F8C
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #4]
	bl PokeathlonCourse_SetVBlankIntrCB
	mov r0, #1
	bl sub_0203A994
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl PokeathlonCourse_SetField1F4
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [sp, #0xc]
	bl ov96_021E5F24
	cmp r0, #0
	bne _022096D2
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x48]
	bl ov96_0220C9CC
_022096D2:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r3, _02209734 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_IncrementField1ED
	b _02209722
_022096F2:
	ldr r0, [sp, #0xc]
	bl ov96_021E5F24
	cmp r0, #0
	bne _02209702
	ldr r0, [sp, #0xc]
	bl ov96_0220A424
_02209702:
	ldr r0, [sp, #0xc]
	bl ov96_0220A4DC
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_IncrementField1ED
	b _02209722
_02209710:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02209722
	add sp, #0xec
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0220971E:
	bl GF_AssertFail
_02209722:
	mov r0, #0
	add sp, #0xec
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02209728: .word 0xFFFFE0FF
_0220972C: .word 0x04001000
_02209730: .word gSystem + 0x60
_02209734: .word 0x00007FFF
	thumb_func_end ov96_02209448

