	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EF2C0
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetCurrentParticipantIndex
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetMode
	.extern ov96_021EF23C
	.extern ov96_021EF260
	.extern ov96_021EF2A0
	.extern ov96_021EF2AC

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
	thumb_func_start ov96_021EF2C0
ov96_021EF2C0: ; 0x021EF2C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	mov r2, #1
	mov r0, #0x5c
	mov r1, #0x88
	lsl r2, r2, #0x12
	bl Heap_Create
	ldr r0, _021EF390 ; =FS_OVERLAY_ID(OVY_98)
	mov r1, #2
	mov r6, #0x88
	bl HandleLoadOverlay
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
	ldr r0, _021EF394 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021EF398 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021EF260
	add r0, r5, #0
	mov r1, #0x48
	bl PokeathlonCourse_AllocPtr4FromHeap
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0xdd
	add r1, r6, #0
	bl NARC_New
	str r0, [r4, #8]
	add r0, r6, #0
	bl BgConfig_Alloc
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov96_021EF2A0
	add r1, r4, #0
	add r1, #0x20
	strb r0, [r1]
	add r0, r5, #0
	bl PokeathlonCourse_GetCurrentParticipantIndex
	add r1, r4, #0
	add r1, #0x22
	strb r0, [r1]
	add r0, r5, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #1
	bne _021EF358
	mov r0, #1
	b _021EF35A
_021EF358:
	mov r0, #0
_021EF35A:
	str r0, [r4, #0x24]
	str r5, [r4]
	mov r0, #0x88
	str r0, [r4, #0xc]
	ldr r0, _021EF39C ; =ov96_021EF23C
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	ldr r0, _021EF3A0 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, _021EF3A4 ; =0x00007FFF
	bl sub_0200FC20
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021EF386
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
_021EF386:
	add r0, r5, #0
	bl ov96_021EF2AC
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF390: .word FS_OVERLAY_ID(OVY_98)
_021EF394: .word 0xFFFFE0FF
_021EF398: .word 0x04001000
_021EF39C: .word ov96_021EF23C
_021EF3A0: .word gSystem + 0x60
_021EF3A4: .word 0x00007FFF
	thumb_func_end ov96_021EF2C0

