	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F7934
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_GetField3D8_ForCurrentParticipant
	.extern PokeathlonCourse_GetGraphicsSystem
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetSaveData
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern ov96_021E5F24
	.extern ov96_021E8A20
	.extern ov96_021E9524
	.extern ov96_021E9528
	.extern ov96_021EB180
	.extern ov96_021EB3A4
	.extern ov96_021EB5C8
	.extern ov96_021EE5B4
	.extern ov96_021EE60C
	.extern ov96_021EE644
	.extern ov96_021EE6A0
	.extern ov96_021EE740
	.extern ov96_021EE75C
	.extern ov96_021EEA88
	.extern ov96_021EEBC8
	.extern ov96_021F7878
	.extern ov96_021F78C4
	.extern ov96_021F7D10
	.extern ov96_021F7D30
	.extern ov96_021F7DA8
	.extern ov96_021F8094
	.extern ov96_021F80A8
	.extern ov96_021F8448
	.extern ov96_021F8528
	.extern ov96_021F85A0
	.extern ov96_021F8EB0
	.extern ov96_021F8F44
	.extern ov96_021F8F94
	.extern ov96_0221C2A8

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
	thumb_func_start ov96_021F7934
ov96_021F7934: ; 0x021F7934
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetField1ED
	cmp r0, #5
	bls _021F794C
	b _021F7C2E
_021F794C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F7958: ; jump table
	.short _021F7964 - _021F7958 - 2 ; case 0
	.short _021F7A04 - _021F7958 - 2 ; case 1
	.short _021F7AA0 - _021F7958 - 2 ; case 2
	.short _021F7B90 - _021F7958 - 2 ; case 3
	.short _021F7BFC - _021F7958 - 2 ; case 4
	.short _021F7C20 - _021F7958 - 2 ; case 5
_021F7964:
	mov r2, #1
	mov r0, #0x5c
	mov r1, #0x89
	lsl r2, r2, #0x12
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
	ldr r0, _021F7C38 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021F7C3C ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021F7D10
	add r0, r5, #0
	mov r1, #0xac
	bl PokeathlonCourse_AllocPtr4FromHeap
	mov r1, #0
	mov r2, #0xac
	add r4, r0, #0
	bl MI_CpuFill8
	mov r1, #0x89
	mov r0, #4
	str r1, [r4]
	bl FontID_Alloc
	mov r0, #0x89
	bl BgConfig_Alloc
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl ov96_021EE740
	str r0, [r4, #0x18]
	add r0, r4, #0
	ldr r2, [r4, #0xc]
	add r0, #0x1c
	mov r1, #0x89
	add r3, r5, #0
	bl ov96_021F8094
	add r0, r5, #0
	bl PokeathlonCourse_GetField3D8_ForCurrentParticipant
	ldr r1, [r4]
	bl ov96_021EE5B4
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	add r0, r4, #0
	bl ov96_021F8448
	ldr r0, _021F7C40 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F7C32
_021F7A04:
	ldr r6, _021F7C44 ; =ov96_0221C2A8
	add r3, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4]
	bl ov96_021EB180
	mov r1, #0
	str r0, [r4, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #0xe
	str r0, [sp]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	add r3, r1, #0
	bl ov96_021EB5C8
	add r0, r5, #0
	bl PokeathlonCourse_GetGraphicsSystem
	add r7, r0, #0
	bl ov96_021E9524
	add r6, r0, #0
	add r0, r7, #0
	bl ov96_021E9528
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r6, #0x18
	add r0, #0x1c
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F80A8
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	bl ov96_021F8EB0
	str r0, [r4, #0x14]
	mov r1, #2
	bl ov96_021F8F44
	ldr r0, [r4, #0x10]
	bl ov96_021EB3A4
	mov r2, #0x4b
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	lsl r2, r2, #2
	bl ov96_021F8F94
	add r0, r4, #0
	bl ov96_021F8528
	add r0, r4, #0
	bl ov96_021F85A0
	mov r0, #2
	bl ov96_021EEBC8
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	ldr r3, [r4]
	mov r2, #0xb
	bl ov96_021EEA88
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F7C32
_021F7AA0:
	ldr r0, [r4, #0xc]
	bl PokeathlonCourse_SetVBlankIntrCB
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	bl ov96_021F7D30
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r1, [r4, #0xc]
	bl ov96_021EE60C
	add r0, r4, #0
	bl ov96_021F7DA8
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ov96_021EE644
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	bl PokeathlonCourse_GetMode
	add r6, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetSaveData
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	mov r2, #5
	add r3, r6, #0
	bl ov96_021EE75C
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ov96_021EE6A0
	mov r0, #0
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	bl OS_WaitVBlankIntr
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #7
	mov r2, #1
	mov r3, #0
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #7
	mov r2, #5
	mov r3, #0x10
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #1
	mov r3, #0
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #5
	mov r3, #0x10
	bl Bg_SetTextDimAndAffineParams
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	add r0, #0x84
	bl ov96_021F7878
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x84
	bl ov96_021F78C4
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F7C32
_021F7B90:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F7BB4
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r4, r0, #0
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	strb r1, [r4]
_021F7BB4:
	add r0, r5, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #1
	bne _021F7BCC
	mov r0, #1
	bl sub_0203A994
	bl sub_0203A9C8
	bl sub_0203A86C
_021F7BCC:
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	mov r1, #1
	bl PokeathlonCourse_SetField1F4
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F7C32
_021F7BFC:
	ldr r0, _021F7C48 ; =0x00000473
	bl PlayBGM
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F7C32
_021F7C20:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F7C32
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F7C2E:
	bl GF_AssertFail
_021F7C32:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F7C38: .word 0xFFFFE0FF
_021F7C3C: .word 0x04001000
_021F7C40: .word gSystem + 0x60
_021F7C44: .word ov96_0221C2A8
_021F7C48: .word 0x00000473
	thumb_func_end ov96_021F7934

