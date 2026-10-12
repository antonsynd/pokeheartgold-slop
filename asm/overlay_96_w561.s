	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022050F8
	.public ov96_022052B0
	.public ov96_0220549C
	.public ov96_02205520
	.public ov96_022055AC
	.public ov96_02205AFC
	.public ov96_02205C94
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateTransitionType
	.extern ov96_021E5F24
	.extern ov96_021E637C
	.extern ov96_021E667C
	.extern ov96_021E8228
	.extern ov96_021E8324
	.extern ov96_021E8A20
	.extern ov96_021EB144
	.extern ov96_021EB3E4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB630
	.extern ov96_021EB63C
	.extern ov96_02205D30
	.extern ov96_02205DD4
	.extern ov96_02205E30
	.extern ov96_022073F0
	.extern ov96_02207400
	.extern ov96_0220764C
	.extern ov96_02207870
	.extern ov96_022079B8
	.extern ov96_02207C64
	.extern ov96_02208AF0
	.extern ov96_02208AF8
	.extern ov96_02208B34

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
	thumb_func_start ov96_022050F8
ov96_022050F8: ; 0x022050F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r6, r1, #0
	mov r5, #0
	add r4, r0, #0
	mov r7, #6
_02205106:
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r7, [sp]
	bl ov96_021EB3E4
	mov r1, #0xe
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov96_021EB564
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #0x14
	blt _02205106
	ldr r4, [sp, #4]
	mov r5, #0
	mov r7, #0x11
_02205132:
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r7, [sp]
	bl ov96_021EB3E4
	mov r1, #0x47
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov96_021EB564
	mov r0, #0x12
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB3E4
	ldr r1, _022052A4 ; =0x00000474
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov96_021EB564
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0xa
	blt _02205132
	mov r0, #0
	ldr r7, [sp, #4]
	str r0, [sp, #8]
_0220517C:
	mov r0, #9
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB3E4
	mov r1, #2
	str r0, [r7, #0x6c]
	bl ov96_021EB564
	mov r4, #0
_02205196:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x17
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB3E4
	str r0, [r5, #0x70]
	mov r1, #3
	bl ov96_021EB564
	ldr r0, [r5, #0x70]
	mov r1, #2
	bl ov96_021EB630
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _02205196
	mov r0, #0x1b
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB3E4
	mov r1, #8
	str r0, [r7, #0x78]
	bl ov96_021EB564
	ldr r0, [sp, #8]
	add r7, #0xb8
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _0220517C
	ldr r4, [sp, #4]
	mov r5, #0
	mov r7, #0xe
_022051EE:
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r7, [sp]
	bl ov96_021EB3E4
	mov r1, #0xd3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #7
	bl ov96_021EB564
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov96_021EB630
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _022051EE
	ldr r4, [sp, #4]
	mov r5, #0
	mov r7, #0x19
_02205226:
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r7, [sp]
	bl ov96_021EB3E4
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov96_021EB564
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _02205226
	mov r4, #0
	mov r5, #0x1a
	mov r7, #0x10
_02205252:
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r5, [sp]
	bl ov96_021EB3E4
	ldr r2, [sp, #4]
	ldr r1, _022052A8 ; =0x0000056C
	mov r3, #0x68
	str r0, [r2, r1]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	str r7, [sp]
	bl ov96_021EB3E4
	ldr r2, [sp, #4]
	ldr r1, _022052AC ; =0x00000568
	str r0, [r2, r1]
	ldr r0, _022052AC ; =0x00000568
	add r1, r2, #0
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov96_021EB564
	ldr r1, [sp, #4]
	ldr r0, _022052A8 ; =0x0000056C
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov96_021EB564
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, #0x14
	str r0, [sp, #4]
	cmp r4, #5
	blt _02205252
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022052A4: .word 0x00000474
_022052A8: .word 0x0000056C
_022052AC: .word 0x00000568
	thumb_func_end ov96_022050F8

	thumb_func_start ov96_022052B0
ov96_022052B0: ; 0x022052B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	beq _022052D4
	cmp r0, #1
	bne _022052CC
	b _02205430
_022052CC:
	cmp r0, #2
	bne _022052D2
	b _02205456
_022052D2:
	b _02205466
_022052D4:
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	mov r3, #0xde
	ldr r2, [sp, #0x18]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	add r0, sp, #0x20
	mov r1, #0xe3
	bl ReadWholeNarcMemberByIdPair
	add r0, sp, #0x5c
	ldr r7, [sp, #0x18]
	str r0, [sp, #0x14]
	mov r0, #0
	add r6, sp, #0x20
	str r0, [sp, #0x1c]
	add r4, sp, #0x34
	add r5, r7, #0
_02205300:
	ldrb r0, [r4, #1]
	ldr r2, _02205474 ; =0x0000061C
	lsl r0, r0, #0x13
	lsr r1, r0, #0x10
	ldrb r0, [r4]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	strh r0, [r7, r2]
	ldrb r2, [r4, #1]
	lsl r3, r2, #3
	ldr r2, _02205478 ; =0x0000061E
	cmp r0, #0
	strh r3, [r7, r2]
	beq _0220533C
	cmp r1, #0
	beq _0220533C
	mov r2, #0xdf
	mov r3, #1
	lsl r2, r2, #2
	str r3, [r5, r2]
	add r2, #8
	strh r0, [r5, r2]
	ldr r0, _0220547C ; =0x00000386
	add r2, r3, #0
	strh r1, [r5, r0]
	sub r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r3, #0
	bl ov96_021EB52C
_0220533C:
	ldr r0, [sp, #0x1c]
	add r4, r4, #2
	add r0, r0, #1
	add r7, r7, #4
	add r5, #0xc
	str r0, [sp, #0x1c]
	cmp r0, #0x14
	blt _02205300
	ldr r5, [sp, #0x18]
	mov r7, #0
	add r4, r5, #0
_02205352:
	ldrb r0, [r6, #1]
	ldr r2, _02205480 ; =0x0000066C
	lsl r0, r0, #0x13
	lsr r1, r0, #0x10
	ldrb r0, [r6]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	strh r0, [r5, r2]
	ldrb r2, [r6, #1]
	lsl r3, r2, #3
	ldr r2, _02205484 ; =0x0000066E
	cmp r0, #0
	strh r3, [r5, r2]
	beq _02205398
	cmp r1, #0
	beq _02205398
	ldr r2, _02205488 ; =0x0000046C
	mov r3, #1
	str r3, [r4, r2]
	add r2, #0xc
	strh r0, [r4, r2]
	ldr r0, _0220548C ; =0x0000047A
	add r2, r3, #0
	strh r1, [r4, r0]
	sub r0, #0xa
	ldr r0, [r4, r0]
	add r1, r3, #0
	bl ov96_021EB52C
	ldr r0, _02205490 ; =0x00000474
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov96_021EB52C
_02205398:
	add r7, r7, #1
	add r6, r6, #2
	add r5, r5, #4
	add r4, #0x10
	cmp r7, #0xa
	blt _02205352
	ldr r0, _02205494 ; =0x000005C8
	ldr r2, [sp, #0x18]
	mov r3, #0
	add r1, r0, #2
_022053AC:
	ldr r4, [sp, #0x14]
	add r3, r3, #1
	ldrb r4, [r4]
	lsl r4, r4, #3
	strh r4, [r2, r0]
	ldr r4, [sp, #0x14]
	ldrb r4, [r4, #1]
	lsl r4, r4, #3
	strh r4, [r2, r1]
	ldr r4, [sp, #0x14]
	add r2, r2, #4
	add r4, r4, #2
	str r4, [sp, #0x14]
	cmp r3, #0x14
	blt _022053AC
	ldr r0, [sp, #0xc]
	bl ov96_021E5F24
	cmp r0, #0
	bne _02205408
	ldr r0, [sp, #0x18]
	bl ov96_02207870
	mov r1, #0xdb
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, sp, #0x34
	bl ov96_02208AF8
	mov r1, #0xdb
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, sp, #0x20
	bl ov96_02208AF8
	mov r1, #0xdb
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r2, _02205498 ; =0x00000564
	ldr r1, [sp, #0x18]
	add r1, r1, r2
	bl ov96_02208AF0
_02205408:
	ldr r0, [sp, #0x18]
	bl ov96_0220764C
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _0220541C
	bl GF_AssertFail
_0220541C:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x13
	bl PokeathlonCourse_SetStateTransitionType
	b _02205466
_02205430:
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
	b _02205466
_02205456:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02205466
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl PokeathlonCourse_SetStateField07
_02205466:
	ldr r0, [sp, #0xc]
	bl ov96_02205D30
	mov r0, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_02205474: .word 0x0000061C
_02205478: .word 0x0000061E
_0220547C: .word 0x00000386
_02205480: .word 0x0000066C
_02205484: .word 0x0000066E
_02205488: .word 0x0000046C
_0220548C: .word 0x0000047A
_02205490: .word 0x00000474
_02205494: .word 0x000005C8
_02205498: .word 0x00000564
	thumb_func_end ov96_022052B0

	thumb_func_start ov96_0220549C
ov96_0220549C: ; 0x0220549C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022054BA
	cmp r0, #1
	beq _022054D2
	cmp r0, #2
	beq _022054EA
	b _0220551A
_022054BA:
	add r0, r5, #0
	bl ov96_02205D30
	add r0, r5, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _0220551A
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0220551A
_022054D2:
	add r0, r5, #0
	bl ov96_022055AC
	add r0, r5, #0
	bl ov96_02205C94
	cmp r0, #0
	beq _0220551A
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0220551A
_022054EA:
	add r0, r5, #0
	bl ov96_022055AC
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _0220551A
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
_0220551A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov96_0220549C

	thumb_func_start ov96_02205520
ov96_02205520: ; 0x02205520
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r5, r0, #0
	add r0, r7, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	ldrb r0, [r4]
	cmp r0, #0
	bne _02205548
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02205544
	mov r0, #1
	strb r0, [r4]
_02205544:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02205548:
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	beq _02205556
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02205556:
	add r5, #0x28
	add r0, r5, #0
	bl ov96_021E8A20
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02205564:
	ldr r0, [r5]
	lsr r1, r0, #0x12
	ldr r0, _022055A4 ; =0x000003FF
	and r0, r1
	ldrh r1, [r6, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r2, r1, #0xb
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, _022055A8 ; =0x000003E7
	cmp r2, r0
	bls _0220558A
	add r2, r0, #0
_0220558A:
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl PokeathlonCourse_SetField5E0_AtIndex
	add r4, r4, #1
	add r6, r6, #2
	add r5, r5, #4
	cmp r4, #4
	blt _02205564
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022055A4: .word 0x000003FF
_022055A8: .word 0x000003E7
	thumb_func_end ov96_02205520

	thumb_func_start ov96_022055AC
ov96_022055AC: ; 0x022055AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	str r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0x28]
	ldr r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x2c]
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	beq _022055CC
	b _02205AE0
_022055CC:
	ldr r1, _022058B4 ; =0x0000050E
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _022055EC
	ldr r0, [sp, #0x28]
	add r0, #0x28
	str r0, [sp, #0x28]
	bl ov96_021E8A20
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl ov96_02205AFC
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
_022055EC:
	ldr r0, [sp, #0x28]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_02205600:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02205600
	ldr r0, [r3]
	ldr r1, _022058B8 ; =0x0000050C
	str r0, [r4]
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0220561C
	sub r2, r0, #1
	ldr r0, [sp, #0x2c]
	strh r2, [r0, r1]
_0220561C:
	mov r1, #0xdb
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl ov96_02208B34
	mov r0, #0
	ldr r5, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r1, r0, #0
	ldr r2, _022058BC ; =0x0000051B
	ldr r0, [sp, #0x2c]
	add r4, r5, #0
	strb r1, [r0, r2]
	ldr r0, [sp, #0x28]
	add r6, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x50
	str r0, [sp, #0x18]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x24
	str r0, [sp, #0x14]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0xa0
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0xac
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x88
	str r0, [sp, #8]
	str r0, [sp, #4]
_02205664:
	ldr r0, [sp, #0x18]
	bl ov96_021E8A20
	add r7, r0, #0
	ldr r0, [r7]
	cmp r0, #0
	beq _022056AA
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0220568E
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0220568E
	mov r0, #0xc1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _022056B6
_0220568E:
	cmp r1, #0
	bne _022056B6
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022056B6
	mov r0, #0xc1
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	b _022056B6
_022056AA:
	mov r0, #0xc1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
_022056B6:
	add r0, r4, #0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205750
	add r0, r4, #0
	add r0, #0xc1
	ldrb r1, [r0]
	cmp r1, #1
	bne _022056F6
	ldrb r0, [r7, #8]
	cmp r0, #1
	bne _022056F6
	add r0, r4, #0
	add r0, #0xd5
	ldrb r0, [r0]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xd5
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0xc1
	mov r0, #2
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0xd4
	mov r0, #1
	strb r0, [r1]
	b _0220571C
_022056F6:
	cmp r1, #2
	bne _0220571C
	ldrb r0, [r7, #8]
	cmp r0, #2
	bne _0220571C
	add r1, r4, #0
	add r1, #0xc1
	mov r0, #0
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0xc0
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0xcf
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0xd4
	mov r0, #1
	strb r0, [r1]
_0220571C:
	mov r0, #0xcd
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r1, r4, #0
	add r1, #0x9e
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xa8
	add r2, r4, #0
	add r3, #0xa0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xac
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _02205A72
_02205750:
	add r0, r4, #0
	add r0, #0xca
	ldrb r0, [r0]
	cmp r0, #1
	bne _0220578E
	mov r0, #0xcd
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r1, r4, #0
	add r1, #0x9e
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xa8
	add r2, r4, #0
	add r3, #0xa0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xac
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _02205A72
_0220578E:
	add r0, r4, #0
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #0
	beq _022057CC
	mov r0, #0xcd
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r1, r4, #0
	add r1, #0x9e
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xa8
	add r2, r4, #0
	add r3, #0xa0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xac
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _02205A72
_022057CC:
	add r0, r4, #0
	add r0, #0xcf
	ldrb r0, [r0]
	cmp r0, #0
	beq _0220580A
	mov r0, #0xcd
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r1, r4, #0
	add r1, #0x9e
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xa8
	add r2, r4, #0
	add r3, #0xa0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xac
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _02205A72
_0220580A:
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02205862
	ldr r1, [sp, #0x30]
	ldrb r2, [r7, #4]
	lsl r1, r1, #0x18
	ldrb r3, [r7, #5]
	ldr r0, [sp, #0x2c]
	lsr r1, r1, #0x18
	bl ov96_02205DD4
	cmp r0, #0
	beq _022058F2
	mov r0, #0xcd
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldrb r0, [r7, #4]
	add r3, r4, #0
	add r2, r4, #0
	lsl r1, r0, #0xc
	add r0, r4, #0
	add r0, #0xa0
	str r1, [r0]
	ldrb r0, [r7, #5]
	add r3, #0xa0
	add r2, #0xac
	lsl r1, r0, #0xc
	add r0, r4, #0
	add r0, #0xa4
	str r1, [r0]
	add r1, r4, #0
	add r1, #0xa8
	mov r0, #0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _022058F2
_02205862:
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022058C0
	add r0, r4, #0
	add r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0xff
	bhs _02205886
	add r0, r4, #0
	add r0, #0x9e
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x9e
	strh r1, [r0]
	b _02205890
_02205886:
	mov r0, #0x51
	ldr r1, [sp, #0x2c]
	mov r2, #1
	lsl r0, r0, #4
	strb r2, [r1, r0]
_02205890:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0220589C
	b _02205A72
_0220589C:
	ldrb r0, [r7, #4]
	lsl r1, r0, #0xc
	add r0, r4, #0
	add r0, #0xac
	str r1, [r0]
	ldrb r0, [r7, #5]
	lsl r1, r0, #0xc
	add r0, r4, #0
	add r0, #0xb0
	str r1, [r0]
	b _022058F2
	nop
_022058B4: .word 0x0000050E
_022058B8: .word 0x0000050C
_022058BC: .word 0x0000051B
_022058C0:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _022058EE
	add r0, r4, #0
	add r0, #0x9e
	ldrh r0, [r0]
	cmp r0, #0x1e
	bhi _022058DC
	add r1, r4, #0
	add r1, #0xc9
	mov r0, #1
	strb r0, [r1]
_022058DC:
	mov r0, #0xcd
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r2, r1, #0
	mov r0, #0x51
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #4
	strb r2, [r1, r0]
_022058EE:
	mov r0, #1
	str r0, [sp, #0x24]
_022058F2:
	add r0, r4, #0
	add r0, #0xc9
	ldrb r0, [r0]
	cmp r0, #0
	bne _022058FE
	b _02205A42
_022058FE:
	mov r1, #0
	add r0, sp, #0x54
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r4, #0
	add r0, #0xd5
	ldrb r1, [r0]
	mov r0, #0x14
	mul r0, r1
	add r2, r4, r0
	ldr r0, [r2, #0x30]
	str r0, [sp, #0x20]
	ldr r0, [r2, #0x34]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl ov96_022073F0
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	bl _fmul
	bl _f2d
	ldr r3, _02205AE4 ; =0x40200000
	mov r2, #0
	bl _ddiv
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _02205AE8 ; =0x40B00000
	mov r0, #0
	bl _dmul
	bl _dfix
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x60
	bl VEC_Subtract
	add r1, sp, #0x60
	ldr r0, [sp, #0x34]
	add r2, sp, #0x54
	add r3, r1, #0
	bl VEC_MultAdd
	add r0, sp, #0x60
	bl VEC_Mag
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	bl _fflt
	add r2, r4, #0
	add r2, #0x88
	add r3, sp, #0x6c
	ldmia r2!, {r0, r1}
	mov ip, r3
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r1, sp, #0x60
	str r0, [r3]
	mov r0, ip
	mov r2, ip
	bl ov96_02207400
	add r0, sp, #0x6c
	bl VEC_Mag
	bl _fflt
	str r0, [sp, #0x38]
	ldr r0, _02205AEC ; =0x45800000
	add r1, r7, #0
	bl _fmul
	add r1, r0, #0
	ldr r0, [sp, #0x38]
	bl _fgr
	bls _022059EA
	mov r1, #0
	add r0, sp, #0x3c
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0x6c
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, _02205AEC ; =0x45800000
	add r1, r7, #0
	bl _fmul
	bl _ffix
	ldr r3, [sp, #8]
	add r1, sp, #0x6c
	add r2, sp, #0x3c
	bl VEC_MultAdd
	ldr r0, _02205AEC ; =0x45800000
	add r1, r7, #0
	bl _fmul
	bl _ffix
	add r1, sp, #0x6c
	add r2, sp, #0x3c
	add r3, sp, #0x48
	bl VEC_MultAdd
	b _02205A00
_022059EA:
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	add r1, sp, #0x60
	bl ov96_02207400
	add r3, sp, #0x60
	ldmia r3!, {r0, r1}
	add r2, sp, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_02205A00:
	ldr r0, [sp, #4]
	bl ov96_022079B8
	add r1, r4, #0
	add r1, #0xd4
	strb r0, [r1]
	ldr r1, [sp, #0x2c]
	ldr r0, _02205AF0 ; =0x0000051B
	mov r2, #1
	strb r2, [r1, r0]
	ldr r1, [r4, #0x7c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r2, r0, #0xc
	ldr r1, [sp, #0x2c]
	ldr r0, _02205AF4 ; =0x00000522
	strh r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x80
	ldr r1, [r0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r2, r0, #0xc
	mov r0, #0x52
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #4
	strh r2, [r1, r0]
	add r1, r4, #0
	add r1, #0xc9
	mov r0, #0
	strb r0, [r1]
_02205A42:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02205A72
	add r1, r4, #0
	add r1, #0x9e
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r4, #0
	add r3, r4, #0
	add r1, #0xa8
	add r2, r4, #0
	add r3, #0xa0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xac
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_02205A72:
	ldr r0, [sp, #0x18]
	add r5, #0xc
	add r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, #0xb8
	add r0, #0xb8
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	add r0, #0xb8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0xb8
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0xb8
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0xb8
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #4
	bge _02205AA8
	b _02205664
_02205AA8:
	ldr r0, [sp]
	bl ov96_02205E30
	ldr r0, [sp, #0x2c]
	bl ov96_02207870
	ldr r1, _02205AF8 ; =0x0000050C
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _02205AC6
	mov r2, #1
	add r1, r1, #2
	ldr r0, [sp, #0x2c]
	b _02205ACC
_02205AC6:
	ldr r0, [sp, #0x2c]
	mov r2, #0
	add r1, r1, #2
_02205ACC:
	strb r2, [r0, r1]
	ldr r0, [sp, #0x28]
	add r0, #0x28
	str r0, [sp, #0x28]
	bl ov96_021E8A20
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl ov96_02205AFC
_02205AE0:
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02205AE4: .word 0x40200000
_02205AE8: .word 0x40B00000
_02205AEC: .word 0x45800000
_02205AF0: .word 0x0000051B
_02205AF4: .word 0x00000522
_02205AF8: .word 0x0000050C
	thumb_func_end ov96_022055AC

	thumb_func_start ov96_02205AFC
ov96_02205AFC: ; 0x02205AFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	str r0, [sp, #4]
	mov r0, #0x57
	ldr r2, [sp, #0xc]
	str r1, [sp]
	add r4, r1, #0
	lsl r0, r0, #4
_02205B18:
	ldr r1, [r3, r0]
	add r2, r2, #1
	strh r1, [r4, #0x18]
	add r3, #0x14
	add r4, r4, #2
	cmp r2, #5
	blt _02205B18
	ldr r0, [sp, #0x14]
	ldr r1, [sp]
	mov r3, #0
	add r0, #0x24
	add r2, r1, #0
	add r5, r3, #0
_02205B32:
	add r4, r0, #0
	add r4, #0xaa
	ldrb r4, [r4]
	ldr r6, [r0, #0x58]
	lsl r4, r4, #0x1c
	str r4, [sp, #0x10]
	add r4, r0, #0
	add r4, #0xac
	ldrh r4, [r4]
	lsl r4, r4, #0x12
	mov lr, r4
	asr r4, r6, #0xb
	lsr r4, r4, #0x14
	add r4, r6, r4
	asr r7, r4, #0xc
	ldr r4, [r0, #0x5c]
	mov ip, r4
	asr r4, r4, #0xb
	lsr r6, r4, #0x14
	mov r4, ip
	add r6, r4, r6
	asr r4, r6, #0xc
	lsl r4, r4, #9
	orr r4, r7
	mov r6, lr
	orr r6, r4
	ldr r4, [sp, #0x10]
	orr r4, r6
	stmia r1!, {r4}
	add r6, r0, #0
	add r6, #0xb1
	ldrb r6, [r6]
	ldrh r4, [r2, #0x18]
	lsl r6, r6, #5
	orr r4, r6
	add r6, r0, #0
	strh r4, [r2, #0x18]
	add r6, #0xb0
	ldrb r6, [r6]
	ldrh r4, [r2, #0x18]
	sub r6, r6, #1
	lsl r6, r6, #7
	orr r4, r6
	add r6, r0, #0
	strh r4, [r2, #0x18]
	add r6, #0xa6
	ldrb r6, [r6]
	ldrh r4, [r2, #0x18]
	lsl r6, r6, #9
	orr r4, r6
	add r6, r0, #0
	strh r4, [r2, #0x18]
	add r6, #0xa7
	ldrb r6, [r6]
	ldrh r4, [r2, #0x18]
	lsl r6, r6, #0xb
	orr r4, r6
	strh r4, [r2, #0x18]
	add r4, r0, #0
	add r4, #0xab
	ldrb r4, [r4]
	add r2, r2, #2
	add r6, r4, #0
	lsl r6, r3
	ldr r4, [sp, #8]
	orr r4, r6
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #8]
	add r4, r0, #0
	add r4, #0x9d
	ldrb r4, [r4]
	add r0, #0xb8
	add r6, r4, #0
	lsl r6, r5
	ldr r4, [sp, #0xc]
	add r5, r5, #2
	orr r4, r6
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x14]
	add r6, r4, r3
	ldr r4, _02205C8C ; =0x000006BC
	ldrb r4, [r6, r4]
	add r6, r4, #0
	lsl r6, r3
	ldr r4, [sp, #4]
	add r3, r3, #1
	orr r4, r6
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #4]
	cmp r3, #4
	blt _02205B32
	ldr r0, [sp]
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r0, _02205C90 ; =0x0000051E
	ldr r1, [sp, #0x14]
	ldr r3, [sp]
	ldrh r1, [r1, r0]
	sub r4, r0, #2
	orr r1, r2
	str r1, [r3, #0x14]
	ldr r3, [sp, #0x14]
	ldrh r3, [r3, r4]
	sub r4, r0, #5
	lsl r3, r3, #9
	orr r1, r3
	ldr r3, [sp]
	str r1, [r3, #0x14]
	ldr r3, [sp, #0x14]
	ldrb r3, [r3, r4]
	lsl r3, r3, #0x12
	orr r3, r1
	ldr r1, [sp]
	str r3, [r1, #0x14]
	ldr r1, [sp, #4]
	lsl r1, r1, #0x13
	orr r3, r1
	ldr r1, [sp]
	str r3, [r1, #0x14]
	str r2, [r1, #0x10]
	ldr r1, [sp, #0x14]
	add r3, r0, #4
	ldrh r1, [r1, r3]
	add r3, r2, #0
	add r2, r0, #2
	orr r3, r1
	ldr r1, [sp]
	str r3, [r1, #0x10]
	ldr r1, [sp, #0x14]
	ldrh r1, [r1, r2]
	sub r2, r0, #3
	lsl r1, r1, #9
	orr r3, r1
	ldr r1, [sp]
	str r3, [r1, #0x10]
	ldr r1, [sp, #0x14]
	ldrb r1, [r1, r2]
	add r2, r3, #0
	lsl r1, r1, #0x12
	orr r2, r1
	ldr r1, [sp]
	str r2, [r1, #0x10]
	ldr r1, [sp, #8]
	lsl r1, r1, #0x13
	orr r2, r1
	ldr r1, [sp]
	add r3, r2, #0
	str r2, [r1, #0x10]
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	sub r2, #0x10
	lsl r1, r1, #0x17
	orr r3, r1
	ldr r1, [sp]
	sub r0, #0x12
	str r3, [r1, #0x10]
	ldr r1, [sp, #0x14]
	ldrb r1, [r1, r2]
	add r2, r3, #0
	lsl r1, r1, #0x1f
	orr r2, r1
	ldr r1, [sp]
	str r2, [r1, #0x10]
	ldr r1, [sp, #0x14]
	ldrh r1, [r1, r0]
	ldr r0, [sp]
	strh r1, [r0, #0x22]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02205C8C: .word 0x000006BC
_02205C90: .word 0x0000051E
	thumb_func_end ov96_02205AFC

	thumb_func_start ov96_02205C94
ov96_02205C94: ; 0x02205C94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r7, r0, #0
	bl ov96_021E8A20
	add r4, r0, #0
	mov r0, #0
	add r7, #0xf0
	str r0, [r4]
	add r0, r7, #0
	bl ov96_021E8A20
	ldr r0, [r0, #0x10]
	mov r1, #1
	lsr r0, r0, #0x1f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _02205CE4
	ldr r0, [r6, #0x20]
	bl ov96_021EB63C
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl ov96_021EB144
	ldr r1, _02205D28 ; =ov96_02207C64
	add r0, r5, #0
	bl ov96_021E8324
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02205CE4:
	bl System_GetTouchNew
	cmp r0, #0
	beq _02205D06
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_02205D06:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _02205D1C
	ldr r0, _02205D2C ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	strb r1, [r4, #4]
	ldrh r0, [r0, #0x22]
	strb r0, [r4, #5]
	mov r0, #1
	str r0, [r4]
_02205D1C:
	add r0, r5, #0
	bl ov96_02205D30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02205D28: .word ov96_02207C64
_02205D2C: .word gSystem + 0x40
	thumb_func_end ov96_02205C94

