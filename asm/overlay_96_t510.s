	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02200EF4
	.public ov96_02200F84
	.public ov96_0220144C
	.public ov96_0220146C
	.public ov96_022014A4
	.public ov96_02201558
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E6108
	.extern ov96_021E6168
	.extern ov96_021E6290
	.extern ov96_021E6670
	.extern ov96_021E8228
	.extern ov96_021E8A20
	.extern ov96_021E8BB0
	.extern ov96_021E92B0
	.extern ov96_021E9A78
	.extern ov96_021EA854
	.extern ov96_021EA8A8
	.extern ov96_021EAA00
	.extern ov96_021EAA04
	.extern ov96_021EAA20
	.extern ov96_021EAB38
	.extern ov96_021EABA8
	.extern ov96_021EAC0C
	.extern ov96_021EAF94
	.extern ov96_021EB03C
	.extern ov96_021EB0A4
	.extern ov96_021EB180
	.extern ov96_021EB29C
	.extern ov96_021EB3A4
	.extern ov96_021EB588
	.extern ov96_021EB5C8
	.extern ov96_021EB5E8
	.extern ov96_02201C90
	.extern ov96_02201CB0
	.extern ov96_02201E10
	.extern ov96_02201E70
	.extern ov96_02201EF0
	.extern ov96_02202738
	.extern ov96_0220329C
	.extern ov96_02203310
	.extern ov96_0220382C
	.extern ov96_02203A00
	.extern ov96_02203B44
	.extern ov96_02203B8C
	.extern ov96_02203D74
	.extern ov96_02204364
	.extern ov96_022043AC
	.extern ov96_0221C770
	.extern ov96_0221C7B8
	.extern ov96_0221C7D0
	.extern ov96_0221C8C8
	.extern ov96_0221C8EC
	.extern ov96_0221CA1C

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
	thumb_func_start ov96_02200EF4
ov96_02200EF4: ; 0x02200EF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02200F7C ; =0x000003E5
	add r5, r1, #0
	ldrb r1, [r5, r0]
	add r7, r2, #0
	mov r2, #4
	cmp r1, #4
	bne _02200F0A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02200F0A:
	sub r1, r0, #3
	ldrb r1, [r5, r1]
	add r3, r1, #1
	sub r1, r0, #3
	strb r3, [r5, r1]
	sub r3, r0, #2
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	cmp r1, r3
	blo _02200F2C
	add r1, r0, #0
	mov r3, #1
	sub r1, #9
	str r3, [r5, r1]
	mov r1, #0
	sub r0, r0, #3
	strb r1, [r5, r0]
_02200F2C:
	mov r1, #0xf7
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _02200F76
	add r0, r1, #0
	add r0, #8
	add r1, r1, #5
	ldrb r0, [r5, r0]
	ldrb r1, [r5, r1]
	add r4, r0, r1
	cmp r4, r0
	bge _02200F4A
	bl GF_AssertFail
_02200F4A:
	lsl r2, r4, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl ov96_02200F84
	lsl r0, r4, #0x18
	lsr r2, r0, #0x18
	ldr r0, _02200F80 ; =0x000003E1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	sub r1, r0, #1
	ldrb r3, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r3, r1
	blo _02200F76
	mov r1, #0
	strb r1, [r5, r0]
	sub r0, r0, #5
	str r1, [r5, r0]
_02200F76:
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02200F7C: .word 0x000003E5
_02200F80: .word 0x000003E1
	thumb_func_end ov96_02200EF4

	thumb_func_start ov96_02200F84
ov96_02200F84: ; 0x02200F84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xf8
	str r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [r1, r0]
	str r3, [sp, #0x10]
	add r1, r0, #0
	add r1, #0x9d
	ldrb r1, [r1]
	cmp r1, #0
	bne _02200FC0
	add r1, r0, #0
	add r1, #0x8b
	ldrb r2, [r1]
	mov r1, #0x1c
	mul r1, r2
	add r1, r0, r1
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #2
	beq _02200FC0
	add r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #0
	beq _02200FC2
_02200FC0:
	b _02201444
_02200FC2:
	mov r1, #0
	add r0, r1, #0
	add r2, sp, #0x4c
	str r0, [sp, #0x2c]
_02200FCA:
	ldr r0, [sp, #0x2c]
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #4
	blt _02200FCA
	ldr r7, [sp, #8]
	add r6, r0, #0
	add r5, sp, #0x5c
_02200FDA:
	add r3, r7, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r4, [r5]
	add r0, sp, #0x44
	str r0, [sp]
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	add r2, r4, #0
	add r0, #0x8b
	add r2, #0x80
	ldrb r0, [r0]
	ldr r3, [r2]
	asr r2, r3, #0xb
	lsl r0, r0, #2
	lsr r2, r2, #0x14
	add r2, r3, r2
	ldr r0, [r4, r0]
	asr r2, r2, #0xc
	add r3, sp, #0x48
	bl ov96_021EB0A4
	add r0, sp, #0x3c
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x44]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x40
	bl ov96_021EB03C
	ldr r1, [sp, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	ldr r1, [sp, #0x3c]
	str r0, [r5, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, [sp, #8]
	asr r0, r0, #0xc
	str r0, [r5, #0xc]
	add r4, r1, r6
	sub r0, #0x20
	mov r1, #0x28
	bl _s32_div_f
	mov r1, #0xa6
	lsl r1, r1, #2
	strb r0, [r4, r1]
	add r0, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #4
	bls _02201066
	bl GF_AssertFail
_02201066:
	add r6, r6, #1
	add r7, #0x10
	add r5, #0x10
	cmp r6, #4
	blt _02200FDA
	ldr r0, [sp, #0x14]
	add r1, sp, #0x5c
	add r0, r1, r0
	ldr r2, [sp, #8]
	str r0, [sp, #0x28]
	mov r4, #0
	add r3, sp, #0x9c
_0220107E:
	add r6, r2, #0
	add r6, #0x40
	ldmia r6!, {r0, r1}
	add r5, r3, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r4, r4, #1
	str r0, [r5]
	add r2, #0x14
	add r3, #0x14
	cmp r4, #0x1e
	blt _0220107E
	ldr r0, [sp, #0x28]
	ldr r1, [r0, #8]
	mov r0, #0x36
	lsl r0, r0, #4
	cmp r1, r0
	blt _022010D6
	mov r5, #0
	add r6, r5, #0
	add r4, sp, #0x5c
	sub r6, #0xa0
_022010AE:
	add r0, r4, #0
	add r0, #8
	add r1, r6, #0
	bl ov96_0220144C
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #4
	blt _022010AE
	mov r5, #0
	add r4, sp, #0x9c
	mov r6, #0x50
_022010C6:
	add r0, r4, #4
	add r1, r6, #0
	bl ov96_0220144C
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #0x1e
	blt _022010C6
_022010D6:
	ldr r4, [sp, #8]
	mov r5, #0
_022010DA:
	ldr r0, _02201308 ; =0x000002AE
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1e
	strh r5, [r4, r0]
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #0x28
	add r6, r1, #0
	mul r6, r0
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #8]
	add r0, #0x14
	add r1, r0, r6
	mov r0, #0xa7
	lsl r0, r0, #2
	str r1, [r4, r0]
	asr r0, r5, #1
	lsr r0, r0, #0x1e
	add r0, r5, r0
	asr r1, r0, #2
	mov r0, #0x28
	add r7, r1, #0
	mul r7, r0
	add r1, r7, #0
	mov r0, #0x2a
	add r1, #0x34
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl LCRandom
	mov r1, #0x28
	bl _s32_div_f
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #8]
	add r0, r0, r6
	add r1, r0, r1
	mov r0, #0xa9
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl LCRandom
	mov r1, #0x28
	bl _s32_div_f
	add r7, #0x20
	mov r0, #0xaa
	add r1, r7, r1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #0x10
	blt _022010DA
	ldr r2, _0220130C ; =ov96_0221C770
	ldr r3, [sp, #8]
	mov r4, #0
	add r0, r0, #4
_02201152:
	ldr r1, [r2]
	add r4, r4, #1
	strh r1, [r3, r0]
	add r2, r2, #4
	add r3, #0x14
	cmp r4, #0x10
	blt _02201152
	mov r0, #0x20
	str r0, [sp, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r6, #0
	add r0, r1, r0
	add r4, sp, #0x4c
	str r6, [sp, #0x24]
	str r0, [sp, #0x1c]
_02201172:
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	mul r1, r0
	ldr r0, [sp, #8]
	mov r5, #0
	add r0, r0, r1
	add r7, sp, #0x5c
	str r0, [sp, #0x18]
_02201182:
	ldr r0, [sp, #0xc]
	cmp r5, r0
	beq _0220121A
	ldr r1, [sp, #0x28]
	ldr r0, [r7, #8]
	ldr r2, [r1, #8]
	add r1, r2, #0
	add r1, #0xa0
	cmp r1, r0
	blt _0220121A
	sub r0, r0, r2
	bmi _022011F2
	cmp r0, #0xa0
	bge _022011F2
	ldr r1, [sp, #8]
	add r2, r1, r5
	mov r1, #0xa6
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r6, r1
	bne _022011C4
	mov r1, #0xa6
	ldr r2, [sp, #0x1c]
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r6, r1
	ldr r1, [r4]
	bne _022011C0
	sub r1, r1, #4
	str r1, [r4]
	b _022011C4
_022011C0:
	sub r1, r1, #2
	str r1, [r4]
_022011C4:
	mov r1, #0x28
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _022011D8
	bl GF_AssertFail
	b _0220121A
_022011D8:
	mov r0, #0x14
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	mov r1, #0xab
	lsl r1, r1, #2
	ldrsh r1, [r0, r1]
	sub r2, r1, #3
	mov r1, #0xab
	lsl r1, r1, #2
	strh r2, [r0, r1]
	b _0220121A
_022011F2:
	mov r1, #0x4f
	mvn r1, r1
	cmp r0, r1
	blt _0220121A
	ldr r0, [sp, #8]
	add r1, r0, r5
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r6, r0
	bne _0220121A
	mov r0, #0xa6
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r6, r0
	bne _0220121A
	ldr r0, [r4]
	add r0, r0, #2
	str r0, [r4]
_0220121A:
	add r5, r5, #1
	add r7, #0x10
	cmp r5, #4
	blt _02201182
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x20]
	add r2, sp, #0x9c
	add r0, #0x28
	mov ip, r0
	ldr r0, [sp, #0x28]
	add r3, sp, #0x4c
	ldr r5, [r0, #8]
_02201234:
	ldr r0, [r2]
	cmp r0, #0
	beq _02201280
	add r0, r5, #0
	ldr r1, [r2, #4]
	add r0, #0xa0
	cmp r0, r1
	blt _02201272
	sub r0, r1, r5
	cmp r0, #0
	ble _02201272
	cmp r0, #0xa0
	bgt _02201272
	ldr r7, [r2, #8]
	ldr r0, [r2, #0x10]
	add r1, r7, r0
	ldr r0, [sp, #0x20]
	cmp r0, r1
	bge _02201272
	mov r0, ip
	cmp r7, r0
	bge _02201272
	ldr r0, [r2, #0xc]
	cmp r0, #3
	ldr r0, [r3]
	bne _0220126E
	sub r0, r0, #1
	str r0, [r3]
	b _02201272
_0220126E:
	sub r0, r0, #6
	str r0, [r3]
_02201272:
	ldr r0, [sp, #0x30]
	add r2, #0x14
	add r0, r0, #1
	add r3, r3, #4
	str r0, [sp, #0x30]
	cmp r0, #0x1e
	blt _02201234
_02201280:
	ldr r0, [sp, #0x24]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r4, r4, #4
	add r0, #0x28
	str r0, [sp, #0x20]
	cmp r6, #4
	bge _02201296
	b _02201172
_02201296:
	mov r5, #0xab
	lsl r5, r5, #2
	ldr r3, [sp, #8]
	mov r4, #0
	add r1, sp, #0x4c
	add r0, r5, #0
_022012A2:
	asr r6, r4, #1
	lsr r6, r6, #0x1e
	add r6, r4, r6
	asr r6, r6, #2
	lsl r6, r6, #2
	ldrsh r2, [r3, r5]
	ldr r6, [r1, r6]
	add r4, r4, #1
	add r2, r2, r6
	strh r2, [r3, r0]
	add r3, #0x14
	cmp r4, #0x10
	blt _022012A2
	ldr r1, _02201310 ; =0x00000A8C
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bge _022012F0
	mov r2, #0
	mov r3, #0xab
	add r1, r2, #0
	mov r7, #0x14
	lsl r3, r3, #2
	mov r4, #0x28
	mov r5, #0x3c
_022012D2:
	add r6, r1, #0
	ldr r0, [sp, #8]
	mul r6, r7
	add r0, r0, r6
	add r0, r0, r3
	ldrsh r6, [r0, r4]
	add r2, r2, #1
	add r1, r1, #4
	add r6, r6, #3
	strh r6, [r0, #0x28]
	ldrsh r6, [r0, r5]
	add r6, r6, #3
	strh r6, [r0, #0x3c]
	cmp r2, #4
	blt _022012D2
_022012F0:
	ldr r0, [sp, #0x28]
	ldr r2, [r0]
	add r0, r2, #0
	add r0, #0x8b
	ldrb r1, [r0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #0x24]
	ldr r1, _02201314 ; =0x41A00000
	b _02201318
	nop
_02201308: .word 0x000002AE
_0220130C: .word ov96_0221C770
_02201310: .word 0x00000A8C
_02201314: .word 0x41A00000
_02201318:
	bl _fleq
	bhi _02201350
	mov r2, #0
	mov r3, #0xab
	add r1, r2, #0
	mov r7, #0x14
	lsl r3, r3, #2
	mov r4, #0x28
	mov r5, #0x3c
_0220132C:
	add r6, r1, #0
	ldr r0, [sp, #8]
	mul r6, r7
	add r0, r0, r6
	add r0, r0, r3
	ldrsh r6, [r0, r4]
	add r2, r2, #1
	add r1, r1, #4
	sub r6, r6, #2
	strh r6, [r0, #0x28]
	ldrsh r6, [r0, r5]
	sub r6, r6, #2
	strh r6, [r0, #0x3c]
	cmp r2, #4
	blt _0220132C
	ldr r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
_02201350:
	ldr r0, [sp, #0x28]
	mov r1, #3
	ldr r4, [r0]
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	add r0, r0, #1
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	bne _0220137A
	ldr r0, [sp, #0x2c]
	sub r0, r0, #5
	str r0, [sp, #0x2c]
_0220137A:
	ldr r0, [sp, #8]
	bl ov96_0220146C
	add r4, r0, #0
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	blt _0220140C
	mov r1, #0xf9
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _02201444
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x28]
	ldr r1, [r0]
	add r0, sp, #0x34
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x8b
	ldrb r0, [r0]
	ldr r2, [r2, #0xc]
	add r3, sp, #0x38
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x28]
	ldr r1, [r1, #8]
	bl ov96_021EB0A4
	ldr r0, [sp, #0x38]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	add r0, #0xb0
	str r1, [r0]
	ldr r0, [sp, #0x34]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	add r0, #0xb4
	str r1, [r0]
	ldr r1, [sp, #0x28]
	mov r0, #0
	ldr r1, [r1]
	add r1, #0xb8
	str r0, [r1]
	ldr r1, [r4, #8]
	lsl r2, r1, #0xc
	ldr r1, [sp, #0x28]
	ldr r1, [r1]
	add r1, #0xbc
	str r2, [r1]
	ldr r1, [r4, #0xc]
	lsl r2, r1, #0xc
	ldr r1, [sp, #0x28]
	ldr r1, [r1]
	add r1, #0xc0
	str r2, [r1]
	ldr r1, [sp, #0x28]
	ldr r1, [r1]
	add r1, #0xc4
	str r0, [r1]
	ldr r0, [sp, #0x28]
	add sp, #0x1fc
	ldr r0, [r0]
	mov r1, #1
	add r0, #0xaa
	strb r1, [r0]
	add sp, #0xf8
	pop {r4, r5, r6, r7, pc}
_0220140C:
	mov r1, #0xf9
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _02201444
	ldr r0, [sp, #0x28]
	mov r1, #1
	ldr r0, [r0]
	mov r3, #7
	add r0, #0x9d
	strb r1, [r0]
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	add r0, #0x9e
	strb r1, [r0]
	ldr r0, [sp, #0x28]
	ldr r2, [r0]
	ldr r0, [sp, #4]
	str r1, [sp]
	add r1, r2, #0
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl ov96_021E8228
_02201444:
	add sp, #0x1fc
	add sp, #0xf8
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02200F84

	thumb_func_start ov96_0220144C
ov96_0220144C: ; 0x0220144C
	ldr r2, [r0]
	add r2, r2, r1
	mov r1, #1
	lsl r1, r1, #0xa
	str r2, [r0]
	cmp r2, r1
	blt _02201460
	sub r1, r2, r1
	str r1, [r0]
	bx lr
_02201460:
	cmp r2, #0
	bge _02201468
	add r1, r2, r1
	str r1, [r0]
_02201468:
	bx lr
	.balign 4, 0
	thumb_func_end ov96_0220144C

	thumb_func_start ov96_0220146C
ov96_0220146C: ; 0x0220146C
	push {r4, lr}
	sub sp, #0x80
	mov r1, #0xa7
	lsl r1, r1, #2
	add r0, r0, r1
	mov r2, #0
	add r1, sp, #0
_0220147A:
	add r2, r2, #1
	stmia r1!, {r0}
	add r0, #0x14
	cmp r2, #0x10
	blt _0220147A
	add r0, sp, #0
	add r1, sp, #0x40
	bl ov96_022014A4
	add r4, r0, #0
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x16
	add r0, sp, #0x40
	ldr r0, [r0, r1]
	add sp, #0x80
	pop {r4, pc}
	thumb_func_end ov96_0220146C

	thumb_func_start ov96_022014A4
ov96_022014A4: ; 0x022014A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd0
	mov ip, r0
	add r0, sp, #0x10
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r7, r1, #0
_022014BA:
	add r2, r0, #1
	mov r1, #0xc
	mul r1, r2
	add r2, sp, #4
	lsl r4, r0, #2
	mov r3, ip
	ldr r3, [r3, r4]
	add r2, r2, r1
	str r3, [r2, #8]
	mov r3, #0
	str r3, [r2, #4]
	add r4, r3, #0
	add r3, sp, #4
	str r4, [r3, r1]
	add r1, r4, #0
	cmp r0, #0
	bls _02201506
	ldr r5, [r2, #8]
	mov r4, #0x10
	ldrsh r4, [r5, r4]
	mov r6, #0x10
_022014E4:
	ldr r3, [r3, #4]
	ldr r5, [r3, #8]
	ldrsh r5, [r5, r6]
	cmp r5, r4
	bge _022014FC
	ldr r4, [r3]
	str r2, [r4, #4]
	ldr r4, [r3]
	str r4, [r2]
	str r3, [r2, #4]
	str r2, [r3]
	b _02201506
_022014FC:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	blo _022014E4
_02201506:
	cmp r1, r0
	bne _0220150E
	str r2, [r3, #4]
	str r3, [r2]
_0220150E:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _022014BA
	ldr r0, [sp, #8]
	mov r3, #0
	ldr r1, [r0, #8]
	mov r0, #0x10
	ldrsh r2, [r1, r0]
	add r1, sp, #4
_02201524:
	ldr r1, [r1, #4]
	lsl r5, r3, #2
	ldr r4, [r1, #8]
	str r4, [r7, r5]
	ldr r4, [r7, r5]
	ldrsh r4, [r4, r0]
	cmp r2, r4
	bne _0220153E
	ldr r4, [sp]
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp]
_0220153E:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #0x10
	blo _02201524
	ldr r0, [sp]
	cmp r0, #0
	bne _02201552
	bl GF_AssertFail
_02201552:
	ldr r0, [sp]
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_022014A4

	thumb_func_start ov96_02201558
ov96_02201558: ; 0x02201558
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	add r6, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r7, r0, #0
	add r0, r6, #0
	bl PokeathlonCourse_GetField1ED
	cmp r0, #5
	bls _02201570
	b _02201AFE
_02201570:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220157C: ; jump table
	.short _02201588 - _0220157C - 2 ; case 0
	.short _0220166C - _0220157C - 2 ; case 1
	.short _022016A2 - _0220157C - 2 ; case 2
	.short _0220175C - _0220157C - 2 ; case 3
	.short _02201874 - _0220157C - 2 ; case 4
	.short _02201AE2 - _0220157C - 2 ; case 5
_02201588:
	mov r2, #1
	mov r0, #0x5c
	mov r1, #0x92
	lsl r2, r2, #0x12
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
	ldr r0, _022018CC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _022018D0 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_02201C90
	ldr r1, _022018D4 ; =0x000005F4
	add r0, r6, #0
	bl PokeathlonCourse_AllocPtr4FromHeap
	ldr r2, _022018D4 ; =0x000005F4
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x92
	mov r1, #0x28
	bl Heap_Alloc
	ldr r1, _022018D8 ; =0x00000598
	mov r2, #0x28
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0x92
	bl BgConfig_Alloc
	str r0, [r4]
	add r0, r6, #0
	mov r1, #8
	bl ov96_021E6670
	mov r0, #0x73
	str r0, [sp, #0x98]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0x9c]
	lsr r0, r0, #4
	str r0, [sp, #0xa0]
	add r0, r6, #0
	bl PokeathlonCourse_GetHeapID
	str r0, [sp, #0xa4]
	ldr r3, _022018DC ; =0x00300010
	add r0, sp, #0x98
	mov r1, #0x16
	mov r2, #0x92
	str r3, [sp]
	bl ov96_021E92B0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x92
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r1, #0x92
	str r1, [r4, #0x44]
	mov r0, #4
	bl FontID_Alloc
	ldr r0, [r4]
	bl ov96_02201CB0
	add r0, r4, #0
	bl ov96_02203310
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_0220382C
	ldr r0, _022018E0 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r6, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02201AFE
_0220166C:
	ldr r0, [r7, #0x44]
	ldr r1, [r7]
	add r2, r6, #0
	bl ov96_02203A00
	mov r1, #0x5e
	lsl r1, r1, #4
	str r0, [r7, r1]
	add r0, r6, #0
	bl PokeathlonCourse_GetParticipantCount
	add r4, r0, #0
	add r0, r6, #0
	bl PokeathlonCourse_GetMode
	add r2, r0, #0
	mov r1, #4
	ldr r0, [r7, #0x44]
	sub r1, r1, r4
	bl ov96_02204364
	ldr r1, _022018E4 ; =0x000005DC
	str r0, [r7, r1]
	add r0, r6, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02201AFE
_022016A2:
	ldr r4, _022018E8 ; =ov96_0221C7B8
	add r3, sp, #0x8c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r7, #0x44]
	bl ov96_021EB180
	mov r1, #0
	str r0, [r7, #0x48]
	mov r0, #0x12
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r7, #0x48]
	add r2, r1, #0
	add r3, r1, #0
	bl ov96_021EB5C8
	ldr r0, [r7, #0x48]
	mov r1, #0
	mov r2, #0x6a
	bl ov96_021EB29C
	ldr r0, [r7, #0x48]
	mov r1, #1
	mov r2, #0x65
	bl ov96_021EB29C
	ldr r0, [r7, #0x48]
	mov r1, #2
	mov r2, #0x69
	bl ov96_021EB29C
	ldr r0, [r7, #0x48]
	bl ov96_02201E70
	mov r0, #0x5e
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [r7, #0x48]
	bl ov96_02203B44
	ldr r0, [r7, #0x48]
	bl ov96_021EB3A4
	ldr r0, [r7, #0x44]
	ldr r1, _022018EC ; =0x000004E7
	mov r2, #1
	bl ov96_021E9A78
	ldr r1, _022018F0 ; =0x000005D4
	str r0, [r7, r1]
	ldr r0, [r7, #0x48]
	bl ov96_021EB5E8
	str r0, [sp]
	ldr r3, _022018F0 ; =0x000005D4
	ldr r0, [r7, #0x44]
	ldr r3, [r7, r3]
	mov r1, #9
	mov r2, #0x20
	bl ov96_021EA854
	ldr r2, _022018F4 ; =0x000005D8
	mov r1, #0
	str r0, [r7, r2]
	sub r2, r2, #4
	ldr r2, [r7, r2]
	ldr r3, [r7, #0x48]
	add r0, r6, #0
	bl ov96_021E6290
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	bl ov96_021E5F24
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r1, [r7, #0x48]
	add r0, r7, #0
	lsr r2, r2, #0x18
	bl ov96_02201EF0
	add r0, r6, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02201AFE
_0220175C:
	add r0, r6, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x1c]
	add r1, r0, #1
	lsl r0, r1, #1
	add r0, r1, r0
	mov r1, #0xc
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r5, sp, #0x13c
	add r4, sp, #0xf8
_02201784:
	ldr r0, [sp, #0x24]
	mov r1, #0xc
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r3, r5, #0
	bl ov96_021E6168
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x54]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x54]
	cmp r0, #0xc
	blt _02201784
	mov r0, #0x5e
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [r7, #0x48]
	add r2, sp, #0x1cc
	bl ov96_02203B8C
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r5, #0x10
	lsl r1, r0, #1
	add r0, r0, r1
	lsl r0, r0, #5
	add r4, r7, r0
_022017F2:
	mov r1, #0
	add r0, sp, #0x80
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x13c
	add r0, #9
	lsl r0, r0, #4
	add r3, r1, r0
	ldr r1, [r3, #0xc]
	mov r2, #0
	str r1, [sp]
	add r1, sp, #0x13c
	ldrh r0, [r1, r0]
	ldrb r1, [r3, #7]
	ldrh r3, [r3, #2]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl GetMonPicHeightBySpeciesGenderForm
	lsl r1, r5, #0xc
	str r1, [sp, #0x80]
	mov r1, #0x5e
	lsl r1, r1, #2
	add r0, r0, r1
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0x10
	str r1, [sp, #0x84]
	sub r0, r1, r0
	str r0, [sp, #0x84]
	ldr r0, _022018F8 ; =0x00000418
	add r1, sp, #0x80
	ldr r0, [r4, r0]
	bl ov96_021EB588
	ldr r0, [sp, #0x18]
	add r5, #0x32
	add r0, r0, #1
	add r4, #0x20
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _022017F2
	mov r0, #3
	mov r1, #0
	str r0, [sp, #0xfc]
	mov r0, #1
	str r1, [sp, #0xf8]
	str r1, [sp, #0x100]
	str r0, [sp, #0x104]
	str r0, [sp, #0x108]
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _022018F4 ; =0x000005D8
	mov r1, #9
	ldr r0, [r7, r0]
	add r2, sp, #0x13c
	add r3, sp, #0xf8
	bl ov96_021EA8A8
	add r0, r6, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02201AFE
_02201874:
	ldr r0, _022018F4 ; =0x000005D8
	ldr r0, [r7, r0]
	bl ov96_021EAA00
	cmp r0, #0
	bne _02201882
	b _02201AFE
_02201882:
	ldr r3, _022018FC ; =ov96_0221C7D0
	add r2, sp, #0x74
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r7]
	bl PokeathlonCourse_SetVBlankIntrCB
	add r0, r6, #0
	mov r1, #1
	bl PokeathlonCourse_SetField1F4
	add r0, r6, #0
	bl ov96_021E5F24
	mov r1, #0
	str r1, [sp, #0x50]
	add r1, r0, #1
	lsl r0, r1, #1
	add r0, r1, r0
	mov r1, #0xc
	add r5, r7, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r0, _02201900 ; =ov96_0221C8C8
	str r0, [sp, #0x30]
	ldr r0, _02201904 ; =ov96_0221C8EC
	str r0, [sp, #0x2c]
	ldr r0, _02201908 ; =ov96_0221CA1C
	str r0, [sp, #0x28]
_022018C6:
	ldr r0, _022018F4 ; =0x000005D8
	b _0220190C
	nop
_022018CC: .word 0xFFFFE0FF
_022018D0: .word 0x04001000
_022018D4: .word 0x000005F4
_022018D8: .word 0x00000598
_022018DC: .word 0x00300010
_022018E0: .word gSystem + 0x60
_022018E4: .word 0x000005DC
_022018E8: .word ov96_0221C7B8
_022018EC: .word 0x000004E7
_022018F0: .word 0x000005D4
_022018F4: .word 0x000005D8
_022018F8: .word 0x00000418
_022018FC: .word ov96_0221C7D0
_02201900: .word ov96_0221C8C8
_02201904: .word ov96_0221C8EC
_02201908: .word ov96_0221CA1C
_0220190C:
	ldr r1, [sp, #0x50]
	ldr r0, [r7, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #1
	str r0, [sp, #0x4c]
	bl ov96_021EAB38
	ldr r0, [sp, #0x34]
	mov r1, #0xc
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x30]
	mov r1, #3
	ldr r0, [r0]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x2c]
	ldr r4, [r0]
	ldr r0, [sp, #0x50]
	bl _s32_div_f
	add r1, r0, #0
	lsl r2, r1, #2
	add r1, sp, #0x74
	ldr r0, [sp, #0x4c]
	ldr r1, [r1, r2]
	bl ov96_021EAC0C
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x44]
	add r2, r4, #0
	bl ov96_021EAF94
	mov r1, #0
	add r0, sp, #0x68
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #0x4c]
	bl ov96_021EAA20
	bl ov96_021E8BB0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0220198C
	ldr r0, [sp, #0x44]
	sub r4, #0x28
	lsl r0, r0, #0xc
	str r0, [sp, #0x68]
	lsl r0, r4, #0xc
	str r0, [sp, #0x6c]
	b _02201998
_0220198C:
	ldr r0, [sp, #0x44]
	sub r4, #0x19
	lsl r0, r0, #0xc
	str r0, [sp, #0x68]
	lsl r0, r4, #0xc
	str r0, [sp, #0x6c]
_02201998:
	ldr r0, [sp, #0x48]
	lsl r0, r0, #5
	add r1, r7, r0
	ldr r0, _02201B04 ; =0x00000418
	ldr r0, [r1, r0]
	add r1, sp, #0x68
	bl ov96_021EB588
	ldr r0, [r5, #0x70]
	add r1, sp, #0x68
	bl ov96_021EB588
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x4c]
	ldrb r1, [r1]
	add r1, #0x20
	bl ov96_021EABA8
	ldr r0, [sp, #0x34]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r0, r0, #4
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, r0, #4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x50]
	add r0, r0, #1
	str r0, [sp, #0x50]
	cmp r0, #9
	bge _022019E2
	b _022018C6
_022019E2:
	add r0, sp, #0xa8
	mov r1, #0xaa
	mov r2, #3
	bl ReadWholeNarcMemberByIdPair
	ldr r1, _02201B08 ; =0x00000708
	ldr r0, _02201B0C ; =0x000005E8
	strh r1, [r7, r0]
	mov r0, #0
	str r0, [sp, #0x40]
	str r0, [sp, #0x38]
	add r0, r7, #0
	str r0, [sp, #0x64]
	add r0, #0xb8
	str r0, [sp, #0x64]
	ldr r0, _02201B04 ; =0x00000418
	add r0, r7, r0
	str r0, [sp, #0x5c]
_02201A06:
	ldr r0, [sp, #0x40]
	mov r1, #0xc
	add r2, r7, r0
	ldr r0, _02201B10 ; =0x000005CC
	mov r4, #0
	strb r1, [r2, r0]
	ldr r0, [sp, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x60]
_02201A1A:
	ldr r0, [sp, #0x38]
	lsl r3, r4, #0x18
	add r5, r4, r0
	ldr r0, [sp, #0x5c]
	lsl r1, r5, #5
	add r0, r0, r1
	ldr r2, [sp, #0x60]
	str r0, [sp, #0x3c]
	str r0, [sp]
	add r0, r6, #0
	add r1, sp, #0xa8
	lsr r3, r3, #0x18
	bl ov96_0220329C
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _02201A56
	ldr r0, _02201B14 ; =0x000005DC
	mov r3, #0x48
	lsl r1, r5, #0x18
	mul r3, r5
	ldr r5, [sp, #0x64]
	ldr r0, [r7, r0]
	ldr r2, [sp, #0x3c]
	lsr r1, r1, #0x18
	add r3, r5, r3
	bl ov96_022043AC
_02201A56:
	add r4, r4, #1
	cmp r4, #3
	blt _02201A1A
	ldr r0, [sp, #0x38]
	add r0, r0, #3
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #4
	blt _02201A06
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _02201A8A
	add r0, r6, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	add r1, r0, #0
	add r0, r7, #0
	bl ov96_02202738
_02201A8A:
	mov r2, #0x5e
	lsl r2, r2, #4
	ldr r0, [r7, r2]
	sub r2, #0xc
	ldr r1, [r7, #0x48]
	ldr r2, [r7, r2]
	bl ov96_02203D74
	add r0, r6, #0
	bl ov96_021E5F24
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ov96_02201E10
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl sub_0203A994
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #0x44]
	mov r1, #3
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	add r0, r6, #0
	bl PokeathlonCourse_IncrementField1ED
	b _02201AFE
_02201AE2:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02201AFE
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _02201AF8
	bl GF_AssertFail
_02201AF8:
	add sp, #0x1fc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02201AFE:
	mov r0, #0
	add sp, #0x1fc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02201B04: .word 0x00000418
_02201B08: .word 0x00000708
_02201B0C: .word 0x000005E8
_02201B10: .word 0x000005CC
_02201B14: .word 0x000005DC
	thumb_func_end ov96_02201558

