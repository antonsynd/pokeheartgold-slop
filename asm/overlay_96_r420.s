	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F8DF4

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
	thumb_func_start ov96_021F8DF4
ov96_021F8DF4: ; 0x021F8DF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r7, r2, #0
	str r3, [sp, #0x18]
	ldr r6, [sp, #0x7c]
	bl FillWindowPixelBufferText_AssumeTileSize32
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F8E90 ; =0x00010200
	ldr r3, [sp, #0x18]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl AddTextPrinterParameterizedWithColorAndSpacing
	mov r1, #1
	ldr r0, [r4, #0x14]
	add r2, r1, #0
	add r3, sp, #0x1c
	bl sub_02021AC8
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r0, [sp, #0x28]
	mov r0, #0x5f
	str r4, [sp, #0x2c]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x30]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl SpriteTransfer_GetPaletteProxy
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x74]
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x48]
	mov r0, #3
	str r0, [sp, #0x4c]
	mov r0, #1
	str r0, [sp, #0x50]
	ldr r0, [r5]
	str r0, [sp, #0x54]
	add r0, sp, #0x28
	bl sub_020135D8
	add r4, r0, #0
	mov r1, #0
	bl TextOBJ_SetPaletteNum
	str r4, [r6]
	add r3, sp, #0x1c
	ldmia r3!, {r0, r1}
	add r2, r6, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8E90: .word 0x00010200
	thumb_func_end ov96_021F8DF4

