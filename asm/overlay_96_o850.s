	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022050F8
	.public ov96_022052B0
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateTransitionType
	.extern ov96_021E5F24
	.extern ov96_021E8A20
	.extern ov96_021EB3E4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB630
	.extern ov96_02205D30
	.extern ov96_0220764C
	.extern ov96_02207870
	.extern ov96_02208AF0
	.extern ov96_02208AF8

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

