	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FD128
	.public ov96_021FD2E0
	.public ov96_021FD3EC
	.public ov96_021FD46C
	.public ov96_021FD4D0
	.public ov96_021FDA30
	.public ov96_021FDB64
	.public ov96_021FDC7C
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateTransitionType
	.extern ov96_021E5F24
	.extern ov96_021E637C
	.extern ov96_021E6454
	.extern ov96_021E667C
	.extern ov96_021E8228
	.extern ov96_021E8324
	.extern ov96_021E8A20
	.extern ov96_021EA424
	.extern ov96_021EB144
	.extern ov96_021EB408
	.extern ov96_021EB4F4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB570
	.extern ov96_021EB588
	.extern ov96_021EB5E8
	.extern ov96_021EB63C
	.extern ov96_021FDE08
	.extern ov96_021FDE6C
	.extern ov96_021FDE7C
	.extern ov96_021FE550
	.extern ov96_021FEAEC
	.extern ov96_021FF6DC
	.extern ov96_021FF72C
	.extern ov96_021FFB44
	.extern ov96_021FFBD8
	.extern ov96_021FFC34
	.extern ov96_021FFE5C
	.extern ov96_021FFEE8
	.extern ov96_0220050C
	.extern ov96_022005B4
	.extern ov96_02200A64
	.extern ov96_02200EF4

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
	thumb_func_start ov96_021FD128
ov96_021FD128: ; 0x021FD128
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
	mov r6, #6
_021FD134:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021FD134
	mov r4, #0
	mov r6, #7
_021FD14C:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	mov r0, #9
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xb
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #4
	blt _021FD14C
	mov r4, #0
	mov r6, #0xe
_021FD194:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #4
	blt _021FD194
	mov r0, #0xc
	mov r1, #1
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xf
	mov r1, #1
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r6, #0
	add r4, r7, #0
_021FD1CC:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #6
	bl ov96_021EB4F4
	ldr r1, _021FD2DC ; =0x000004D8
	add r6, r6, #1
	str r0, [r4, r1]
	add r4, #0xc
	cmp r6, #0x1e
	blt _021FD1CC
	mov r6, #0
	add r4, r7, #0
_021FD1E6:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #7
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #9
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xb
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xd
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #3
	bl ov96_021EB564
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #8
	bl ov96_021EB564
	add r6, r6, #1
	add r4, #0xd4
	cmp r6, #4
	blt _021FD1E6
	mov r6, #0
	add r4, r7, #0
_021FD24A:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xe
	bl ov96_021EB4F4
	mov r1, #0xf3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021FD24A
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xc
	bl ov96_021EB4F4
	str r0, [r7, #0x1c]
	mov r1, #0xb
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r7, #0x1c]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	lsr r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x1c]
	add r1, sp, #4
	bl ov96_021EB588
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xf
	bl ov96_021EB4F4
	str r0, [r7, #0x28]
	mov r1, #0xa
	bl ov96_021EB564
	ldr r0, [r7, #0x18]
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r3, [r7, #0x14]
	mov r2, #0
	bl ov96_021EA424
	str r0, [r7, #0x20]
	ldr r0, [r7, #0x18]
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r3, [r7, #0x14]
	mov r2, #0
	bl ov96_021EA424
	str r0, [r7, #0x24]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FD2DC: .word 0x000004D8
	thumb_func_end ov96_021FD128

	thumb_func_start ov96_021FD2E0
ov96_021FD2E0: ; 0x021FD2E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FD300
	cmp r0, #1
	beq _021FD3A0
	cmp r0, #2
	beq _021FD3C6
	b _021FD3D6
_021FD300:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldr r1, _021FD3DC ; =0x000004D4
	str r0, [sp, #0x14]
	add r5, r0, #0
	add r7, r0, r1
_021FD30E:
	ldr r1, [sp, #0x14]
	ldr r0, _021FD3E0 ; =0x0000045C
	ldr r0, [r1, r0]
	lsl r1, r0, #0x18
	asr r2, r0, #8
	asr r0, r0, #0x10
	lsl r2, r2, #0x18
	lsl r0, r0, #0x10
	lsr r1, r1, #0x18
	lsr r6, r2, #0x18
	lsr r4, r0, #0x10
	cmp r1, #0
	beq _021FD370
	ldr r0, _021FD3DC ; =0x000004D4
	mov r2, #1
	str r2, [r5, r0]
	add r0, #0xb
	strb r1, [r5, r0]
	ldr r0, _021FD3E4 ; =0x000004DC
	sub r1, r1, #1
	strh r4, [r5, r0]
	add r0, r0, #2
	strb r6, [r5, r0]
	ldr r0, _021FD3E8 ; =0x000004D8
	ldr r0, [r5, r0]
	bl ov96_021EB564
	ldr r0, _021FD3E8 ; =0x000004D8
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #0
	add r4, #0x50
	str r0, [sp, #0x28]
	lsl r0, r4, #0xc
	add r6, #0x20
	str r0, [sp, #0x20]
	lsl r0, r6, #0xc
	str r0, [sp, #0x24]
	ldr r0, _021FD3E8 ; =0x000004D8
	add r1, sp, #0x20
	ldr r0, [r5, r0]
	bl ov96_021EB588
	add r0, r7, #0
	bl ov96_021FFB44
_021FD370:
	ldr r0, [sp, #0x14]
	add r5, #0xc
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r7, #0xc
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0x1e
	blt _021FD30E
	ldr r0, [sp, #0x18]
	mov r1, #0
	bl ov96_021FEAEC
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x12
	bl PokeathlonCourse_SetStateTransitionType
	b _021FD3D6
_021FD3A0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r1, #3
	ldr r0, [r0, #0x14]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #2
	mov r3, #0
	bl BeginNormalPaletteFade
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	b _021FD3D6
_021FD3C6:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021FD3D6
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl PokeathlonCourse_SetStateField07
_021FD3D6:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD3DC: .word 0x000004D4
_021FD3E0: .word 0x0000045C
_021FD3E4: .word 0x000004DC
_021FD3E8: .word 0x000004D8
	thumb_func_end ov96_021FD2E0

	thumb_func_start ov96_021FD3EC
ov96_021FD3EC: ; 0x021FD3EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021FD40A
	cmp r0, #1
	beq _021FD41C
	cmp r0, #2
	beq _021FD434
	b _021FD464
_021FD40A:
	add r0, r5, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _021FD464
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021FD464
_021FD41C:
	add r0, r5, #0
	bl ov96_021FD4D0
	add r0, r5, #0
	bl ov96_021FDB64
	cmp r0, #0
	beq _021FD464
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021FD464
_021FD434:
	add r0, r5, #0
	bl ov96_021FD4D0
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _021FD464
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	mov r1, #2
	bl PokeathlonCourse_SetStateField07
_021FD464:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021FD3EC

	thumb_func_start ov96_021FD46C
ov96_021FD46C: ; 0x021FD46C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _021FD48E
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021FD48A
	mov r0, #1
	strb r0, [r4]
_021FD48A:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021FD48E:
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r0, #0
	beq _021FD49C
	mov r0, #1
	pop {r4, r5, r6, pc}
_021FD49C:
	mov r4, #0
	add r5, #0x30
_021FD4A0:
	ldr r2, [r5, #0x7c]
	lsl r1, r4, #0x18
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, r5, #0
	add r3, #0x9c
	ldrb r3, [r3]
	add r0, r6, #0
	lsr r1, r1, #0x18
	lsl r3, r3, #0xa
	add r2, r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl PokeathlonCourse_SetField5E0_AtIndex
	add r4, r4, #1
	add r5, #0xd4
	cmp r4, #4
	blt _021FD4A0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021FD46C

	thumb_func_start ov96_021FD4D0
ov96_021FD4D0: ; 0x021FD4D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r0, [sp, #4]
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	bl ov96_021E5F24
	cmp r0, #0
	beq _021FD4F0
	b _021FDA18
_021FD4F0:
	mov r1, #0xf
	ldr r0, [sp, #0x30]
	lsl r1, r1, #6
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021FD512
	ldr r0, [sp, #0x2c]
	add r0, #0x28
	str r0, [sp, #0x2c]
	bl ov96_021E8A20
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	bl ov96_021FDA30
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
_021FD512:
	ldr r0, [sp, #0x2c]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x2c]
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_021FD526:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _021FD526
	ldr r0, [r3]
	mov r1, #0x19
	str r0, [r4]
	ldr r0, [sp, #0x30]
	lsl r1, r1, #6
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _021FD544
	sub r2, r0, #1
	ldr r0, [sp, #0x30]
	strh r2, [r0, r1]
_021FD544:
	ldr r0, [sp, #0x2c]
	add r0, #0x28
	bl ov96_021E8A20
	ldr r4, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	add r5, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x50
	str r0, [sp, #0x1c]
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x30
	str r0, [sp, #0x18]
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0xe0
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0xec
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0xbc
	add r7, r4, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_021FD580:
	ldr r0, [sp, #0x1c]
	bl ov96_021E8A20
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _021FD5C6
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021FD5AA
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021FD5AA
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	b _021FD5D2
_021FD5AA:
	cmp r1, #0
	bne _021FD5D2
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021FD5D2
	mov r0, #0xe
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	b _021FD5D2
_021FD5C6:
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_021FD5D2:
	ldrb r1, [r6, #4]
	ldrb r2, [r6, #5]
	ldr r0, [sp, #0x30]
	bl ov96_021FDE6C
	ldr r1, [sp, #0x34]
	add r2, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	bl ov96_021FFE5C
	add r0, r5, #0
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FD674
	add r0, r5, #0
	add r0, #0xce
	ldrb r1, [r0]
	cmp r1, #1
	bne _021FD622
	ldrb r0, [r6, #8]
	cmp r0, #1
	bne _021FD622
	add r0, r5, #0
	add r0, #0xbb
	ldrb r0, [r0]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0xbb
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0xce
	mov r0, #2
	strb r0, [r1]
	b _021FD640
_021FD622:
	cmp r1, #2
	bne _021FD640
	ldrb r0, [r6, #8]
	cmp r0, #2
	bne _021FD640
	add r1, r5, #0
	add r1, #0xce
	mov r0, #0
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xcd
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xd3
	strb r0, [r1]
_021FD640:
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r1, r5, #0
	add r3, r5, #0
	add r1, #0xe8
	add r2, r5, #0
	add r3, #0xe0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xec
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021FD994
_021FD674:
	add r0, r5, #0
	add r0, #0xbb
	ldrb r1, [r0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #2
	bne _021FD6BC
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r1, r5, #0
	add r3, r5, #0
	add r1, #0xe8
	add r2, r5, #0
	add r3, #0xe0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xec
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021FD994
_021FD6BC:
	add r0, r5, #0
	add r0, #0xd9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FD6FA
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r1, r5, #0
	add r3, r5, #0
	add r1, #0xe8
	add r2, r5, #0
	add r3, #0xe0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xec
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021FD994
_021FD6FA:
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021FD786
	ldrb r1, [r6, #4]
	ldrb r2, [r6, #5]
	ldr r0, [sp, #0x30]
	bl ov96_021FDE6C
	cmp r0, #0
	beq _021FD73C
	add r1, r5, #0
	add r1, #0xcd
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xce
	strb r0, [r1]
	mov r1, #1
	add r2, r5, #0
	str r0, [sp]
	lsl r1, r1, #8
	add r2, #0xbb
	ldrb r1, [r5, r1]
	ldrb r2, [r2]
	ldr r0, [sp, #4]
	mov r3, #7
	bl ov96_021E8228
	b _021FD804
_021FD73C:
	ldr r1, [sp, #0x34]
	ldrb r2, [r6, #4]
	lsl r1, r1, #0x18
	ldrb r3, [r6, #5]
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	bl ov96_021FDE08
	cmp r0, #0
	beq _021FD804
	mov r0, #0x3b
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r7, r0]
	ldrb r0, [r6, #4]
	add r3, r5, #0
	add r2, r5, #0
	lsl r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xe0
	str r1, [r0]
	ldrb r0, [r6, #5]
	add r3, #0xe0
	add r2, #0xec
	lsl r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xe4
	str r1, [r0]
	add r1, r5, #0
	add r1, #0xe8
	mov r0, #0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021FD804
_021FD786:
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021FD7D4
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0xff
	bge _021FD7AA
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xdc
	str r1, [r0]
	b _021FD7B2
_021FD7AA:
	ldr r1, [sp, #0x30]
	ldr r0, _021FDA1C ; =0x000003C2
	mov r2, #1
	strb r2, [r1, r0]
_021FD7B2:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	cmp r0, #0
	bne _021FD7BE
	b _021FD994
_021FD7BE:
	ldrb r0, [r6, #4]
	lsl r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0]
	ldrb r0, [r6, #5]
	lsl r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xf0
	str r1, [r0]
	b _021FD804
_021FD7D4:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021FD800
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0x1e
	bgt _021FD7F0
	add r1, r5, #0
	add r1, #0xda
	mov r0, #1
	strb r0, [r1]
_021FD7F0:
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r2, r1, #0
	ldr r1, [sp, #0x30]
	add r0, #0x12
	strb r2, [r1, r0]
_021FD800:
	mov r0, #1
	str r0, [sp, #0x28]
_021FD804:
	add r0, r5, #0
	add r0, #0xda
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FD810
	b _021FD964
_021FD810:
	mov r1, #0
	add r0, sp, #0x44
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r5, #0
	add r0, #0xbb
	ldrb r1, [r0]
	mov r0, #0x1c
	mul r0, r1
	add r2, r5, r0
	ldr r0, [r2, #0x48]
	ldr r6, [r2, #0x4c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	bl ov96_021FF6DC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	bl _fmul
	bl _f2d
	ldr r3, _021FDA20 ; =0x40200000
	mov r2, #0
	bl _ddiv
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FDA24 ; =0x40B00000
	mov r0, #0
	bl _dmul
	bl _dfix
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x50
	bl VEC_Subtract
	ldr r1, [sp, #0x50]
	cmp r1, #0
	bge _021FD89C
	ldr r0, _021FDA28 ; =0xFFFF0000
	cmp r1, r0
	bge _021FD894
	add r1, r5, #0
	add r1, #0xcd
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xce
	strb r0, [r1]
	mov r1, #1
	add r2, r5, #0
	str r0, [sp]
	lsl r1, r1, #8
	add r2, #0xbb
	ldrb r1, [r5, r1]
	ldrb r2, [r2]
	ldr r0, [sp, #4]
	mov r3, #7
	bl ov96_021E8228
_021FD894:
	mov r0, #0
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
_021FD89C:
	add r1, sp, #0x50
	add r0, r6, #0
	add r2, sp, #0x44
	add r3, r1, #0
	bl VEC_MultAdd
	add r0, sp, #0x50
	bl VEC_Mag
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	bl _fflt
	add r3, r5, #0
	add r3, #0xbc
	add r2, sp, #0x5c
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x50
	str r0, [r2]
	add r0, r6, #0
	add r2, r6, #0
	bl ov96_021FF72C
	add r0, r6, #0
	bl VEC_Mag
	bl _fflt
	add r6, r0, #0
	ldr r0, _021FDA2C ; =0x45800000
	ldr r1, [sp, #0x20]
	bl _fmul
	add r1, r0, #0
	add r0, r6, #0
	bl _fgr
	bls _021FD91C
	mov r1, #0
	add r0, sp, #0x38
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0x5c
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, _021FDA2C ; =0x45800000
	ldr r1, [sp, #0x20]
	bl _fmul
	bl _ffix
	ldr r3, [sp, #0xc]
	add r1, sp, #0x5c
	add r2, sp, #0x38
	bl VEC_MultAdd
	b _021FD926
_021FD91C:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r1, sp, #0x50
	bl ov96_021FF72C
_021FD926:
	ldr r0, [sp, #0x18]
	add r0, #0x8c
	bl VEC_Mag
	ldr r1, [sp, #0x18]
	add r1, #0x8b
	ldrb r2, [r1]
	mov r1, #0x1c
	add r3, r2, #0
	mul r3, r1
	ldr r1, [sp, #0x18]
	add r1, r1, r3
	add r1, #0x2e
	ldrb r1, [r1]
	sub r1, r1, #3
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _021FD95C
	ldr r1, [sp, #0x18]
	mov r0, #1
	str r0, [sp]
	add r1, #0xd0
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	mov r3, #6
	bl ov96_021E8228
_021FD95C:
	add r1, r5, #0
	add r1, #0xda
	mov r0, #0
	strb r0, [r1]
_021FD964:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021FD994
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r1, r5, #0
	add r3, r5, #0
	add r1, #0xe8
	add r2, r5, #0
	add r3, #0xe0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xec
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_021FD994:
	ldr r0, [sp, #0x1c]
	add r4, #0xc
	add r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r5, #0xd4
	add r0, #0xd4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r7, r7, #4
	add r0, #0xd4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0xd4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0xd4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0xd4
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #4
	bge _021FD9CA
	b _021FD580
_021FD9CA:
	mov r2, #0xf7
	ldr r1, [sp, #0x30]
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	mov r3, #0x19
	ldr r2, [sp, #0x30]
	lsl r3, r3, #6
	ldrh r2, [r2, r3]
	ldr r0, [sp, #4]
	bl ov96_02200EF4
	ldr r0, [sp, #4]
	bl ov96_021FDE7C
	mov r1, #0x19
	ldr r0, [sp, #0x30]
	lsl r1, r1, #6
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _021FD9FC
	mov r1, #0xf
	mov r2, #1
	lsl r1, r1, #6
	ldr r0, [sp, #0x30]
	b _021FDA04
_021FD9FC:
	mov r1, #0xf
	ldr r0, [sp, #0x30]
	mov r2, #0
	lsl r1, r1, #6
_021FDA04:
	strb r2, [r0, r1]
	ldr r0, [sp, #0x2c]
	add r0, #0x28
	str r0, [sp, #0x2c]
	bl ov96_021E8A20
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	bl ov96_021FDA30
_021FDA18:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDA1C: .word 0x000003C2
_021FDA20: .word 0x40200000
_021FDA24: .word 0x40B00000
_021FDA28: .word 0xFFFF0000
_021FDA2C: .word 0x45800000
	thumb_func_end ov96_021FD4D0

	thumb_func_start ov96_021FDA30
ov96_021FDA30: ; 0x021FDA30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r2, #0
	str r0, [sp]
	mov lr, r2
	add r0, r2, #0
	str r0, [sp, #0x14]
	ldr r3, [sp]
	mov r0, lr
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r1, [sp, #4]
	add r7, r2, #0
	add r3, #0x30
	str r0, [sp, #0xc]
	mov r6, lr
_021FDA50:
	add r0, r3, #0
	add r0, #0x8b
	add r4, r3, #0
	add r4, #0xa2
	ldrb r4, [r4]
	ldrb r0, [r0]
	mov r1, #0
	lsl r4, r4, #2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r4
	mov ip, r0
	add r0, r3, #0
	add r0, #0x9e
	ldrb r4, [r0]
	ldr r0, [sp, #0x10]
	lsl r4, r0
	mov r0, lr
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov lr, r0
	add r0, r3, #0
	add r0, #0x9d
	ldrb r0, [r0]
	lsl r4, r0, #7
	add r0, r3, #0
	add r0, #0x9c
	ldrb r0, [r0]
	add r5, r4, r0
	ldr r0, [sp, #4]
	add r0, r0, r7
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0x80
	ldr r4, [r0]
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r4, r0, #0xc
	ldr r0, [sp, #8]
	strb r4, [r0, #8]
	ldr r4, [r3, #0x7c]
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r4, r0, #0xc
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	ldr r0, [sp, #8]
	mov r4, ip
	strb r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	add r4, r3, #0
_021FDABE:
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r5, r1, r6
	lsl r5, r5, #1
	lsl r0, r5
	add r1, r1, #1
	add r2, r2, r0
	add r4, #0x1c
	cmp r1, #3
	blt _021FDABE
	ldr r0, [sp]
	ldr r4, _021FDB60 ; =0x00000644
	add r0, r0, r7
	ldrb r1, [r0, r4]
	ldr r0, [sp, #8]
	add r6, r6, #3
	strb r1, [r0, #0x1e]
	add r0, r3, #0
	add r0, #0xd1
	ldrb r0, [r0]
	add r3, #0xd4
	add r1, r0, #0
	lsl r1, r7
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #2
	str r0, [sp, #0xc]
	cmp r7, #4
	blt _021FDA50
	ldr r0, [sp, #4]
	mov r1, lr
	strb r1, [r0, #0x1d]
	str r2, [r0, #0x14]
	mov r1, #0xf
	ldr r0, [sp]
	lsl r1, r1, #6
	ldrb r0, [r0, r1]
	add r1, r4, #0
	sub r1, #8
	lsl r0, r0, #0x18
	add r2, r2, r0
	ldr r0, [sp, #4]
	str r2, [r0, #0x14]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x19
	add r1, r2, r0
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x1a
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r0, [sp]
	sub r1, r4, #6
	ldrh r1, [r0, r1]
	ldr r0, [sp, #4]
	strh r1, [r0, #0x1a]
	ldr r0, [sp]
	sub r1, r4, #7
	ldrb r1, [r0, r1]
	ldr r0, [sp, #4]
	strb r1, [r0, #0x1c]
	ldr r0, [sp]
	sub r1, r4, #4
	ldrh r1, [r0, r1]
	ldr r0, [sp, #4]
	strh r1, [r0, #0x18]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FDB60: .word 0x00000644
	thumb_func_end ov96_021FDA30

	thumb_func_start ov96_021FDB64
ov96_021FDB64: ; 0x021FDB64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #4]
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r5, r0, #0
	bl ov96_021E8A20
	add r4, r0, #0
	mov r0, #0
	add r5, #0xf0
	str r0, [r4]
	add r0, r5, #0
	bl ov96_021E8A20
	ldr r0, [r0, #0x14]
	mov r1, #1
	asr r0, r0, #0x18
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021FDC30
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r0, [r0, #0x28]
	bl ov96_021EB52C
	ldr r0, [sp, #4]
	mov r1, #0
	ldr r0, [r0, #0x20]
	bl Sprite_SetDrawFlag
	ldr r0, [sp, #4]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl Sprite_SetDrawFlag
	ldr r0, [sp, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl ov96_021EB63C
	mov r1, #0xf2
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl ov96_021EB144
	ldr r1, _021FDC74 ; =ov96_021FFEE8
	add r0, r7, #0
	bl ov96_021E8324
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FDC2A
	mov r5, #0
_021FDBE2:
	mov r0, #0xd4
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r4, #0
	add r6, r0, r1
_021FDBEE:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r1, [r0, #0x3c]
	add r2, r4, #0
	asr r0, r1, #9
	lsr r0, r0, #0x16
	add r0, r1, r0
	asr r1, r0, #0xa
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #3
	bl ov96_021E8228
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021FDBEE
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021FDBE2
_021FDC2A:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FDC30:
	bl System_GetTouchNew
	cmp r0, #0
	beq _021FDC52
	add r0, r7, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_021FDC52:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _021FDC68
	ldr r0, _021FDC78 ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	strb r1, [r4, #4]
	ldrh r0, [r0, #0x22]
	strb r0, [r4, #5]
	mov r0, #1
	str r0, [r4]
_021FDC68:
	add r0, r7, #0
	bl ov96_021FDC7C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDC74: .word ov96_021FFEE8
_021FDC78: .word gSystem + 0x40
	thumb_func_end ov96_021FDB64

	thumb_func_start ov96_021FDC7C
ov96_021FDC7C: ; 0x021FDC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #8]
	add r0, #0xf0
	bl ov96_021E8A20
	add r7, r0, #0
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r5, #0
	add r6, r7, #0
_021FDCA8:
	mov r0, #0x3e
	lsl r0, r0, #4
	lsl r1, r5, #0x18
	ldrh r2, [r6]
	ldr r0, [r4, r0]
	lsr r1, r1, #0x18
	bl ov96_0220050C
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #4
	blt _021FDCA8
	ldr r0, [sp, #4]
	mov r1, #0
	lsl r5, r0, #1
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	add r2, r1, #0
	bl ScheduleSetBgPosText
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	mov r1, #1
	mov r2, #0
	lsr r3, r3, #1
	bl ScheduleSetBgPosText
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0
	lsl r3, r3, #1
	bl ScheduleSetBgPosText
	add r2, r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	add r2, #0x30
	bl ov96_021FE550
	ldrh r1, [r7, r5]
	add r0, r4, #0
	bl ov96_021FEAEC
	ldr r0, [sp, #4]
	add r0, r7, r0
	ldrb r1, [r0, #0x10]
	mov r0, #0x7f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r7, #0x14]
	asr r1, r0, #0x1a
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	asr r0, r1
	mov r1, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021FDD2E
	mov r2, #0
	b _021FDD30
_021FDD2E:
	ldrh r2, [r7, r5]
_021FDD30:
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl ov96_022005B4
	ldr r0, [r7, #0x14]
	asr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _021FDD54
	add r0, r4, #0
	add r0, #0x20
	add r1, r6, #0
	bl ov96_021FFC34
_021FDD54:
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrh r1, [r7, #0x18]
	ldr r0, [r4, r0]
	bl ov96_02200A64
	ldr r0, [sp, #4]
	add r0, r7, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #4
	bhi _021FDDE6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FDD76: ; jump table
	.short _021FDD80 - _021FDD76 - 2 ; case 0
	.short _021FDDD8 - _021FDD76 - 2 ; case 1
	.short _021FDDA0 - _021FDD76 - 2 ; case 2
	.short _021FDD90 - _021FDD76 - 2 ; case 3
	.short _021FDDBC - _021FDD76 - 2 ; case 4
_021FDD80:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xb
	bl ov96_021EB570
	b _021FDDE6
_021FDD90:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl ov96_021EB570
	b _021FDDE6
_021FDDA0:
	ldr r0, _021FDDFC ; =0x00000642
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _021FDDB2
	mov r1, #1
	strh r1, [r4, r0]
	ldr r0, _021FDE00 ; =0x0000089B
	bl PlaySE
_021FDDB2:
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl ov96_021EB570
	b _021FDDE6
_021FDDBC:
	ldr r0, _021FDDFC ; =0x00000642
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _021FDDCE
	mov r1, #1
	strh r1, [r4, r0]
	ldr r0, _021FDE04 ; =0x0000089C
	bl PlaySE
_021FDDCE:
	ldr r0, [r4, #0x1c]
	mov r1, #0xe
	bl ov96_021EB570
	b _021FDDE6
_021FDDD8:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xf
	bl ov96_021EB570
_021FDDE6:
	ldrh r1, [r7, r5]
	ldr r0, [r4]
	bl ov96_021FFBD8
	ldrh r1, [r7, #0x18]
	ldr r0, [sp]
	bl ov96_021E6454
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021FDDFC: .word 0x00000642
_021FDE00: .word 0x0000089B
_021FDE04: .word 0x0000089C
	thumb_func_end ov96_021FDC7C

