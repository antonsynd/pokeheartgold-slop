	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FDE7C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E8228
	.extern ov96_021EAF8C
	.extern ov96_021FE538
	.extern ov96_021FF5A8
	.extern ov96_021FF764

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

