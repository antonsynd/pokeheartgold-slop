	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FE550
	.public ov96_021FEAEC
	.public ov96_021FEBF0
	.public ov96_021FED3C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E8A20
	.extern ov96_021EAB38
	.extern ov96_021EAC5C
	.extern ov96_021EAF94
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB570
	.extern ov96_021EB588
	.extern ov96_021EB594
	.extern ov96_021FEECC
	.extern ov96_021FFAEC
	.extern ov96_021FFB7C
	.extern ov96_021FFE38
	.extern ov96_022006BC
	.extern ov96_02200900
	.extern ov96_02200950
	.extern ov96_02200A18
	.extern ov96_02200BC8

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
	thumb_func_start ov96_021FE550
ov96_021FE550: ; 0x021FE550
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	str r0, [sp, #0x18]
	add r0, r3, #0
	add r0, #0xf0
	str r1, [sp, #0x1c]
	add r5, r2, #0
	str r3, [sp, #0x20]
	bl ov96_021E8A20
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x18]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #1
	ldr r0, [sp, #0x58]
	ldrh r0, [r0, r1]
	add r1, sp, #0x7c
	str r0, [sp, #0x60]
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [sp, #0x58]
	ldr r0, [r0, #0x14]
	asr r1, r0, #0x19
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021FE64E
	ldr r0, [sp, #0x58]
	ldrh r1, [r0, #0x1a]
	ldr r0, [sp, #0x60]
	sub r4, r0, r1
	add r0, r4, #0
	bl _dflt
	ldr r3, _021FE8C4 ; =0x40880000
	mov r2, #0
	bl _dgeq
	blo _021FE5D0
	add r0, r4, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE8C8 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE8CC ; =0x40540000
	mov r0, #0
	bl _dadd
	bl _dfix
	add r4, r0, #0
	b _021FE5D4
_021FE5D0:
	mov r0, #0x50
	sub r4, r0, r4
_021FE5D4:
	lsl r0, r4, #0xc
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x58]
	ldr r1, _021FE8D0 ; =0x000003C3
	ldrb r0, [r0, #0x1c]
	lsl r0, r0, #0xc
	str r0, [sp, #0x80]
	ldr r0, [sp, #0x5c]
	ldrb r0, [r0, r1]
	add r1, #9
	lsl r2, r0, #2
	ldr r0, [sp, #0x5c]
	add r0, r0, r2
	ldr r0, [r0, r1]
	add r1, sp, #0x7c
	bl ov96_021EB588
	ldr r1, _021FE8D0 ; =0x000003C3
	ldr r0, [sp, #0x5c]
	ldrb r0, [r0, r1]
	add r1, #9
	lsl r2, r0, #2
	ldr r0, [sp, #0x5c]
	add r0, r0, r2
	ldr r0, [r0, r1]
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, _021FE8D0 ; =0x000003C3
	ldr r0, [sp, #0x5c]
	ldrb r0, [r0, r1]
	add r1, #9
	lsl r2, r0, #2
	ldr r0, [sp, #0x5c]
	add r0, r0, r2
	ldr r0, [r0, r1]
	mov r1, #9
	bl ov96_021EB564
	ldr r0, _021FE8D0 ; =0x000003C3
	ldr r1, [sp, #0x5c]
	mov r2, #0x1e
	ldrb r1, [r1, r0]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r1, r1, #0x1e
	sub r1, r1, r3
	ror r1, r2
	add r3, r3, r1
	ldr r1, [sp, #0x5c]
	cmp r4, #0
	strb r3, [r1, r0]
	blt _021FE64E
	add r2, #0xe2
	cmp r4, r2
	bge _021FE64E
	ldr r0, _021FE8D4 ; =0x000008A3
	mov r1, #5
	bl sub_0200606C
_021FE64E:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021FE65A
	mov r0, #1
	str r0, [sp, #0x28]
	b _021FE65E
_021FE65A:
	mov r0, #0
	str r0, [sp, #0x28]
_021FE65E:
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x3c]
	add r0, #0x50
	str r0, [sp, #0x3c]
_021FE672:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bne _021FE680
	mov r0, #1
	str r0, [sp, #0x24]
	b _021FE684
_021FE680:
	mov r0, #0
	str r0, [sp, #0x24]
_021FE684:
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldrb r0, [r0, #0xc]
	mov r1, #3
	str r0, [sp, #0x38]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	ldrh r4, [r0]
	ldr r0, [sp, #0x60]
	sub r6, r4, r0
	bl _dflt
	ldr r3, _021FE8D8 ; =0x4086A000
	mov r2, #0
	bl _dgr
	bls _021FE6E8
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r4, r0
	bhs _021FE738
	ldr r0, [sp, #0x60]
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE8C8 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r7, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	bl _dfltu
	add r2, r0, #0
	add r3, r1, #0
	add r0, r7, #0
	add r1, r6, #0
	bl _dadd
	bl _dfix
	add r6, r0, #0
	b _021FE738
_021FE6E8:
	ldr r0, [sp, #0x60]
	cmp r0, #0x64
	bge _021FE738
	add r0, r4, #0
	bl _dfltu
	ldr r3, _021FE8DC ; =0x408CE000
	mov r2, #0
	bl _dgr
	bls _021FE738
	ldr r0, [sp, #0x60]
	bl _dflt
	add r7, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	bl _dfltu
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE8C8 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r2, r0, #0
	add r3, r1, #0
	add r0, r7, #0
	add r1, r6, #0
	bl _dadd
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl _dsub
	bl _dfix
	add r6, r0, #0
_021FE738:
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x30]
	add r6, #0x50
	add r1, r1, r0
	ldrb r0, [r1, #0x10]
	asr r2, r0, #7
	mov r0, #1
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x58]
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x40]
	ldr r0, [r0, #0x14]
	add r2, r3, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x17
	asr r0, r2
	mov r2, #3
	and r0, r2
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x38]
	asr r0, r0, #2
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x54]
	lsl r0, r6, #0xc
	str r0, [sp, #0x70]
	ldrb r0, [r1, #8]
	lsl r0, r0, #0xc
	str r0, [sp, #0x74]
	mov r0, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x18]
	bl PokeathlonCourse_GetParticipantCount
	ldr r1, [sp, #0x30]
	cmp r0, r1
	bgt _021FE79C
	ldr r0, [sp, #0x3c]
	mov r4, #1
	bl ov96_021E8A20
	b _021FE7A4
_021FE79C:
	ldr r0, [sp, #0x20]
	mov r4, #0
	bl ov96_021E8A20
_021FE7A4:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	cmp r2, r1
	add r2, sp, #0x70
	bne _021FE7D8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x34]
	ldr r3, [sp, #0x58]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r1, #0x3e
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov96_021FEECC
	b _021FE7FE
_021FE7D8:
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x34]
	ldr r3, [sp, #0x58]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r1, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	str r4, [sp, #0x14]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov96_021FEECC
_021FE7FE:
	ldr r0, [sp, #0x48]
	mov r1, #0x3e
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsl r1, r1, #0x18
	ldr r3, [sp, #0x50]
	lsr r1, r1, #0x18
	bl ov96_02200950
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	cmp r0, #0
	bne _021FE83C
	mov r0, #0x1f
	mvn r0, r0
	cmp r6, r0
	blt _021FE83C
	mov r0, #0x12
	lsl r0, r0, #4
	cmp r6, r0
	bgt _021FE83C
	ldr r0, [sp, #0x54]
	mov r1, #1
	bl ov96_021EAB38
	b _021FE844
_021FE83C:
	ldr r0, [sp, #0x54]
	mov r1, #0
	bl ov96_021EAB38
_021FE844:
	mov r7, #0
	add r4, r5, #0
_021FE848:
	ldr r2, [sp, #0x2c]
	ldr r0, [r4]
	ldrb r2, [r2, #8]
	add r1, r6, #0
	bl ov96_021EAF94
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #3
	blt _021FE848
	ldr r0, [sp, #0x18]
	bl ov96_021E5F24
	ldr r1, [sp, #0x30]
	cmp r1, r0
	bne _021FE86C
	mov r2, #1
	b _021FE86E
_021FE86C:
	mov r2, #0
_021FE86E:
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	ldrb r1, [r1, #8]
	bl ov96_021FFB7C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	bl ov96_021E60C0
	ldr r2, [r5, #0x6c]
	add r1, sp, #0x70
	bl ov96_021FFAEC
	add r4, sp, #0x70
	add r3, sp, #0x64
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	mov r0, #6
	ldr r1, [sp, #0x68]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x68]
	ldr r0, [r5, #0x78]
	add r1, r2, #0
	bl ov96_021EB588
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _021FE8B2
	b _021FEA44
_021FE8B2:
	ldr r0, [sp, #0x4c]
	mov r4, #0
	add r7, r4, #0
	cmp r0, #2
	beq _021FE8E0
	cmp r0, #3
	beq _021FE938
	b _021FE990
	nop
_021FE8C4: .word 0x40880000
_021FE8C8: .word 0x40900000
_021FE8CC: .word 0x40540000
_021FE8D0: .word 0x000003C3
_021FE8D4: .word 0x000008A3
_021FE8D8: .word 0x4086A000
_021FE8DC: .word 0x408CE000
_021FE8E0:
	add r0, r5, #0
	add r0, #0xa7
	ldrb r1, [r0]
	ldr r0, [sp, #0x4c]
	cmp r0, r1
	beq _021FE8FE
	mov r1, #1
	ldr r0, [r5, #0x78]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x78]
	mov r1, #4
	bl ov96_021EB564
_021FE8FE:
	ldr r0, [sp, #0x54]
	mov r1, #8
	bl ov96_021EAC5C
	add r0, r5, #0
	add r0, #0xd2
	ldrb r0, [r0]
	mov r4, #1
	cmp r0, #1
	bhi _021FE9AA
	add r0, r5, #0
	add r0, #0xd3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FE9AA
	ldr r1, _021FEAE8 ; =0x000008A7
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	bl ov96_021FFE38
	add r0, r5, #0
	mov r1, #2
	add r0, #0xd2
	strb r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0xd3
	strb r1, [r0]
	b _021FE9AA
_021FE938:
	add r0, r5, #0
	add r0, #0xa7
	ldrb r1, [r0]
	ldr r0, [sp, #0x4c]
	cmp r0, r1
	beq _021FE956
	mov r1, #1
	ldr r0, [r5, #0x78]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x78]
	mov r1, #5
	bl ov96_021EB564
_021FE956:
	ldr r0, [sp, #0x54]
	mov r1, #8
	bl ov96_021EAC5C
	add r0, r5, #0
	add r0, #0xd2
	ldrb r0, [r0]
	mov r4, #1
	cmp r0, #1
	bhi _021FE9AA
	add r0, r5, #0
	add r0, #0xd3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FE9AA
	ldr r1, _021FEAE8 ; =0x000008A7
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	bl ov96_021FFE38
	add r0, r5, #0
	mov r1, #3
	add r0, #0xd2
	strb r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0xd3
	strb r1, [r0]
	b _021FE9AA
_021FE990:
	ldr r0, [r5, #0x78]
	mov r1, #1
	add r2, r4, #0
	bl ov96_021EB52C
	add r1, r5, #0
	ldr r0, [sp, #0x4c]
	add r1, #0xd2
	strb r0, [r1]
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0xd3
	strb r1, [r0]
_021FE9AA:
	ldr r0, [sp, #0x48]
	cmp r0, #1
	beq _021FE9B6
	cmp r0, #2
	beq _021FE9CA
	b _021FEA28
_021FE9B6:
	mov r1, #1
	ldr r0, [r5, #0x6c]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x6c]
	mov r1, #6
	bl ov96_021EB570
	b _021FEA32
_021FE9CA:
	add r0, r5, #0
	add r0, #0xa6
	ldrb r1, [r0]
	ldr r0, [sp, #0x48]
	cmp r0, r1
	beq _021FE9E8
	mov r1, #1
	ldr r0, [r5, #0x6c]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x6c]
	mov r1, #7
	bl ov96_021EB564
_021FE9E8:
	ldr r0, [sp, #0x54]
	mov r1, #0x15
	bl ov96_021EAC5C
	ldr r0, [sp, #0x24]
	mov r7, #1
	cmp r0, #0
	beq _021FEA10
	mov r0, #3
	bl sub_02006190
	cmp r0, #0
	bne _021FEA32
	mov r1, #0x89
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	lsl r1, r1, #4
	bl ov96_021FFE38
	b _021FEA32
_021FEA10:
	mov r0, #4
	bl sub_02006190
	cmp r0, #0
	bne _021FEA32
	mov r1, #0x89
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	lsl r1, r1, #4
	bl ov96_021FFE38
	b _021FEA32
_021FEA28:
	ldr r0, [r5, #0x6c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_021FEA32:
	cmp r4, #0
	bne _021FEA58
	cmp r7, #0
	bne _021FEA58
	ldr r0, [sp, #0x54]
	mov r1, #0
	bl ov96_021EAC5C
	b _021FEA58
_021FEA44:
	ldr r0, [r5, #0x78]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x6c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_021FEA58:
	add r1, r5, #0
	ldr r0, [sp, #0x4c]
	add r1, #0xa7
	strb r0, [r1]
	add r1, r5, #0
	ldr r0, [sp, #0x48]
	add r1, #0xa6
	strb r0, [r1]
	ldr r0, [sp, #0x44]
	add r5, #0xd4
	add r0, r0, #2
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x40]
	add r0, r0, #3
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r0, #0x28
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #4
	bge _021FEA88
	b _021FE672
_021FEA88:
	mov r1, #0x3e
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov96_02200BC8
	add r4, r0, #0
	mov r1, #0x3e
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #1
	bl ov96_02200BC8
	add r6, r0, #0
	ldr r0, [sp, #0x58]
	mov r2, #3
	ldr r5, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #1
	add r3, r0, r1
	mov r1, #0x3e
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r4, r3
	lsl r1, r1, #0x18
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r1, r1, #0x17
	add r4, r5, #0
	asr r4, r1
	add r1, r4, #0
	and r1, r2
	lsl r1, r1, #0x18
	lsr r3, r3, #0x17
	add r4, r5, #0
	asr r4, r3
	and r2, r4
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_02200A18
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FEAE8: .word 0x000008A7
	thumb_func_end ov96_021FE550

	thumb_func_start ov96_021FEAEC
ov96_021FEAEC: ; 0x021FEAEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	mov r6, #0
_021FEAF6:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	ldr r0, _021FEBD4 ; =0x000004D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021FEBD0
	ldr r0, _021FEBD8 ; =0x000004DE
	ldrb r7, [r4, r0]
	sub r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, [sp, #4]
	sub r5, r0, r1
	add r0, r5, #0
	bl _dflt
	ldr r3, _021FEBDC ; =0x40880000
	mov r2, #0
	bl _dgeq
	blo _021FEB4A
	add r0, r5, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FEBE0 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FEBE4 ; =0x40540000
	mov r0, #0
	bl _dadd
	bl _dfix
	add r5, r0, #0
	b _021FEB84
_021FEB4A:
	add r0, r5, #0
	bl _dflt
	ldr r3, _021FEBE8 ; =0xC0880000
	mov r2, #0
	bl _dleq
	bhi _021FEB80
	add r0, r5, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FEBE0 ; =0x40900000
	mov r0, #0
	bl _dadd
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FEBE4 ; =0x40540000
	mov r0, #0
	bl _dsub
	bl _dfix
	add r5, r0, #0
	b _021FEB84
_021FEB80:
	mov r0, #0x50
	sub r5, r0, r5
_021FEB84:
	mov r0, #0
	str r0, [sp, #0x10]
	lsl r0, r5, #0xc
	add r7, #0x20
	str r0, [sp, #8]
	lsl r0, r7, #0xc
	str r0, [sp, #0xc]
	ldr r0, _021FEBEC ; =0x000004D8
	add r1, sp, #8
	ldr r0, [r4, r0]
	bl ov96_021EB588
	mov r0, #0x1f
	mvn r0, r0
	cmp r5, r0
	blt _021FEBBA
	mov r0, #0x12
	lsl r0, r0, #4
	cmp r5, r0
	bgt _021FEBBA
	ldr r0, _021FEBEC ; =0x000004D8
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	b _021FEBC6
_021FEBBA:
	ldr r0, _021FEBEC ; =0x000004D8
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov96_021EB52C
_021FEBC6:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x1e
	blo _021FEAF6
_021FEBD0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FEBD4: .word 0x000004D4
_021FEBD8: .word 0x000004DE
_021FEBDC: .word 0x40880000
_021FEBE0: .word 0x40900000
_021FEBE4: .word 0x40540000
_021FEBE8: .word 0xC0880000
_021FEBEC: .word 0x000004D8
	thumb_func_end ov96_021FEAEC

	thumb_func_start ov96_021FEBF0
ov96_021FEBF0: ; 0x021FEBF0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, #0xa0
	ldrb r1, [r1]
	add r5, r2, #0
	ldr r6, [sp, #0x24]
	cmp r1, #3
	bls _021FEC04
	b _021FED34
_021FEC04:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021FEC10: ; jump table
	.short _021FEC18 - _021FEC10 - 2 ; case 0
	.short _021FEC84 - _021FEC10 - 2 ; case 1
	.short _021FECDE - _021FEC10 - 2 ; case 2
	.short _021FED34 - _021FEC10 - 2 ; case 3
_021FEC18:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
	mov r1, #1
	ldr r0, [r4, #0x70]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4, #0x70]
	mov r1, #8
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r4, #0x74]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EAB38
	add r0, r4, #0
	mov r1, #1
	add r0, #0xc8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa1
	strb r1, [r0]
	ldr r1, [r5]
	ldr r2, [sp, #0x2c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, _021FED38 ; =0x000008B4
	asr r0, r0, #0xc
	bl ov96_021FFE38
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021FEC84:
	ldr r0, [r4, #0x74]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #5
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x74]
	bl ov96_021EB588
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa1
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #0x14
	blo _021FED34
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021FECDE:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _021FED04
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	bl ov96_022006BC
	cmp r0, #0
	beq _021FED34
	mov r0, #1
	strb r0, [r6, #8]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021FED04:
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _021FED28
	add r1, r3, #0
	bl ov96_02200900
	cmp r0, #0
	beq _021FED34
	mov r0, #1
	strb r0, [r6, #8]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021FED28:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add r0, r0, #1
	strb r0, [r4]
_021FED34:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FED38: .word 0x000008B4
	thumb_func_end ov96_021FEBF0

	thumb_func_start ov96_021FED3C
ov96_021FED3C: ; 0x021FED3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r5, r1, #0
	add r6, r3, #0
	cmp r0, #3
	bls _021FED50
	b _021FEE56
_021FED50:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FED5C: ; jump table
	.short _021FED64 - _021FED5C - 2 ; case 0
	.short _021FEDC2 - _021FED5C - 2 ; case 1
	.short _021FEE1C - _021FED5C - 2 ; case 2
	.short _021FEE46 - _021FED5C - 2 ; case 3
_021FED64:
	add r3, r5, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0x19
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x74]
	add r1, r7, #0
	bl ov96_021EB588
	mov r1, #1
	ldr r0, [r4, #0x74]
	add r2, r1, #0
	bl ov96_021EB52C
	lsl r0, r6, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov96_021EAB38
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa1
	strb r1, [r0]
	ldr r1, [r5]
	ldr r2, [sp, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, _021FEE5C ; =0x000008B5
	asr r0, r0, #0xc
	bl ov96_021FFE38
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021FEDC2:
	ldr r0, [r4, #0x74]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #5
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x74]
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa1
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #0x14
	blo _021FEE56
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021FEE1C:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021FEE28
	ldr r0, [sp, #0x30]
	mov r1, #2
	strb r1, [r0, #8]
_021FEE28:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa0
	strb r1, [r0]
_021FEE46:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
_021FEE56:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FEE5C: .word 0x000008B5
	thumb_func_end ov96_021FED3C

