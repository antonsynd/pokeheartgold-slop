	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F010C
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E6104
	.extern ov96_021E6108
	.extern ov96_021E6138
	.extern ov96_021E6168
	.extern ov96_021E6290
	.extern ov96_021E634C
	.extern ov96_021E64B8
	.extern ov96_021E64F8
	.extern ov96_021E6670
	.extern ov96_021E8A20
	.extern ov96_021E8BB0
	.extern ov96_021E8BB4
	.extern ov96_021E90FC
	.extern ov96_021E92B0
	.extern ov96_021E9A78
	.extern ov96_021EA854
	.extern ov96_021EA8A8
	.extern ov96_021EAA00
	.extern ov96_021EAA04
	.extern ov96_021EAA20
	.extern ov96_021EAB38
	.extern ov96_021EABA8
	.extern ov96_021EABF4
	.extern ov96_021EAC0C
	.extern ov96_021EAF6C
	.extern ov96_021EAF70
	.extern ov96_021EAF94
	.extern ov96_021EB0A4
	.extern ov96_021EB180
	.extern ov96_021EB29C
	.extern ov96_021EB2BC
	.extern ov96_021EB2F4
	.extern ov96_021EB334
	.extern ov96_021EB36C
	.extern ov96_021EB3A4
	.extern ov96_021EB408
	.extern ov96_021EB4F4
	.extern ov96_021EB5B8
	.extern ov96_021EB5C8
	.extern ov96_021EB5E8
	.extern ov96_021F0A5C
	.extern ov96_021F0BD4
	.extern ov96_021F0D60
	.extern ov96_021F0F04
	.extern ov96_021F2B24
	.extern ov96_021F2EC8
	.extern ov96_021F30A4
	.extern ov96_021F30C4
	.extern ov96_021F31F0
	.extern ov96_021F3390
	.extern ov96_021F33E0
	.extern ov96_021F3BF0
	.extern ov96_021F3E58
	.extern ov96_021F3E60
	.extern ov96_021F3EC0
	.extern ov96_021F3F80
	.extern ov96_021F424C
	.extern ov96_0221BC70
	.extern ov96_0221BDD4

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
	thumb_func_start ov96_021F010C
ov96_021F010C: ; 0x021F010C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1f8
	add r7, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	add r0, r7, #0
	bl PokeathlonCourse_GetField1ED
	cmp r0, #5
	bls _021F0124
	b _021F08C4
_021F0124:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0130: ; jump table
	.short _021F013C - _021F0130 - 2 ; case 0
	.short _021F0216 - _021F0130 - 2 ; case 1
	.short _021F027A - _021F0130 - 2 ; case 2
	.short _021F04B0 - _021F0130 - 2 ; case 3
	.short _021F0588 - _021F0130 - 2 ; case 4
	.short _021F08BE - _021F0130 - 2 ; case 5
_021F013C:
	mov r2, #5
	mov r0, #0x5c
	mov r1, #0x8c
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
	ldr r0, _021F0484 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021F0488 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021F0A5C
	ldr r1, _021F048C ; =0x000007F4
	add r0, r7, #0
	bl PokeathlonCourse_AllocPtr4FromHeap
	ldr r2, _021F048C ; =0x000007F4
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x8c
	mov r1, #0x28
	bl Heap_Alloc
	mov r1, #0x7f
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	mov r0, #0x8c
	bl BgConfig_Alloc
	str r0, [r4]
	add r0, r7, #0
	mov r1, #8
	bl ov96_021E6670
	mov r0, #0x68
	str r0, [sp, #0xe4]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0xe8]
	lsr r0, r0, #4
	mov r2, #0x8c
	str r0, [sp, #0xec]
	str r2, [sp, #0xf0]
	mov r0, #0x10
	str r0, [sp]
	ldr r3, _021F0490 ; =0x00300010
	add r0, sp, #0xe4
	mov r1, #0x16
	bl ov96_021E92B0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x8c
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r1, #0x8c
	str r1, [r4, #0x14]
	mov r0, #4
	bl FontID_Alloc
	ldr r0, [r4]
	bl ov96_021F0BD4
	add r0, r4, #0
	bl ov96_021F2EC8
	ldr r0, _021F0494 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r7, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F08C4
_021F0216:
	ldr r0, [r6, #0x14]
	ldr r1, [r6]
	add r2, r7, #0
	bl ov96_021F3BF0
	ldr r1, _021F0498 ; =0x00000774
	str r0, [r6, r1]
	add r0, r7, #0
	bl PokeathlonCourse_GetParticipantCount
	add r4, r0, #0
	add r0, r7, #0
	bl PokeathlonCourse_GetMode
	add r2, r0, #0
	mov r1, #4
	ldr r0, [r6, #0x14]
	sub r1, r1, r4
	bl ov96_021F3390
	mov r1, #0x77
	lsl r1, r1, #4
	str r0, [r6, r1]
	ldr r0, [r6, #0x14]
	ldr r1, _021F049C ; =0x00000AA7
	mov r2, #1
	bl ov96_021E9A78
	ldr r1, _021F04A0 ; =0x00000768
	str r0, [r6, r1]
	ldr r0, [r6, #0x14]
	bl ov96_021F30A4
	ldr r1, _021F04A4 ; =0x0000072C
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r2, [r6, r1]
	add r0, #0xa0
	add r1, #0x48
	str r2, [r6, r0]
	ldr r0, [r6, r1]
	bl ov96_021F3E58
	add r0, r7, #0
	bl ov96_021E64B8
	add r0, r7, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F08C4
_021F027A:
	ldr r4, _021F04A8 ; =ov96_0221BC70
	add r3, sp, #0xd8
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r6, #0x14]
	bl ov96_021EB180
	mov r1, #0
	str r0, [r6, #0x18]
	mov r0, #2
	lsl r0, r0, #0x14
	str r0, [sp]
	ldr r0, [r6, #0x18]
	add r2, r1, #0
	add r3, r1, #0
	bl ov96_021EB5C8
	ldr r0, [r6, #0x18]
	bl ov96_021EB5E8
	str r0, [sp]
	ldr r3, _021F04A0 ; =0x00000768
	ldr r0, [r6, #0x14]
	ldr r3, [r6, r3]
	mov r1, #0xc
	mov r2, #5
	bl ov96_021EA854
	ldr r1, _021F04AC ; =0x0000076C
	mov r2, #0x65
	str r0, [r6, r1]
	ldr r0, [r6, #0x18]
	mov r1, #0
	bl ov96_021EB29C
	ldr r0, [r6, #0x18]
	mov r1, #1
	mov r2, #0x68
	bl ov96_021EB29C
	ldr r0, [r6, #0x18]
	mov r1, #2
	mov r2, #0x66
	bl ov96_021EB29C
	ldr r0, [r6, #0x18]
	mov r1, #3
	mov r2, #0x67
	bl ov96_021EB29C
	ldr r0, [r6, #0x18]
	mov r1, #4
	mov r2, #0x69
	bl ov96_021EB29C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #3
	mov r3, #0x65
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0
	mov r3, #0x65
	bl ov96_021EB2F4
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB334
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #1
	mov r3, #0x65
	bl ov96_021EB36C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1c
	mov r3, #0x68
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x19
	mov r3, #0x68
	bl ov96_021EB2F4
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1b
	mov r3, #0x68
	bl ov96_021EB334
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1a
	mov r3, #0x68
	bl ov96_021EB36C
	mov r0, #2
	str r0, [sp]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x20
	mov r3, #0x69
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1d
	mov r3, #0x69
	bl ov96_021EB2F4
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1f
	mov r3, #0x69
	bl ov96_021EB334
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1e
	mov r3, #0x69
	bl ov96_021EB36C
	ldr r1, _021F0498 ; =0x00000774
	ldr r0, [r6, #0x18]
	ldr r1, [r6, r1]
	bl ov96_021F3E60
	ldr r0, [r6, #0x18]
	bl ov96_021EB3A4
	mov r4, #0
	mov r5, #2
_021F03B4:
	str r5, [sp]
	ldr r0, [r6, #0x18]
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x65
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #8
	blt _021F03B4
	mov r4, #0
	mov r5, #4
_021F03CC:
	str r5, [sp]
	mov r1, #1
	ldr r0, [r6, #0x18]
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #7
	str r0, [sp]
	mov r1, #1
	ldr r0, [r6, #0x18]
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F03CC
	ldr r0, _021F04A4 ; =0x0000072C
	ldr r1, [r6, #0x18]
	ldr r0, [r6, r0]
	bl ov96_021F30C4
	mov r4, #0
_021F03FC:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r0, r5
	add r2, r6, r0
	mov r0, #0x90
	mul r0, r1
	add r5, r2, r0
	ldr r0, [r6, #0x18]
	mov r1, #0x68
	mov r2, #4
	bl ov96_021EB4F4
	str r0, [r5, #0x24]
	bl ov96_021EB5B8
	mov r1, #2
	bl Sprite_SetDrawPriority
	ldr r0, [r6, #0x18]
	mov r1, #0x68
	mov r2, #7
	bl ov96_021EB4F4
	str r0, [r5, #0x28]
	bl ov96_021EB5B8
	mov r1, #4
	bl Sprite_SetDrawPriority
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F03FC
	ldr r2, _021F04A0 ; =0x00000768
	ldr r3, [r6, #0x18]
	ldr r2, [r6, r2]
	add r0, r7, #0
	mov r1, #0
	bl ov96_021E6290
	ldr r0, [r0]
	mov r1, #1
	str r0, [r6, #0x1c]
	bl Sprite_SetDrawPriority
	ldr r1, _021F0498 ; =0x00000774
	ldr r0, [r6, #0x18]
	ldr r1, [r6, r1]
	bl ov96_021F3EC0
	ldr r1, _021F0498 ; =0x00000774
	ldr r0, [r6, #0x18]
	ldr r1, [r6, r1]
	bl ov96_021F3F80
	add r0, r7, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F08C4
	nop
_021F0484: .word 0xFFFFE0FF
_021F0488: .word 0x04001000
_021F048C: .word 0x000007F4
_021F0490: .word 0x00300010
_021F0494: .word gSystem + 0x60
_021F0498: .word 0x00000774
_021F049C: .word 0x00000AA7
_021F04A0: .word 0x00000768
_021F04A4: .word 0x0000072C
_021F04A8: .word ov96_0221BC70
_021F04AC: .word 0x0000076C
_021F04B0:
	add r0, sp, #0x138
	str r0, [sp, #0x28]
	add r0, sp, #0xf4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r4, #0
	str r0, [sp, #0x20]
	add r0, r6, #0
	str r0, [sp, #0x4c]
	add r0, #0x20
	str r0, [sp, #0x4c]
_021F04C6:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x48]
	ldr r3, [sp, #0x28]
	add r0, r7, #0
	add r2, r5, #0
	bl ov96_021E6168
	ldr r1, [sp, #0x48]
	add r0, r7, #0
	add r2, r5, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	ldr r1, [sp, #0x24]
	str r0, [r1, #0x14]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r5, #0
	mul r2, r0
	ldr r0, [sp, #0x4c]
	add r5, r0, r2
	mov r0, #0x90
	mul r0, r1
	str r0, [sp, #0x50]
	ldr r2, [sp, #0x50]
	ldr r0, [sp, #0x20]
	add r2, r5, r2
	ldr r1, [r6, #0x14]
	add r2, #0x48
	bl ov96_021E8BB4
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x50]
	add r0, r5, r0
	add r1, r5, r1
	add r0, #0x48
	add r1, #0x68
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [sp, #0x50]
	mov r1, #0x10
	add r0, r5, r0
	add r0, #0x68
	bl TintPalette_GrayScale
	ldr r0, [sp, #0x28]
	add r4, r4, #1
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	cmp r4, #0xc
	blt _021F04C6
	mov r0, #1
	mov r1, #0
	str r1, [sp, #0xf4]
	str r0, [sp, #0xf8]
	str r1, [sp, #0xfc]
	str r0, [sp, #0x100]
	str r0, [sp, #0x104]
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F08CC ; =0x0000076C
	mov r1, #0xc
	ldr r0, [r6, r0]
	add r2, sp, #0x138
	add r3, sp, #0xf4
	bl ov96_021EA8A8
	add r0, r7, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F08C4
_021F0588:
	ldr r0, _021F08CC ; =0x0000076C
	ldr r0, [r6, r0]
	bl ov96_021EAA00
	cmp r0, #0
	bne _021F0596
	b _021F08C4
_021F0596:
	add r0, r7, #0
	bl ov96_021E5F24
	str r0, [sp, #0x40]
	ldr r0, [r6]
	bl PokeathlonCourse_SetVBlankIntrCB
	add r0, r7, #0
	mov r1, #1
	bl PokeathlonCourse_SetField1F4
	add r0, sp, #0xb4
	mov r1, #0xaa
	mov r2, #0xb
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp, #0x44]
	add r0, r6, #0
	str r0, [sp, #0x58]
	add r0, #0x20
	str r0, [sp, #0x58]
_021F05C2:
	ldr r0, _021F08CC ; =0x0000076C
	ldr r1, [sp, #0x44]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	mov r1, #1
	add r4, r0, #0
	bl ov96_021EAB38
	ldr r0, [sp, #0x44]
	mov r1, #3
	bl _s32_div_f
	add r5, r0, #0
	ldr r0, [sp, #0x44]
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	add r0, r7, #0
	add r1, r5, #0
	bl ov96_021E60C0
	bl ov96_021E6138
	lsl r1, r0, #3
	add r0, sp, #0xb4
	add r2, r0, r1
	add r1, r2, #0
	sub r1, #8
	sub r2, r2, #4
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, r4, #0
	bl ov96_021EAF70
	ldr r0, _021F08CC ; =0x0000076C
	ldr r1, [sp, #0x44]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r4, r0, #0
	bl ov96_021EAA20
	str r0, [sp, #0x54]
	mov r1, #0
	add r0, sp, #0xa8
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #0x44]
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x44]
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	mov r0, #0x1b
	add r2, r1, #0
	lsl r0, r0, #4
	mul r2, r0
	ldr r0, [sp, #0x58]
	mov r1, #0x90
	add r0, r0, r2
	ldr r2, [sp, #0x14]
	mul r1, r2
	add r5, r0, r1
	str r4, [r0, r1]
	mov r0, #1
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x54]
	bl ov96_021E90FC
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x54]
	bl ov96_021E8BB0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021F068E
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x5c]
	mov r1, #0x40
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0xac]
	b _021F06A8
_021F068E:
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x5c]
	mov r1, #0x20
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0xac]
_021F06A8:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	add r2, r1, #0
	mov r0, #0xc
	mul r2, r0
	ldr r0, _021F08D0 ; =ov96_0221BDD4
	ldr r1, [sp, #0x18]
	add r0, r0, r2
	ldr r2, [sp, #0x18]
	add r1, r0, r1
	ldrh r0, [r0, r2]
	str r0, [sp, #0x3c]
	ldrh r0, [r1, #2]
	add r1, r5, #0
	add r1, #0x40
	str r0, [sp, #0x38]
	mov r0, #2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl ov96_021EAC0C
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	bl ov96_021EAF94
	bl ov96_021E6104
	add r1, r0, #0
	add r0, r4, #0
	bl ov96_021EAF6C
	add r0, sp, #0x64
	str r0, [sp]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	add r3, sp, #0x68
	bl ov96_021EB0A4
	ldr r0, [sp, #0x68]
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x64]
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x68]
	lsl r0, r0, #0xc
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x64]
	lsl r0, r0, #0xc
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x68]
	lsl r0, r0, #0xc
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x64]
	lsl r0, r0, #0xc
	str r0, [r5, #0x20]
	add r0, r7, #0
	bl ov96_021E5F24
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bne _021F0738
	add r0, r4, #0
	mov r1, #5
	bl ov96_021EABA8
	b _021F0740
_021F0738:
	add r0, r4, #0
	mov r1, #6
	bl ov96_021EABA8
_021F0740:
	add r0, r4, #0
	add r1, sp, #0xa8
	bl ov96_021EABF4
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F0766
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r1, r0, #0
	add r0, r6, #0
	bl ov96_021F0F04
_021F0766:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bne _021F079E
	ldr r0, [sp, #0x18]
	add r1, sp, #0xcc
	add r0, r1, r0
	add r2, r1, #0
	ldr r3, [sp, #0x68]
	ldr r1, [sp, #0x18]
	strh r3, [r2, r1]
	ldr r1, [sp, #0x64]
	strh r1, [r0, #2]
	ldr r0, [r6, #0x18]
	bl ov96_021EB5E8
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, _021F08D4 ; =0x00000768
	add r0, r7, #0
	ldr r2, [r6, r2]
	add r1, r4, #0
	bl ov96_021E64F8
	mov r1, #3
	bl Sprite_SetDrawPriority
_021F079E:
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	cmp r0, #0xc
	bge _021F07AA
	b _021F05C2
_021F07AA:
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, sp, #0xcc
	str r0, [sp, #8]
	ldr r2, _021F08D4 ; =0x00000768
	ldr r3, [r6, #0x18]
	ldr r2, [r6, r2]
	add r0, r7, #0
	mov r1, #0
	bl ov96_021E634C
	add r0, sp, #0x6c
	mov r1, #0xaa
	mov r2, #1
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp, #0x34]
	add r0, r6, #0
	str r0, [sp, #0x30]
	add r0, #0x20
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x2c]
_021F07DE:
	ldr r0, [sp, #0x34]
	mov r1, #0x72
	add r2, r6, r0
	lsl r1, r1, #4
	mov r0, #0xc
	strb r0, [r2, r1]
	ldr r0, [sp, #0x34]
	ldr r5, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r4, #0
	str r0, [sp, #0x60]
_021F07F6:
	lsl r3, r4, #0x18
	ldr r2, [sp, #0x60]
	add r0, r7, #0
	add r1, sp, #0x6c
	lsr r3, r3, #0x18
	str r5, [sp]
	bl ov96_021F2B24
	add r0, r5, #0
	add r0, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x2c]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x77
	add r2, #0x8a
	lsl r0, r0, #4
	add r1, r4, r1
	lsl r1, r1, #0x18
	add r3, r5, #0
	ldrh r2, [r2]
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	add r3, #0x8e
	bl ov96_021F33E0
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #3
	blt _021F07F6
	mov r1, #0x1b
	ldr r0, [sp, #0x30]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, r0, #3
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #4
	blt _021F07DE
	mov r1, #0x73
	lsl r1, r1, #4
	mov r2, #0
	strh r2, [r6, r1]
	add r0, r1, #2
	strh r2, [r6, r0]
	add r0, r1, #0
	mov r2, #0xc
	add r0, #0xa4
	str r2, [r6, r0]
	sub r0, r1, #4
	ldrh r1, [r6, r1]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021F31F0
	mov r0, #4
	str r0, [sp]
	ldr r0, _021F08D8 ; =0x04000050
	mov r1, #0
	mov r2, #1
	mov r3, #0xc
	bl G2x_SetBlendAlpha_
	ldr r0, _021F08DC ; =0x0000074B
	mov r1, #0xc
	strb r1, [r6, r0]
	add r0, r6, #0
	bl ov96_021F0D60
	ldr r0, _021F08E0 ; =0x00000774
	ldr r0, [r6, r0]
	bl ov96_021F424C
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl sub_0203A994
	add r0, r7, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021F08C4
_021F08BE:
	add sp, #0x1f8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F08C4:
	mov r0, #0
	add sp, #0x1f8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F08CC: .word 0x0000076C
_021F08D0: .word ov96_0221BDD4
_021F08D4: .word 0x00000768
_021F08D8: .word 0x04000050
_021F08DC: .word 0x0000074B
_021F08E0: .word 0x00000774
	thumb_func_end ov96_021F010C

