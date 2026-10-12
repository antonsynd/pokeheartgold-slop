	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F48FC
	.public ov96_021F4990
	.public ov96_021F4A60
	.extern ov96_021EB5B8
	.extern ov96_021F4724
	.extern ov96_021F4B34
	.extern ov96_021F4BB4
	.extern ov96_021F4CAC
	.extern ov96_0221DC04

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
	thumb_func_start ov96_021F48FC
ov96_021F48FC: ; 0x021F48FC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	bl ov96_021F4CAC
	mov r0, #0
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0xc
	mov r3, #0x80
	bl SetBgAffine
	add r0, r5, #0
	add r0, #0xa8
	ldr r3, [r0]
	add r0, r4, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	add r0, r4, #0
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r0, #0x9c
	ldr r3, [r0]
	add r0, r4, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #7
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	add r0, r4, #0
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _021F498C ; =ov96_021F4B34
	str r0, [r5, #0x14]
	mov r0, #3
	str r0, [r5, #0x1c]
	mov r0, #1
	str r0, [r5]
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021F498C: .word ov96_021F4B34
	thumb_func_end ov96_021F48FC

	thumb_func_start ov96_021F4990
ov96_021F4990: ; 0x021F4990
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0x1c
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r0, #0xe
	lsl r0, r0, #0xe
	str r0, [sp, #0x1c]
	mov r0, #0x29
	lsl r0, r0, #0x10
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r1, sp, #0x1c
	bl Sprite_SetMatrix
	add r3, r5, #0
	add r2, r5, #0
	add r3, #0xa8
	add r2, #0xa0
	ldr r3, [r3]
	ldr r2, [r2]
	ldr r3, [r3, #8]
	add r0, r4, #0
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	add r0, r4, #0
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r0, #0x98
	ldr r3, [r0]
	add r0, r4, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #7
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	add r0, r4, #0
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	ldr r1, _021F4A54 ; =0x3CCCCCCD
	ldr r0, _021F4A58 ; =0x45800000
	bl _fmul
	bl _ffix
	mov r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0xc
	mov r3, #0x80
	bl SetBgAffine
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _021F4A5C ; =ov96_021F4BB4
	str r0, [r5, #0x14]
	mov r0, #4
	str r0, [r5, #0x1c]
	mov r0, #1
	str r0, [r5]
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F4A54: .word 0x3CCCCCCD
_021F4A58: .word 0x45800000
_021F4A5C: .word ov96_021F4BB4
	thumb_func_end ov96_021F4990

	thumb_func_start ov96_021F4A60
ov96_021F4A60: ; 0x021F4A60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov96_021F4724
	ldrh r0, [r5, #0x18]
	lsl r1, r0, #2
	ldr r0, _021F4A98 ; =ov96_0221DC04
	ldr r0, [r0, r1]
	cmp r0, #3
	bne _021F4A80
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021F48FC
	b _021F4A88
_021F4A80:
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021F4990
_021F4A88:
	ldrh r0, [r5, #0x18]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	strh r1, [r5, #0x18]
	pop {r3, r4, r5, pc}
	nop
_021F4A98: .word ov96_0221DC04
	thumb_func_end ov96_021F4A60

