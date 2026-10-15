	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02205E30
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E8228
	.extern ov96_021EAF8C
	.extern ov96_02206368
	.extern ov96_02207300
	.extern ov96_02207418
	.extern ov96_022078B0
	.extern ov96_02207B8C
	.extern ov96_02207BD4

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
	thumb_func_start ov96_02205E30
ov96_02205E30: ; 0x02205E30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r0, [sp, #8]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	mov r0, #0
	ldr r1, _02206150 ; =0x00000519
	add r5, r6, #0
	str r0, [sp, #0x14]
	strb r0, [r6, r1]
	add r4, sp, #0x24
	add r7, r6, #0
	add r5, #0x24
_02205E4C:
	mov r0, #0
	strb r0, [r4]
	add r0, r7, #0
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205E68
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r5, #0
	bl ov96_02206368
	mov r0, #1
	strb r0, [r4]
_02205E68:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r0, r0, #1
	add r7, #0xb8
	add r5, #0xb8
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02205E4C
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x24
	str r0, [sp, #0x10]
	ldr r0, _02206154 ; =0x000006BC
	add r5, r6, #0
	add r5, #0x24
	add r0, r6, r0
	ldr r7, _02206158 ; =0x33333333
	str r5, [sp, #0x18]
	str r0, [sp, #0x20]
_02205E8E:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205E98
	b _02206326
_02205E98:
	add r0, r5, #0
	bl ov96_02207B8C
	cmp r0, #0
	beq _02205EFA
	add r0, r5, #0
	add r0, #0xaa
	ldrb r0, [r0]
	bl ov96_02207BD4
	add r1, r5, #0
	add r1, #0xa7
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xaa
	mov r0, #0
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xab
	mov r0, #1
	strb r0, [r1]
	mov r0, #0
	str r0, [r5, #0x64]
	str r0, [r5, #0x68]
	add r1, r5, #0
	str r0, [r5, #0x6c]
	add r2, r5, #0
	add r1, #0xb0
	mov r0, #2
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xa9
	mov r0, #0xa
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0xa7
	ldrb r0, [r0]
	add r1, r5, #0
	add r1, #0x98
	str r0, [sp]
	ldr r1, [r1]
	add r2, #0xb1
	lsl r1, r1, #0x18
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	mov r3, #3
	bl ov96_021E8228
_02205EFA:
	add r0, r5, #0
	add r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205FB2
	add r0, r5, #0
	add r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205FB2
	add r0, r5, #0
	add r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	bne _02205FA4
	add r0, r5, #0
	add r0, #0xa7
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205F50
	add r0, r5, #0
	add r0, #0xac
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0xac
	ldrh r1, [r0]
	ldr r0, _0220615C ; =0x000003E7
	cmp r1, r0
	bls _02205F42
	add r1, r5, #0
	add r1, #0xac
	strh r0, [r1]
_02205F42:
	add r0, r5, #0
	add r0, #0xa7
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa7
	strb r1, [r0]
_02205F50:
	add r0, r5, #0
	add r0, #0xa9
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa9
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #0
	bne _02205F9A
	add r1, r5, #0
	add r1, #0xa9
	mov r0, #0
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x9c
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x9d
	strb r0, [r1]
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x98
	add r2, r5, #0
	ldr r1, [r1]
	add r2, #0xb1
	lsl r1, r1, #0x18
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	mov r3, #7
	bl ov96_021E8228
	b _02205FB2
_02205F9A:
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #4
	strb r0, [r1]
	b _02205FB2
_02205FA4:
	add r0, r5, #0
	add r0, #0xa8
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	strb r1, [r0]
_02205FB2:
	add r0, r5, #0
	add r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205FBE
	b _02206326
_02205FBE:
	add r3, r5, #0
	add r3, #0x58
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x58
	add r1, #0x64
	add r2, r0, #0
	bl VEC_Add
	mov r0, #0xd
	ldr r1, [r5, #0x58]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _02205FEC
	mov r0, #0x13
	lsl r0, r0, #0x10
	cmp r1, r0
	ble _02206006
_02205FEC:
	mov r0, #0x1a
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _02205FFA
	str r0, [r5, #0x5c]
	b _02206020
_02205FFA:
	mov r0, #0x62
	lsl r0, r0, #0xe
	cmp r1, r0
	ble _02206020
	str r0, [r5, #0x5c]
	b _02206020
_02206006:
	mov r0, #0x1a
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _02206014
	str r0, [r5, #0x5c]
	b _02206020
_02206014:
	lsl r0, r0, #2
	cmp r1, r0
	ble _02206020
	mov r0, #0x1a
	lsl r0, r0, #0x10
	str r0, [r5, #0x5c]
_02206020:
	mov r0, #0x62
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #0xe
	cmp r1, r0
	ldr r1, [r5, #0x58]
	ble _02206044
	mov r0, #0xd
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _02206038
	str r0, [r5, #0x58]
	b _0220605A
_02206038:
	mov r0, #0x13
	lsl r0, r0, #0x10
	cmp r1, r0
	ble _0220605A
	str r0, [r5, #0x58]
	b _0220605A
_02206044:
	mov r0, #9
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _02206050
	str r0, [r5, #0x58]
	b _0220605A
_02206050:
	mov r0, #0x17
	lsl r0, r0, #0x10
	cmp r1, r0
	ble _0220605A
	str r0, [r5, #0x58]
_0220605A:
	add r0, r5, #0
	add r0, #0xb1
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov96_021EAF8C
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x58
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [r5, #0x74]
	add r0, r6, #0
	add r3, sp, #0x34
	bl ov96_02207300
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [r5, #0x74]
	cmp r0, #8
	bhi _022060DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02206092: ; jump table
	.short _022061EC - _02206092 - 2 ; case 0
	.short _022060A4 - _02206092 - 2 ; case 1
	.short _022060BE - _02206092 - 2 ; case 2
	.short _022060D8 - _02206092 - 2 ; case 3
	.short _022060F4 - _02206092 - 2 ; case 4
	.short _0220610E - _02206092 - 2 ; case 5
	.short _02206140 - _02206092 - 2 ; case 6
	.short _0220618A - _02206092 - 2 ; case 7
	.short _022061BC - _02206092 - 2 ; case 8
_022060A4:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	ble _022060DE
	bl _dflt
	ldr r3, _02206160 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x68]
	b _022061EC
_022060BE:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	bge _022060DE
	bl _dflt
	ldr r3, _02206160 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x64]
	b _022061EC
_022060D8:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	blt _022060E0
_022060DE:
	b _022061EC
_022060E0:
	bl _dflt
	ldr r3, _02206160 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x68]
	b _022061EC
_022060F4:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	ble _022061EC
	bl _dflt
	ldr r3, _02206160 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x64]
	b _022061EC
_0220610E:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	ble _02206126
	bl _dflt
	ldr r3, _02206160 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x64]
_02206126:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	ble _022061EC
	bl _dflt
	ldr r3, _02206160 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x68]
	b _022061EC
_02206140:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	bge _02206170
	bl _dflt
	ldr r3, _02206160 ; =0xBFD33333
	b _02206164
	nop
_02206150: .word 0x00000519
_02206154: .word 0x000006BC
_02206158: .word 0x33333333
_0220615C: .word 0x000003E7
_02206160: .word 0xBFD33333
_02206164:
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x64]
_02206170:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	ble _022061EC
	bl _dflt
	ldr r3, _02206340 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x68]
	b _022061EC
_0220618A:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	bge _022061A2
	bl _dflt
	ldr r3, _02206340 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x64]
_022061A2:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bge _022061EC
	bl _dflt
	ldr r3, _02206340 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x68]
	b _022061EC
_022061BC:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	ble _022061D4
	bl _dflt
	ldr r3, _02206340 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x64]
_022061D4:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bge _022061EC
	bl _dflt
	ldr r3, _02206340 ; =0xBFD33333
	add r2, r7, #0
	bl _dmul
	bl _dfix
	str r0, [r5, #0x68]
_022061EC:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	add r2, sp, #0x40
	bl ov96_02207418
	ldr r1, _02206344 ; =0x00000519
	ldrb r1, [r6, r1]
	cmp r1, #0
	bne _02206224
	cmp r0, #0
	beq _02206224
	ldr r0, _02206344 ; =0x00000519
	mov r1, #1
	strb r1, [r6, r0]
	ldr r1, [sp, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, _02206348 ; =0x0000051E
	strh r1, [r6, r0]
	ldr r1, [sp, #0x44]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	ldr r0, _0220634C ; =0x0000051C
	strh r1, [r6, r0]
_02206224:
	add r3, r5, #0
	add r3, #0x64
	ldmia r3!, {r0, r1}
	add r2, sp, #0x28
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r4, #0
	bl VEC_Mag
	cmp r0, #0
	ble _022062E2
	ldr r0, _02206350 ; =0x40C00000
	bl _f2d
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02206354 ; =0x9999999A
	ldr r1, _02206358 ; =0x3FB99999
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _0220635C ; =0x40B00000
	mov r0, #0
	bl _dmul
	bl _dfix
	add r4, r0, #0
	mov r0, #0x51
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _02206272
	mov r0, #3
	lsl r0, r0, #0xc
	add r4, r4, r0
_02206272:
	add r0, sp, #0x28
	add r1, r0, #0
	bl VEC_Normalize
	asr r0, r4, #0x1f
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	asr r1, r0, #0x1f
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02206360 ; =0x00000000
	ldr r3, [sp, #0x1c]
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	asr r1, r0, #0x1f
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02206360 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [sp, #0x2c]
	add r0, sp, #0x28
	bl VEC_Mag
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x64
	bl VEC_Mag
	cmp r0, r4
	blt _022062DC
	add r0, r5, #0
	add r0, #0x64
	add r1, sp, #0x28
	add r2, r0, #0
	bl VEC_Subtract
	b _022062E2
_022062DC:
	mov r0, #0
	str r0, [r5, #0x64]
	str r0, [r5, #0x68]
_022062E2:
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02206316
	add r0, r5, #0
	add r0, #0xa6
	ldrb r0, [r0]
	cmp r0, #1
	bne _02206316
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	cmp r0, #0
	bne _02206316
	add r1, r5, #0
	add r1, #0xa6
	mov r0, #0
	strb r0, [r1]
_02206316:
	ldr r0, _02206364 ; =0x00000564
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0xc]
	add r0, r6, r0
	add r1, r5, #0
	add r2, r3, r2
	bl ov96_022078B0
_02206326:
	ldr r0, [sp, #0x10]
	add r5, #0xb8
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	bge _0220633A
	b _02205E8E
_0220633A:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02206340: .word 0xBFD33333
_02206344: .word 0x00000519
_02206348: .word 0x0000051E
_0220634C: .word 0x0000051C
_02206350: .word 0x40C00000
_02206354: .word 0x9999999A
_02206358: .word 0x3FB99999
_0220635C: .word 0x40B00000
_02206360: .word 0x00000000
_02206364: .word 0x00000564
	thumb_func_end ov96_02205E30

