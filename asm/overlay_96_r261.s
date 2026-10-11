	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EED14
	.public ov96_021EED64
	.public ov96_021EED70
	.public ov96_021EEDCC
	.extern ov96_0221B1D4
	.extern ov96_0221B1D8

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
	thumb_func_start ov96_021EED14
ov96_021EED14: ; 0x021EED14
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	bl Sprite_GetVramType
	add r4, r0, #0
	add r0, r6, #0
	bl Sprite_GetImageProxy
	add r1, r4, #0
	bl NNS_G2dGetImageLocation
	add r6, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	bl DC_FlushRange
	cmp r4, #1
	beq _021EED44
	cmp r4, #2
	beq _021EED50
	b _021EED5C
_021EED44:
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, r5
	bl GX_LoadOBJ
	pop {r3, r4, r5, r6, r7, pc}
_021EED50:
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, r5
	bl GXS_LoadOBJ
	pop {r3, r4, r5, r6, r7, pc}
_021EED5C:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EED14

	thumb_func_start ov96_021EED64
ov96_021EED64: ; 0x021EED64
	push {r3, lr}
	mov r3, #0
	bl ov96_021EED14
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EED64

	thumb_func_start ov96_021EED70
ov96_021EED70: ; 0x021EED70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	str r2, [sp, #8]
	add r4, r3, #0
	beq _021EED82
	mov r5, #1
	add r6, r5, #0
	b _021EED86
_021EED82:
	mov r5, #2
	mov r6, #5
_021EED86:
	ldr r0, [r0]
	bl Sprite_GetPaletteProxy
	add r1, r5, #0
	bl NNS_G2dGetImagePaletteLocation
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl GfGfxLoader_GXLoadPal
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021EEDC0
	cmp r4, #0
	beq _021EEDB6
	ldr r0, _021EEDC4 ; =0x05000200
	b _021EEDB8
_021EEDB6:
	ldr r0, _021EEDC8 ; =0x05000600
_021EEDB8:
	add r0, r5, r0
	mov r1, #0x20
	bl TintPalette_GrayScale
_021EEDC0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EEDC4: .word 0x05000200
_021EEDC8: .word 0x05000600
	thumb_func_end ov96_021EED70

	thumb_func_start ov96_021EEDCC
ov96_021EEDCC: ; 0x021EEDCC
	push {r3, r4, r5, lr}
	ldr r5, _021EEDFC ; =ov96_0221B1D4
	ldr r1, _021EEE00 ; =0x0000270F
	ldr r2, _021EEE04 ; =0x0000FFFF
	mov r4, #0
_021EEDD6:
	cmp r4, r2
	bne _021EEDDE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EEDDE:
	ldr r3, [r5]
	cmp r0, r3
	bne _021EEDEC
	ldr r0, _021EEE08 ; =ov96_0221B1D8
	lsl r1, r4, #3
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_021EEDEC:
	add r4, r4, #1
	add r5, #8
	cmp r4, r1
	blt _021EEDD6
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EEDFC: .word ov96_0221B1D4
_021EEE00: .word 0x0000270F
_021EEE04: .word 0x0000FFFF
_021EEE08: .word ov96_0221B1D8
	thumb_func_end ov96_021EEDCC

