	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FC768
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetField3A4
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E6104
	.extern ov96_021E6108
	.extern ov96_021E6138
	.extern ov96_021E6168
	.extern ov96_021E6290
	.extern ov96_021E634C
	.extern ov96_021E6670
	.extern ov96_021E8A20
	.extern ov96_021E92B0
	.extern ov96_021E9A78
	.extern ov96_021EA854
	.extern ov96_021EA8A8
	.extern ov96_021EAA00
	.extern ov96_021EAA04
	.extern ov96_021EAB38
	.extern ov96_021EAC0C
	.extern ov96_021EAF6C
	.extern ov96_021EAF70
	.extern ov96_021EAF94
	.extern ov96_021EB0A4
	.extern ov96_021EB180
	.extern ov96_021EB29C
	.extern ov96_021EB3A4
	.extern ov96_021EB5C8
	.extern ov96_021EB5E8
	.extern ov96_021FCEE0
	.extern ov96_021FCF00
	.extern ov96_021FD060
	.extern ov96_021FD0E4
	.extern ov96_021FD128
	.extern ov96_021FDA30
	.extern ov96_021FEFE8
	.extern ov96_021FFB7C
	.extern ov96_021FFD4C
	.extern ov96_021FFF3C
	.extern ov96_022000E4
	.extern ov96_02200180
	.extern ov96_022002F8
	.extern ov96_022003E8
	.extern ov96_02200454
	.extern ov96_02200A64
	.extern ov96_02200B04
	.extern ov96_02200E3C
	.extern ov96_02200E78
	.extern ov96_02200E80
	.extern ov96_0221C5E4

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
	thumb_func_start ov96_021FC768
ov96_021FC768: ; 0x021FC768
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x5c
	add r4, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl PokeathlonCourse_GetField1ED
	cmp r0, #6
	bls _021FC782
	b _021FCD68
_021FC782:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FC78E: ; jump table
	.short _021FC79C - _021FC78E - 2 ; case 0
	.short _021FC870 - _021FC78E - 2 ; case 1
	.short _021FC8C6 - _021FC78E - 2 ; case 2
	.short _021FC9AC - _021FC78E - 2 ; case 3
	.short _021FCAAC - _021FC78E - 2 ; case 4
	.short _021FCD14 - _021FC78E - 2 ; case 5
	.short _021FCD52 - _021FC78E - 2 ; case 6
_021FC79C:
	mov r2, #0x1a
	mov r0, #0x5c
	mov r1, #0x90
	lsl r2, r2, #0xe
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
	ldr r0, _021FCA90 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021FCA94 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021FCEE0
	ldr r1, _021FCA98 ; =0x00000648
	add r0, r4, #0
	bl PokeathlonCourse_AllocPtr4FromHeap
	ldr r2, _021FCA98 ; =0x00000648
	mov r1, #0
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #0x90
	bl BgConfig_Alloc
	mov r2, #0xf9
	lsl r2, r2, #2
	add r1, r5, r2
	add r2, #0x78
	str r0, [r5]
	add r0, r4, #0
	add r2, r5, r2
	mov r3, #0x78
	bl PokeathlonCourse_SetField3A4
	add r0, r4, #0
	mov r1, #8
	bl ov96_021E6670
	mov r0, #0x97
	str r0, [sp, #0xa4]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0xa8]
	lsr r0, r0, #4
	mov r2, #0x90
	str r0, [sp, #0xac]
	str r2, [sp, #0xb0]
	mov r0, #0x10
	str r0, [sp]
	ldr r3, _021FCA9C ; =0x00300010
	add r0, sp, #0xa4
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
	mov r2, #0x90
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r1, #0x90
	str r1, [r5, #0x14]
	mov r0, #4
	bl FontID_Alloc
	ldr r0, [r5]
	bl ov96_021FCF00
	add r0, r5, #0
	bl ov96_021FFD4C
	ldr r0, _021FCAA0 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r4, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021FCD68
_021FC870:
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x34]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	add r2, r4, #0
	bl ov96_021FFF3C
	mov r2, #0x3e
	ldr r1, [sp, #0x34]
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r4, #0
	bl PokeathlonCourse_GetParticipantCount
	add r5, r0, #0
	add r0, r4, #0
	bl PokeathlonCourse_GetMode
	add r2, r0, #0
	ldr r0, [sp, #0x34]
	mov r1, #4
	ldr r0, [r0, #0x14]
	sub r1, r1, r5
	bl ov96_02200E3C
	mov r2, #0xf7
	ldr r1, [sp, #0x34]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, #0x14]
	ldr r1, _021FCAA4 ; =0x000002BF
	mov r2, #1
	bl ov96_021E9A78
	mov r2, #0xf1
	ldr r1, [sp, #0x34]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r4, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021FCD68
_021FC8C6:
	ldr r5, _021FCAA8 ; =ov96_0221C5E4
	add r3, sp, #0x98
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x14]
	bl ov96_021EB180
	ldr r1, [sp, #0x34]
	str r0, [r1, #0x18]
	mov r0, #2
	lsl r0, r0, #0x14
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0
	ldr r0, [r0, #0x18]
	add r2, r1, #0
	add r3, r1, #0
	bl ov96_021EB5C8
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x18]
	bl ov96_021EB5E8
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r5, #0xf1
	ldr r3, [sp, #0x34]
	lsl r5, r5, #2
	ldr r0, [r0, #0x14]
	ldr r3, [r3, r5]
	mov r1, #0xc
	mov r2, #4
	bl ov96_021EA854
	ldr r1, [sp, #0x34]
	add r2, r5, #4
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, #0x18]
	mov r1, #0
	mov r2, #0x65
	bl ov96_021EB29C
	ldr r0, [sp, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x18]
	mov r2, #0x66
	bl ov96_021EB29C
	ldr r0, [sp, #0x34]
	mov r1, #2
	ldr r0, [r0, #0x18]
	mov r2, #0x67
	bl ov96_021EB29C
	ldr r0, [sp, #0x34]
	mov r1, #3
	ldr r0, [r0, #0x18]
	mov r2, #0x68
	bl ov96_021EB29C
	add r1, r5, #0
	ldr r0, [sp, #0x34]
	add r1, #0x1c
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x34]
	ldr r1, [r1, #0x18]
	bl ov96_022000E4
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x18]
	bl ov96_021FD0E4
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x18]
	bl ov96_021EB3A4
	ldr r2, [sp, #0x34]
	add r3, r5, #0
	ldr r2, [r2, r3]
	ldr r3, [sp, #0x34]
	add r0, r4, #0
	ldr r3, [r3, #0x18]
	mov r1, #0
	bl ov96_021E6290
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #0x34]
	add r1, r0, #0
	ldr r1, [r1, #0x18]
	bl ov96_021FD128
	add r3, r5, #0
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x34]
	add r3, #0x1c
	ldr r0, [r0, r3]
	ldr r2, [sp, #0x34]
	sub r3, #0x1c
	ldr r1, [r1, #0x18]
	ldr r2, [r2, r3]
	bl ov96_02200180
	add r0, r4, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021FCD68
_021FC9AC:
	add r0, sp, #0x154
	mov r7, #0
	add r5, sp, #0x198
	str r0, [sp, #0x1c]
	add r6, sp, #0x68
_021FC9B6:
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x18]
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r3, r5, #0
	bl ov96_021E6168
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	ldr r1, [sp, #0x1c]
	add r7, r7, #1
	str r0, [r1, #0x14]
	ldrh r0, [r5]
	strh r0, [r6]
	ldrh r0, [r5, #2]
	add r5, #0x10
	strh r0, [r6, #2]
	add r0, r1, #0
	add r0, r0, #4
	add r6, r6, #4
	str r0, [sp, #0x1c]
	cmp r7, #0xc
	blt _021FC9B6
	mov r1, #0x3e
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, sp, #0x68
	bl ov96_022002F8
	add r0, r4, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r1, #0x3e
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	lsl r1, r3, #1
	add r1, r3, r1
	add r2, sp, #0x198
	lsl r1, r1, #4
	add r1, r2, r1
	bl ov96_022003E8
	mov r1, #0x3e
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	mov r2, #1
	bl ov96_02200454
	mov r1, #0x3e
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #1
	mov r2, #2
	bl ov96_02200454
	mov r1, #0
	mov r0, #2
	str r0, [sp, #0x158]
	mov r0, #1
	str r1, [sp, #0x154]
	str r1, [sp, #0x15c]
	str r0, [sp, #0x160]
	str r0, [sp, #0x164]
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0xf2
	ldr r0, [sp, #0x34]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0xc
	add r2, sp, #0x198
	add r3, sp, #0x154
	bl ov96_021EA8A8
	add r0, r4, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r2, #0x3e
	ldr r0, [sp, #0x34]
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	bl ov96_02200B04
	add r0, r4, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021FCD68
	.balign 4, 0
_021FCA90: .word 0xFFFFE0FF
_021FCA94: .word 0x04001000
_021FCA98: .word 0x00000648
_021FCA9C: .word 0x00300010
_021FCAA0: .word gSystem + 0x60
_021FCAA4: .word 0x000002BF
_021FCAA8: .word ov96_0221C5E4
_021FCAAC:
	mov r1, #0xf2
	ldr r0, [sp, #0x34]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl ov96_021EAA00
	cmp r0, #0
	bne _021FCABE
	b _021FCD68
_021FCABE:
	add r0, r4, #0
	bl ov96_021E5F24
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	bl PokeathlonCourse_SetVBlankIntrCB
	add r0, r4, #0
	mov r1, #1
	bl PokeathlonCourse_SetField1F4
	add r0, sp, #0x50
	mov r1, #0xaa
	mov r2, #0xc
	bl ReadWholeNarcMemberByIdPair
	ldr r0, [sp, #0x34]
	mov r5, #0
	str r0, [sp, #0x40]
	add r0, #0x30
	str r0, [sp, #0x40]
_021FCAEA:
	mov r0, #0xf2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x14]
	cmp r1, #0
	bne _021FCB12
	add r0, r6, #0
	mov r1, #1
	bl ov96_021EAB38
_021FCB12:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov96_021E60C0
	bl ov96_021E6138
	lsl r1, r0, #3
	add r0, sp, #0x50
	add r2, r0, r1
	add r1, r2, #0
	sub r1, #8
	sub r2, r2, #4
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, r6, #0
	bl ov96_021EAF70
	mov r0, #0xf2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r1, #0xd4
	str r0, [sp, #0x3c]
	mul r1, r0
	ldr r0, [sp, #0x40]
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp, #0x2c]
	str r6, [r0, r1]
	ldr r0, [sp, #0x3c]
	add r1, r0, #1
	add r7, r1, #0
	ldr r1, [sp, #0x2c]
	mov r0, #0x1b
	mul r7, r0
	add r1, #0x88
	mov r0, #4
	strb r0, [r1]
	add r7, #0x28
	add r0, r6, #0
	mov r1, #4
	bl ov96_021EAC0C
	add r0, r6, #0
	mov r1, #0x50
	add r2, r7, #0
	bl ov96_021EAF94
	bl ov96_021E6104
	add r1, r0, #0
	add r0, r6, #0
	bl ov96_021EAF6C
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r1, [r0, #0x7c]
	add r0, #0x80
	lsl r1, r7, #0xc
	str r1, [r0]
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bne _021FCBDE
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021FCBDE
	add r0, sp, #0x44
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x50
	add r2, r7, #0
	add r3, sp, #0x48
	bl ov96_021EB0A4
	ldr r1, [sp, #0x48]
	add r0, sp, #0x44
	strh r1, [r0, #8]
	ldr r1, [sp, #0x44]
	strh r1, [r0, #0xa]
_021FCBDE:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021FCAEA
	ldr r6, [sp, #0x34]
	mov r5, #0
	add r6, #0x30
	mov r7, #1
_021FCBEC:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r5, r0
	bne _021FCBFA
	add r2, r7, #0
	b _021FCBFC
_021FCBFA:
	mov r2, #0
_021FCBFC:
	add r1, r6, #0
	add r1, #0x80
	ldr r1, [r1]
	add r0, r6, #0
	asr r3, r1, #0xb
	lsr r3, r3, #0x14
	add r3, r1, r3
	asr r1, r3, #0xc
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021FFB7C
	add r5, r5, #1
	add r6, #0xd4
	cmp r5, #4
	blt _021FCBEC
	add r0, sp, #0xb4
	mov r1, #0xaa
	mov r2, #2
	bl ReadWholeNarcMemberByIdPair
	mov r2, #0x19
	ldr r1, _021FCD70 ; =0x00000A8C
	ldr r0, [sp, #0x34]
	lsl r2, r2, #6
	strh r1, [r0, r2]
	mov r1, #0x3e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x34]
	ldrh r1, [r1, r2]
	bl ov96_02200A64
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x34]
	add r6, r0, #0
	str r0, [sp, #0x24]
	add r6, #0x30
	str r0, [sp, #0x20]
_021FCC4C:
	mov r0, #0x3b
	mov r2, #0
	ldr r1, [sp, #0x24]
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [sp, #0x28]
	add r5, r2, #0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021FCC5E:
	lsl r3, r5, #0x18
	add r0, r4, #0
	add r1, sp, #0xb4
	add r2, r7, #0
	lsr r3, r3, #0x18
	str r6, [sp]
	bl ov96_021FEFE8
	add r5, r5, #1
	cmp r5, #3
	blt _021FCC5E
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FCC92
	mov r0, #0xf7
	ldr r1, [sp, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x28]
	add r2, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_02200E78
_021FCC92:
	mov r0, #1
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	strb r2, [r1, r0]
	ldr r0, [sp, #0x24]
	add r6, #0xd4
	add r0, r0, #4
	str r0, [sp, #0x24]
	add r0, r1, #0
	add r0, #0xd4
	str r0, [sp, #0x20]
	add r0, r2, #0
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _021FCC4C
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FCCD2
	add r0, r4, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	bl ov96_021FDA30
_021FCCD2:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x4c
	mov r3, #0xf1
	str r0, [sp, #8]
	ldr r2, [sp, #0x34]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	ldr r3, [sp, #0x34]
	add r0, r4, #0
	ldr r3, [r3, #0x18]
	mov r1, #0
	bl ov96_021E634C
	ldr r0, [sp, #0x34]
	bl ov96_021FD060
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl sub_0203A994
	add r0, r4, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021FCD68
_021FCD14:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FCD4A
	mov r5, #0xf9
	lsl r5, r5, #2
	bl LCRandom
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	ldr r0, [sp, #0x34]
	mov r1, #0xe5
	add r0, r0, r5
	bl ReadWholeNarcMemberByIdPair
	add r1, r5, #0
	ldr r0, [sp, #0x34]
	sub r1, #8
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x34]
	add r1, r1, r5
	bl ov96_02200E80
_021FCD4A:
	add r0, r4, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021FCD68
_021FCD52:
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _021FCD60
	bl GF_AssertFail
_021FCD60:
	add sp, #0x1fc
	add sp, #0x5c
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FCD68:
	mov r0, #0
	add sp, #0x1fc
	add sp, #0x5c
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FCD70: .word 0x00000A8C
	thumb_func_end ov96_021FC768

