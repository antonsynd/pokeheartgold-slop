	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02215984
	.public ov96_022159F0
	.public ov96_02215A70
	.public ov96_02215AC4
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern ov96_021E5F24
	.extern ov96_021E61D8
	.extern ov96_021E637C
	.extern ov96_021E6670
	.extern ov96_021E667C
	.extern ov96_021E8A20
	.extern ov96_021EAA00
	.extern ov96_02215864
	.extern ov96_0221587C
	.extern ov96_02215FA8
	.extern ov96_02215FC8
	.extern ov96_02216234
	.extern ov96_022162F4
	.extern ov96_022163AC
	.extern ov96_0221654C
	.extern ov96_0221663C
	.extern ov96_02217544
	.extern ov96_02217AE4
	.extern ov96_02217B84
	.extern ov96_02218330
	.extern ov96_022193E4
	.extern ov96_022194C4
	.extern ov96_022195C8
	.extern ov96_02219F7C

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
	thumb_func_start ov96_02215984
ov96_02215984: ; 0x02215984
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	ldrb r1, [r4]
	cmp r1, #0
	beq _022159A0
	cmp r1, #1
	beq _022159BC
	cmp r1, #2
	beq _022159CC
	b _022159E0
_022159A0:
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r3, _022159EC ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_022159BC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _022159E4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022159E4
_022159CC:
	add r0, r5, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _022159E4
	add r0, r5, #0
	mov r1, #1
	bl PokeathlonCourse_SetStateField07
	b _022159E4
_022159E0:
	bl GF_AssertFail
_022159E4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022159EC: .word 0x00007FFF
	thumb_func_end ov96_02215984

	thumb_func_start ov96_022159F0
ov96_022159F0: ; 0x022159F0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02215A0A
	cmp r0, #1
	beq _02215A22
	b _02215A60
_02215A0A:
	add r0, r5, #0
	bl ov96_02215FC8
	add r0, r5, #0
	bl ov96_02216234
	cmp r0, #0
	beq _02215A64
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02215A64
_02215A22:
	add r0, r5, #0
	bl ov96_02215FC8
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _02215A64
	ldr r0, _02215A6C ; =0x000007F8
	add r0, r6, r0
	bl ov96_02215864
	cmp r0, #0
	beq _02215A64
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	mov r1, #2
	bl PokeathlonCourse_SetStateField07
	b _02215A64
_02215A60:
	bl GF_AssertFail
_02215A64:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02215A6C: .word 0x000007F8
	thumb_func_end ov96_022159F0

	thumb_func_start ov96_02215A70
ov96_02215A70: ; 0x02215A70
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _02215ABC
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02215AC0
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _02215AB8
	mov r0, #0x81
	lsl r0, r0, #2
	mov r4, #0
	add r5, r5, r0
_02215A9C:
	ldr r2, [r5]
	lsl r1, r4, #0x18
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl PokeathlonCourse_SetField5E0_AtIndex
	add r4, r4, #1
	add r5, #0xa8
	cmp r4, #4
	blt _02215A9C
_02215AB8:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02215ABC:
	bl GF_AssertFail
_02215AC0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_02215A70

	thumb_func_start ov96_02215AC4
ov96_02215AC4: ; 0x02215AC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetField1ED
	cmp r0, #4
	bls _02215ADC
	b _02215CA0
_02215ADC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02215AE8: ; jump table
	.short _02215AF2 - _02215AE8 - 2 ; case 0
	.short _02215B5C - _02215AE8 - 2 ; case 1
	.short _02215B94 - _02215AE8 - 2 ; case 2
	.short _02215BC8 - _02215AE8 - 2 ; case 3
	.short _02215C0A - _02215AE8 - 2 ; case 4
_02215AF2:
	mov r2, #6
	mov r0, #0x5c
	mov r1, #0x91
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
	ldr r0, _02215CAC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _02215CB0 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_02215FA8
	ldr r0, _02215CB4 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r1, _02215CB8 ; =0x00000814
	add r0, r5, #0
	bl PokeathlonCourse_AllocPtr4FromHeap
	ldr r2, _02215CB8 ; =0x00000814
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x91
	str r0, [r4]
	ldr r1, _02215CBC ; =0x00000708
	ldr r0, _02215CC0 ; =0x00000438
	str r1, [r4, r0]
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02215CA4
_02215B5C:
	ldr r0, [r4]
	bl BgConfig_Alloc
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #8
	bl ov96_021E6670
	add r0, r4, #0
	bl ov96_0221654C
	add r0, r4, #0
	bl ov96_0221663C
	add r0, r4, #0
	bl ov96_022193E4
	add r0, r4, #0
	bl ov96_022162F4
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_02217AE4
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02215CA4
_02215B94:
	ldr r0, [r4, #0x1c]
	bl ov96_021EAA00
	cmp r0, #0
	bne _02215BA0
	b _02215CA4
_02215BA0:
	add r0, r4, #0
	bl ov96_022163AC
	ldr r0, [r4, #0xc]
	bl SpriteManager_GetSpriteList
	add r3, r0, #0
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	mov r1, #0
	bl ov96_021E61D8
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetDrawPriority
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02215CA4
_02215BC8:
	add r0, r5, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r1, [r4]
	add r0, r5, #0
	bl ov96_02219F7C
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #4]
	bl ov96_022194C4
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02215CA4
_02215C0A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_02217B84
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ov96_022195C8
	ldr r0, [r4, #0x1c]
	mov r3, #6
	str r0, [sp]
	ldr r0, [r4]
	lsl r3, r3, #6
	str r0, [sp, #4]
	ldr r0, _02215CC4 ; =0x0000043C
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, r3]
	add r0, r4, r0
	bl ov96_02217544
	ldr r0, [r4, #4]
	bl PokeathlonCourse_SetVBlankIntrCB
	ldr r0, _02215CC8 ; =0x000007F8
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r4, r0
	bl ov96_0221587C
	add r0, r5, #0
	mov r1, #1
	bl PokeathlonCourse_SetField1F4
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _02215C84
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	ldr r2, [r0, #0x20]
	ldr r1, _02215CCC ; =0xFFF80007
	and r1, r2
	ldr r2, _02215CC0 ; =0x00000438
	ldr r2, [r4, r2]
	lsl r2, r2, #0x10
	lsr r2, r2, #0xd
	orr r1, r2
	str r1, [r0, #0x20]
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	bl ov96_02218330
_02215C84:
	mov r0, #2
	bl sub_0203A994
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x14
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02215CA0:
	bl GF_AssertFail
_02215CA4:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02215CAC: .word 0xFFFFE0FF
_02215CB0: .word 0x04001000
_02215CB4: .word gSystem + 0x60
_02215CB8: .word 0x00000814
_02215CBC: .word 0x00000708
_02215CC0: .word 0x00000438
_02215CC4: .word 0x0000043C
_02215CC8: .word 0x000007F8
_02215CCC: .word 0xFFF80007
	thumb_func_end ov96_02215AC4

