	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FDE7C
	.public ov96_021FE538
	.public ov96_021FE550
	.public ov96_021FEAEC
	.public ov96_021FEBF0
	.public ov96_021FED3C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E8228
	.extern ov96_021E8A20
	.extern ov96_021EAB38
	.extern ov96_021EAC5C
	.extern ov96_021EAF8C
	.extern ov96_021EAF94
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB570
	.extern ov96_021EB588
	.extern ov96_021EB594
	.extern ov96_021FEECC
	.extern ov96_021FF5A8
	.extern ov96_021FF764
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
	thumb_func_start ov96_021FDE7C
ov96_021FDE7C: ; 0x021FDE7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #8]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r5, r0, #0
	ldr r1, _021FE1B4 ; =0x0000063C
	mov r7, #0
	str r0, [sp, #0x14]
	strb r7, [r0, r1]
	add r4, sp, #0x1c
	add r6, r0, #0
	add r5, #0x30
_021FDE96:
	mov r0, #0
	strb r0, [r4]
	add r0, r6, #0
	add r0, #0xd9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FDEB2
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	add r2, r5, #0
	bl ov96_021FE538
	mov r0, #1
	strb r0, [r4]
_021FDEB2:
	add r7, r7, #1
	add r4, r4, #1
	add r6, #0xd4
	add r5, #0xd4
	cmp r7, #4
	blt _021FDE96
	mov r0, #0
	ldr r5, [sp, #0x14]
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	str r0, [sp, #0x10]
	add r5, #0x30
_021FDECA:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FDED4
	b _021FE51E
_021FDED4:
	add r3, r5, #0
	add r3, #0x7c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x44
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x7c
	add r1, #0x8c
	add r2, r0, #0
	bl VEC_Add
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r2, r5, r0
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r2, #0xc]
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [r2, #0xc]
	add r0, r5, #0
	add r0, #0x80
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0x10
	cmp r0, r1
	bge _021FDF1C
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
	b _021FDF2A
_021FDF1C:
	mov r1, #0x2a
	lsl r1, r1, #0xe
	cmp r0, r1
	ble _021FDF2A
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
_021FDF2A:
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov96_021EAF8C
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x7c
	str r0, [sp]
	add r1, r5, #0
	str r0, [sp, #4]
	add r1, #0xcc
	ldr r0, [sp, #0x14]
	ldr r1, [r1]
	add r3, sp, #0x44
	bl ov96_021FF5A8
	asr r1, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	cmp r1, #1
	bne _021FDF62
	mov r2, #1
	b _021FDF64
_021FDF62:
	mov r2, #0
_021FDF64:
	add r1, r5, #0
	add r1, #0xa5
	strb r2, [r1]
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1]
	cmp r0, #9
	bhi _021FDFFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FDF80: ; jump table
	.short _021FE10C - _021FDF80 - 2 ; case 0
	.short _021FE10C - _021FDF80 - 2 ; case 1
	.short _021FDF94 - _021FDF80 - 2 ; case 2
	.short _021FDFB4 - _021FDF80 - 2 ; case 3
	.short _021FDFD4 - _021FDF80 - 2 ; case 4
	.short _021FDFF4 - _021FDF80 - 2 ; case 5
	.short _021FE016 - _021FDF80 - 2 ; case 6
	.short _021FE054 - _021FDF80 - 2 ; case 7
	.short _021FE092 - _021FDF80 - 2 ; case 8
	.short _021FE0D0 - _021FDF80 - 2 ; case 9
_021FDF94:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	ble _021FDFFE
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FDFB4:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bge _021FDFFE
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
	b _021FE10C
_021FDFD4:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bge _021FDFFE
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FDFF4:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bgt _021FE000
_021FDFFE:
	b _021FE10C
_021FE000:
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
	b _021FE10C
_021FE016:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	ble _021FE034
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
_021FE034:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	ble _021FE10C
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FE054:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bge _021FE072
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
_021FE072:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	ble _021FE10C
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FE092:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bge _021FE0B0
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
_021FE0B0:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bge _021FE10C
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FE0D0:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	ble _021FE0EE
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
_021FE0EE:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bge _021FE10C
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
_021FE10C:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, #0x30
	add r2, sp, #0x50
	bl ov96_021FF764
	ldr r1, _021FE1B4 ; =0x0000063C
	ldr r2, [sp, #0x14]
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _021FE14C
	cmp r0, #0
	beq _021FE14C
	ldr r0, [sp, #0x14]
	mov r2, #1
	strb r2, [r0, r1]
	ldr r2, [sp, #0x50]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r3, r0, #0xc
	add r2, r1, #2
	ldr r0, [sp, #0x14]
	add r1, r1, #1
	strh r3, [r0, r2]
	ldr r2, [sp, #0x54]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r2, r0, #0xc
	ldr r0, [sp, #0x14]
	strb r2, [r0, r1]
_021FE14C:
	ldr r4, [r5, #0x7c]
	add r0, r4, #0
	bl _dflt
	ldr r3, _021FE1B8 ; =0x41500000
	mov r2, #0
	bl _dgeq
	blo _021FE1BC
	add r0, r4, #0
	bl _dflt
	ldr r3, _021FE1B8 ; =0x41500000
	mov r2, #0
	bl _dsub
	bl _dfix
	str r0, [r5, #0x7c]
	add r0, r5, #0
	add r0, #0xd1
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FE194
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #0x3c
	bhs _021FE194
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x9c
	strb r1, [r0]
_021FE194:
	add r0, r5, #0
	add r0, #0x9c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldrb r0, [r0]
	cmp r0, r1
	bhs _021FE1AA
	add r0, r5, #0
	add r0, #0xa8
	strb r1, [r0]
_021FE1AA:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd1
	strb r1, [r0]
	b _021FE1FC
	.balign 4, 0
_021FE1B4: .word 0x0000063C
_021FE1B8: .word 0x41500000
_021FE1BC:
	cmp r4, #0
	bge _021FE1FC
	add r0, r4, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE4EC ; =0x41500000
	mov r0, #0
	bl _dadd
	bl _dfix
	str r0, [r5, #0x7c]
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FE1F2
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x9c
	strb r1, [r0]
	b _021FE1FC
_021FE1F2:
	bne _021FE1FC
	add r0, r5, #0
	mov r1, #1
	add r0, #0xd1
	strb r1, [r0]
_021FE1FC:
	add r4, r5, #0
	add r4, #0x8c
	ldmia r4!, {r0, r1}
	add r3, sp, #0x38
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	add r0, r2, #0
	bl VEC_Mag
	add r1, r5, #0
	add r1, #0x9d
	ldrb r1, [r1]
	cmp r1, #0
	bne _021FE28C
	add r1, r5, #0
	add r1, #0xa5
	ldrb r1, [r1]
	cmp r1, #0
	beq _021FE28C
	add r1, r5, #0
	add r1, #0x8b
	ldrb r2, [r1]
	mov r1, #0x1c
	mul r1, r2
	add r1, r5, r1
	add r1, #0x2c
	ldrb r1, [r1]
	lsl r6, r1, #0xc
	cmp r0, r6
	ble _021FE28C
	add r1, sp, #0x2c
	mov r0, #0
	str r0, [r1]
	add r4, r5, #0
	str r0, [r1, #4]
	add r3, sp, #0x20
	add r4, #0x8c
	str r0, [r1, #8]
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	add r0, r2, #0
	bl VEC_Normalize
	add r1, sp, #0x20
	add r0, r6, #0
	add r2, sp, #0x2c
	add r3, r1, #0
	bl VEC_MultAdd
	add r3, sp, #0x20
	add r2, r5, #0
	add r2, #0x8c
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #0x38
	str r0, [r2]
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	add r0, r2, #0
	bl VEC_Mag
_021FE28C:
	cmp r0, #0
	ble _021FE33E
	mov r0, #0xfe
	lsl r0, r0, #0x16
	bl _f2d
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021FE4F0 ; =0x9999999A
	ldr r1, _021FE4F4 ; =0x3FD99999
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE4F8 ; =0x40B00000
	mov r0, #0
	bl _dmul
	bl _dfix
	add r4, r0, #0
	ldr r1, _021FE4FC ; =0x000003C2
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021FE2C6
	mov r0, #3
	lsl r0, r0, #0xc
	add r4, r4, r0
_021FE2C6:
	add r0, sp, #0x38
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [sp, #0x38]
	asr r6, r4, #0x1f
	asr r1, r0, #0x1f
	add r2, r4, #0
	add r3, r6, #0
	bl _ll_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	add r2, r4, #0
	asr r1, r0, #0x1f
	add r3, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, sp, #0x38
	str r1, [sp, #0x3c]
	bl VEC_Mag
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	bl VEC_Mag
	cmp r0, r4
	blt _021FE330
	add r0, r5, #0
	add r0, #0x8c
	add r1, sp, #0x38
	add r2, r0, #0
	bl VEC_Subtract
	b _021FE33E
_021FE330:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0]
_021FE33E:
	add r0, r5, #0
	add r0, #0x8c
	bl VEC_Mag
	add r1, r5, #0
	add r1, #0x8b
	ldrb r2, [r1]
	mov r1, #0x1c
	mul r1, r2
	add r1, r5, r1
	add r1, #0x2e
	ldrb r2, [r1]
	sub r1, r2, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _021FE368
	add r0, r5, #0
	mov r1, #3
	add r0, #0xa2
	strb r1, [r0]
	b _021FE390
_021FE368:
	sub r1, r2, #3
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _021FE37A
	add r0, r5, #0
	mov r1, #2
	add r0, #0xa2
	strb r1, [r0]
	b _021FE390
_021FE37A:
	cmp r0, #0
	bne _021FE388
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	b _021FE390
_021FE388:
	add r0, r5, #0
	mov r1, #1
	add r0, #0xa2
	strb r1, [r0]
_021FE390:
	add r0, r5, #0
	add r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FE39C
	b _021FE51E
_021FE39C:
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0xa4
	mov r7, #0
	add r4, r5, #0
	str r0, [sp, #0x18]
_021FE3A8:
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	ldr r6, [r4, #0x24]
	cmp r7, r0
	bne _021FE454
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _021FE432
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	cmp r0, #3
	bhi _021FE406
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FE3D4: ; jump table
	.short _021FE3DC - _021FE3D4 - 2 ; case 0
	.short _021FE3F2 - _021FE3D4 - 2 ; case 1
	.short _021FE3F2 - _021FE3D4 - 2 ; case 2
	.short _021FE3F2 - _021FE3D4 - 2 ; case 3
_021FE3DC:
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE500 ; =0x3FE00000
	mov r2, #0
	bl _dadd
	bl _d2f
	add r6, r0, #0
	b _021FE406
_021FE3F2:
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE500 ; =0x3FE00000
	mov r2, #0
	bl _dsub
	bl _d2f
	add r6, r0, #0
_021FE406:
	add r0, r5, #0
	add r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FE424
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE504 ; =0x40440000
	mov r2, #0
	bl _dgr
	bls _021FE472
	ldr r6, _021FE508 ; =0x42200000
	b _021FE472
_021FE424:
	ldr r1, [r4, #0x28]
	add r0, r6, #0
	bl _fgr
	bls _021FE472
	ldr r6, [r4, #0x28]
	b _021FE472
_021FE432:
	bne _021FE472
	ldr r0, [sp, #0x18]
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #0x18]
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FE472
	add r1, r4, #0
	add r1, #0x30
	mov r0, #1
	strb r0, [r1]
	ldr r6, _021FE508 ; =0x42200000
	b _021FE472
_021FE454:
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE500 ; =0x3FE00000
	mov r2, #0
	bl _dadd
	bl _d2f
	ldr r1, [r4, #0x28]
	add r6, r0, #0
	bl _fgr
	bls _021FE472
	ldr r6, [r4, #0x28]
_021FE472:
	add r0, r6, #0
	mov r1, #0
	bl _fleq
	bhi _021FE4CE
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	cmp r7, r0
	beq _021FE48A
	bl GF_AssertFail
_021FE48A:
	mov r0, #0
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _021FE514
	add r1, r4, #0
	add r1, #0x30
	mov r0, #2
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xa3
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	strb r1, [r0]
	mov r0, #1
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp]
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	mov r3, #1
	bl ov96_021E8228
	b _021FE514
_021FE4CE:
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE504 ; =0x40440000
	mov r2, #0
	bl _dleq
	str r6, [r4, #0x24]
	bhi _021FE50C
	add r1, r4, #0
	add r1, #0x30
	mov r0, #1
	strb r0, [r1]
	b _021FE514
	nop
_021FE4EC: .word 0x41500000
_021FE4F0: .word 0x9999999A
_021FE4F4: .word 0x3FD99999
_021FE4F8: .word 0x40B00000
_021FE4FC: .word 0x000003C2
_021FE500: .word 0x3FE00000
_021FE504: .word 0x40440000
_021FE508: .word 0x42200000
_021FE50C:
	add r1, r4, #0
	add r1, #0x30
	mov r0, #0
	strb r0, [r1]
_021FE514:
	add r7, r7, #1
	add r4, #0x1c
	cmp r7, #3
	bge _021FE51E
	b _021FE3A8
_021FE51E:
	ldr r0, [sp, #0x10]
	add r5, #0xd4
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	bge _021FE532
	b _021FDECA
_021FE532:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FDE7C

	thumb_func_start ov96_021FE538
ov96_021FE538: ; 0x021FE538
	add r0, r2, #0
	add r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FE54E
	add r0, r2, #0
	add r0, #0xa9
	ldrb r0, [r0]
	add r2, #0xa9
	sub r0, r0, #1
	strb r0, [r2]
_021FE54E:
	bx lr
	thumb_func_end ov96_021FE538

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

