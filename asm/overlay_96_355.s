	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F6398
	.public ov96_021F6424
	.public ov96_021F64A0
	.public ov96_021F6524
	.extern ov96_0221C0F4

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
	thumb_func_start ov96_021F6398
ov96_021F6398: ; 0x021F6398
	push {r3, r4, lr}
	sub sp, #0x2c
	ldr r3, _021F6420 ; =ov96_0221C0F4
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x65
	str r0, [r2]
	lsl r1, r1, #2
	mov r2, #0
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	add r0, sp, #0xc
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, sp, #0xc
	str r0, [sp, #8]
	add r0, r4, r1
	mov r1, #0x19
	lsl r1, r1, #0xe
	mov r3, #0xa4
	bl Camera_Init_FromTargetDistanceAndAngle
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, sp, #0x14
	bl Camera_OffsetLookAtPosAndTarget
	mov r2, #0x19
	mov r0, #1
	lsl r2, r2, #4
	lsl r0, r0, #0xe
	ldr r2, [r4, r2]
	lsl r1, r0, #6
	bl Camera_SetPerspectiveClippingPlane
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x28]
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, sp, #0x20
	bl Camera_SetLookAtCamUp
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Camera_SetStaticPtr
	add sp, #0x2c
	pop {r3, r4, pc}
	.balign 4, 0
_021F6420: .word ov96_0221C0F4
	thumb_func_end ov96_021F6398

	thumb_func_start ov96_021F6424
ov96_021F6424: ; 0x021F6424
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0
	add r2, r1, #0
	mov r3, #1
	add r4, r0, #0
	bl ov96_021F6524
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #2
	bl ov96_021F6524
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl ov96_021F6524
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #6
	mov r0, #0
	lsl r3, r3, #8
	lsr r5, r2, #2
	lsr r6, r2, #1
_021F6458:
	ldr r7, [r4, r5]
	str r7, [r4]
	ldr r1, [r4, r6]
	cmp r7, r1
	ble _021F6464
	str r1, [r4]
_021F6464:
	ldr r7, [r4, r3]
	ldr r1, [r4]
	cmp r1, r7
	ble _021F646E
	str r7, [r4]
_021F646E:
	ldr r7, [r4, r2]
	ldr r1, [r4]
	cmp r1, r7
	ble _021F6478
	str r7, [r4]
_021F6478:
	mov r1, #0xa
	lsl r1, r1, #8
	ldr r7, [r4, r1]
	ldr r1, [r4]
	cmp r1, r7
	ble _021F6486
	str r7, [r4]
_021F6486:
	mov r1, #3
	lsl r1, r1, #0xa
	ldr r7, [r4, r1]
	ldr r1, [r4]
	cmp r1, r7
	ble _021F6494
	str r7, [r4]
_021F6494:
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, #0x80
	blt _021F6458
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6424

	thumb_func_start ov96_021F64A0
ov96_021F64A0: ; 0x021F64A0
	push {r4, r5, r6, r7}
	mov r4, #1
	mov r5, #2
	mov r6, #4
	mov r3, #0
	and r4, r1
	and r5, r1
	and r1, r6
_021F64B0:
	mov r6, #0
	str r6, [r2]
	cmp r4, #0
	beq _021F64D4
	mov r6, #2
	lsl r6, r6, #8
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F64C6
	str r7, [r2]
_021F64C6:
	mov r6, #2
	lsl r6, r6, #0xa
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F64D4
	str r7, [r2]
_021F64D4:
	cmp r5, #0
	beq _021F64F4
	mov r6, #1
	lsl r6, r6, #0xa
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F64E6
	str r7, [r2]
_021F64E6:
	mov r6, #0xa
	lsl r6, r6, #8
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F64F4
	str r7, [r2]
_021F64F4:
	cmp r1, #0
	beq _021F6514
	mov r6, #6
	lsl r6, r6, #8
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F6506
	str r7, [r2]
_021F6506:
	mov r6, #3
	lsl r6, r6, #0xa
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F6514
	str r7, [r2]
_021F6514:
	add r3, r3, #1
	add r2, r2, #4
	add r0, r0, #4
	cmp r3, #0x80
	blt _021F64B0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F64A0

	thumb_func_start ov96_021F6524
ov96_021F6524: ; 0x021F6524
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r3, sp, #0x20
	ldrb r4, [r3, #0xc]
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0xe
	lsl r1, r1, #8
	ldrb r3, [r3, #8]
	lsl r5, r4, #2
	add r1, r2, r1
	lsl r4, r3, #2
	add r7, r1, r5
	ldr r3, [r1, r4]
	ldr r5, [r1, r5]
	cmp r3, r5
	bgt _021F6550
	add r6, r1, r4
	add r5, sp, #0x28
	add r1, sp, #0x2c
	b _021F6558
_021F6550:
	add r6, r7, #0
	add r7, r1, r4
	add r5, sp, #0x2c
	add r1, sp, #0x28
_021F6558:
	lsl r0, r0, #9
	add r3, r2, r0
	mov ip, r1
	mov r1, #0
	mov r0, #2
	str r3, [sp]
	add r4, r1, #0
	lsl r0, r0, #0xa
_021F6568:
	add r1, r1, #1
	str r4, [r3, r0]
	add r3, r3, #4
	cmp r1, #0x80
	blt _021F6568
	ldrb r1, [r5]
	ldr r0, [r6]
	lsl r1, r1, #9
	add r3, r2, r1
	lsl r1, r0, #2
	add r3, r3, r1
	mov r1, #2
	lsl r1, r1, #8
	ldr r5, [r3, r1]
	mov r3, ip
	ldrb r3, [r3]
	ldr r1, [r7]
	lsl r3, r3, #9
	add r3, r2, r3
	lsl r2, r1, #2
	add r3, r3, r2
	mov r2, #2
	lsl r2, r2, #8
	ldr r2, [r3, r2]
	sub r0, r1, r0
	str r0, [sp, #4]
	sub r0, r0, #1
	sub r7, r2, r5
	str r0, [sp, #8]
	cmp r0, #0
	ble _021F65C8
_021F65A6:
	add r0, r4, #1
	ldr r1, [sp, #4]
	mul r0, r7
	bl _s32_div_f
	ldr r1, [r6]
	add r0, r5, r0
	add r1, r1, r4
	lsl r2, r1, #2
	ldr r1, [sp]
	add r4, r4, #1
	add r2, r1, r2
	ldr r1, _021F65D4 ; =0x00000804
	str r0, [r2, r1]
	ldr r0, [sp, #8]
	cmp r4, r0
	blt _021F65A6
_021F65C8:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021F65D4: .word 0x00000804
	thumb_func_end ov96_021F6524

