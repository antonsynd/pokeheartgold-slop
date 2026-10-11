	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F342C
	.public ov96_021F350C
	.public ov96_021F380C
	.public ov96_021F3888
	.public ov96_021F38FC
	.public ov96_021F3930
	.extern ov96_021EAF78
	.extern ov96_021EB06C
	.extern ov96_021EB0A4
	.extern ov96_021F333C
	.extern ov96_021F39F0
	.extern ov96_021F3A5C
	.extern ov96_021F3AB0
	.extern ov96_021F3AD8
	.extern ov96_021F3B04
	.extern ov96_021F3B38

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
	thumb_func_start ov96_021F342C
ov96_021F342C: ; 0x021F342C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021F34FC ; =0x000004EA
	add r7, r1, #0
	ldrb r1, [r5, r0]
	mov r4, #0xc
	cmp r1, #4
	bne _021F3440
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F3440:
	sub r1, r0, #4
	ldrb r1, [r5, r1]
	add r2, r1, #1
	sub r1, r0, #4
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	sub r1, r0, #3
	ldrb r1, [r5, r1]
	cmp r2, r1
	blo _021F3484
	add r1, r0, #0
	mov r2, #1
	sub r1, #0x3a
	str r2, [r5, r1]
	sub r2, r0, #4
	mov r1, #0
	strb r1, [r5, r2]
	sub r0, r0, #6
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _021F3484
	ldr r2, _021F3500 ; =0x000004B4
	add r0, r1, #0
	add r3, r2, #0
	add r3, #0x30
_021F3472:
	lsl r6, r1, #2
	add r6, r5, r6
	str r0, [r6, r2]
	add r1, r1, #1
	lsl r1, r1, #0x18
	ldrb r6, [r5, r3]
	lsr r1, r1, #0x18
	cmp r1, r6
	blo _021F3472
_021F3484:
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021F34F6
	add r1, r0, #0
	add r1, #0x39
	ldrb r4, [r5, r1]
	add r1, r0, #0
	add r1, #0x38
	add r0, #0x35
	ldrb r2, [r5, r1]
	mov r1, #2
	ldrb r0, [r5, r0]
	sub r1, r1, r2
	add r2, r4, r0
	lsl r0, r2, #1
	add r0, r2, r0
	add r6, r1, r0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	cmp r0, r4
	bge _021F34BA
	bl GF_AssertFail
_021F34BA:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	bl ov96_021F350C
	lsl r0, r6, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021F3504 ; =0x000004E5
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	sub r1, r0, #1
	ldrb r2, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r2, r1
	blo _021F34F6
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #3
	ldrb r0, [r5, r0]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _021F3508 ; =0x000004E8
	strb r1, [r5, r0]
	mov r1, #0
	sub r0, #0x38
	str r1, [r5, r0]
_021F34F6:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F34FC: .word 0x000004EA
_021F3500: .word 0x000004B4
_021F3504: .word 0x000004E5
_021F3508: .word 0x000004E8
	thumb_func_end ov96_021F342C

	thumb_func_start ov96_021F350C
ov96_021F350C: ; 0x021F350C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x198
	lsl r1, r1, #5
	str r0, [sp, #8]
	add r0, r0, r1
	str r2, [sp, #0xc]
	str r0, [sp, #0x20]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	bne _021F3524
	b _021F3800
_021F3524:
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _021F3534
	bl GF_AssertFail
	add sp, #0x198
	pop {r3, r4, r5, r6, r7, pc}
_021F3534:
	ldr r1, _021F3804 ; =0x000004E8
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	sub r1, #0x34
	lsl r2, r0, #2
	ldr r0, [sp, #8]
	add r0, r0, r2
	ldr r0, [r0, r1]
	cmp r0, #3
	bge _021F356C
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, #0x1e
	bge _021F356C
	ldr r0, [sp, #8]
	ldr r1, _021F3808 ; =0x000004B4
	add sp, #0x198
	add r2, r0, r1
	add r1, #0x34
	ldrb r0, [r0, r1]
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	add r0, r0, #1
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021F356C:
	ldr r5, [sp, #8]
	mov r4, #0
	add r6, sp, #0x3c
	add r7, sp, #0x38
_021F3574:
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	beq _021F35A6
	ldr r2, [r5, #0xc]
	add r3, sp, #0x40
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldmia r2!, {r1, r2}
	bl ov96_021EAF78
	ldr r1, [sp, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, [sp, #0x3c]
	asr r0, r0, #0xc
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	bl ov96_021F38FC
	b _021F35AA
_021F35A6:
	mov r0, #0
	mvn r0, r0
_021F35AA:
	add r4, r4, #1
	str r0, [r5]
	add r5, #0x20
	cmp r4, #0xc
	blt _021F3574
	ldr r0, [sp, #0x20]
	ldr r2, [r0, #0xc]
	add r0, sp, #0x44
	str r0, [sp]
	ldr r3, [r2]
	ldr r0, [sp, #0x20]
	asr r1, r3, #0xb
	lsr r1, r1, #0x14
	add r1, r3, r1
	ldr r3, [r2, #4]
	ldr r0, [r0, #0x1c]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	add r3, sp, #0x48
	bl ov96_021EB06C
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x44]
	bl ov96_021F38FC
	ldr r1, [sp, #0x20]
	str r0, [r1]
	ldr r0, [sp, #0xc]
	add r1, sp, #0xb0
	bl ov96_021F333C
	mov r6, #0
	ldr r5, [sp, #8]
	add r4, sp, #0xb0
	sub r7, r6, #1
_021F35F6:
	ldr r0, [r4]
	cmp r0, #0
	ble _021F360C
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	bl ov96_021F38FC
	mov r1, #0x4a
	lsl r1, r1, #4
	str r0, [r5, r1]
	b _021F3612
_021F360C:
	mov r0, #0x4a
	lsl r0, r0, #4
	str r7, [r5, r0]
_021F3612:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #4
	blt _021F35F6
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	add r2, sp, #0x24
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	add r2, #2
	add r3, sp, #0x24
	bl ov96_021F3B04
	cmp r0, #0
	bne _021F363A
	bl GF_AssertFail
_021F363A:
	ldr r4, [sp, #8]
	mov r0, #0
	mov r1, #6
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r6, r0, #0
	lsl r1, r1, #6
	add r0, r4, #0
	add r5, r0, r1
	add r0, sp, #0x24
	mov r1, #2
	ldrsh r1, [r0, r1]
	add r7, sp, #0x134
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x10]
_021F365C:
	mov r0, #0x67
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	ldr r0, [sp, #0x14]
	sub r1, r1, #2
	add r1, r1, r0
	mov r0, #6
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	sub r1, r0, #2
	ldr r0, [sp, #0x10]
	add r1, r1, r0
	mov r0, #0x61
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	blt _021F36A4
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	blt _021F36A4
	cmp r1, #7
	bge _021F36A4
	cmp r0, #5
	blt _021F36AE
_021F36A4:
	mov r0, #0x19
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021F36B6
_021F36AE:
	mov r0, #0x19
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
_021F36B6:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp, #0x14]
	sub r1, r1, r0
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	ldr r0, [sp, #0x10]
	str r5, [r7]
	sub r0, r2, r0
	mov r2, #0
	mvn r2, r2
	cmp r1, r2
	blt _021F36F2
	cmp r1, #1
	bgt _021F36F2
	add r1, r2, #0
	cmp r0, r1
	blt _021F36F2
	cmp r0, #1
	bgt _021F36F2
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x1c]
	add r1, r1, #1
	str r1, [sp, #0x1c]
	lsl r0, r0, #2
	add r1, sp, #0x8c
	str r5, [r1, r0]
	b _021F3700
_021F36F2:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x18]
	add r1, r1, #1
	str r1, [sp, #0x18]
	lsl r0, r0, #2
	add r1, sp, #0x4c
	str r5, [r1, r0]
_021F3700:
	add r6, r6, #1
	add r4, #0x20
	add r5, #0x20
	add r7, r7, #4
	cmp r6, #0x19
	blt _021F365C
	ldr r0, [sp, #0x1c]
	cmp r0, #9
	beq _021F3716
	bl GF_AssertFail
_021F3716:
	ldr r0, [sp, #0x18]
	cmp r0, #0x10
	beq _021F3720
	bl GF_AssertFail
_021F3720:
	mov r0, #9
	add r1, sp, #0x8c
	bl ov96_021F380C
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x9c]
	ldr r3, [sp, #0x20]
	str r1, [r0, #8]
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x9c]
	add r2, sp, #0xb0
	str r1, [r0, #0xc]
	add r0, sp, #0x8c
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r1, #9
	bl ov96_021F3888
	mov r0, #9
	add r1, sp, #0x8c
	add r2, sp, #0xd0
	bl ov96_021F3B38
	add r4, r0, #0
	ldr r0, [sp, #0xd0]
	ldr r0, [r0, #0x18]
	cmp r0, #3
	blt _021F379C
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x16
	add r0, sp, #0xd0
	ldr r2, [r0, r1]
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [r2, #8]
	ldr r0, [r0, #0x1c]
	ldr r2, [r2, #0xc]
	add r3, sp, #0x34
	bl ov96_021EB0A4
	ldr r0, [sp, #0x34]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	str r1, [r0]
	ldr r0, [sp, #0x30]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	str r1, [r0, #4]
	ldr r0, [sp, #0x20]
	mov r1, #0
	ldr r0, [r0, #0x18]
	add sp, #0x198
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021F379C:
	mov r0, #0x10
	add r1, sp, #0x4c
	bl ov96_021F380C
	add r0, sp, #0x134
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x20]
	mov r1, #0x19
	add r2, sp, #0xb0
	bl ov96_021F3888
	mov r0, #0x19
	add r1, sp, #0x134
	add r2, sp, #0xd0
	bl ov96_021F3B38
	add r4, r0, #0
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x16
	add r0, sp, #0xd0
	ldr r2, [r0, r1]
	add r0, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [r2, #8]
	ldr r0, [r0, #0x1c]
	ldr r2, [r2, #0xc]
	add r3, sp, #0x2c
	bl ov96_021EB0A4
	ldr r0, [sp, #0x2c]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	str r1, [r0]
	ldr r0, [sp, #0x28]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	str r1, [r0, #4]
	ldr r0, [sp, #0x20]
	mov r1, #0
	ldr r0, [r0, #0x18]
	str r1, [r0, #8]
_021F3800:
	add sp, #0x198
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3804: .word 0x000004E8
_021F3808: .word 0x000004B4
	thumb_func_end ov96_021F350C

	thumb_func_start ov96_021F380C
ov96_021F380C: ; 0x021F380C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [sp]
	add r5, r1, #0
	mov r7, #0
	cmp r0, #0
	bls _021F3884
_021F381A:
	lsl r4, r7, #2
	ldr r6, [r5, r4]
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021F386A
	bl LCRandom
	ldr r1, [r6]
	lsl r3, r0, #0x1b
	lsl r2, r1, #5
	lsr r1, r0, #0x1f
	sub r3, r3, r1
	mov r0, #0x1b
	ror r3, r0
	add r2, #0x10
	add r0, r1, r3
	add r0, r2, r0
	str r0, [r6, #8]
	ldr r6, [r5, r4]
	bl LCRandom
	ldr r1, [r6, #4]
	lsl r3, r0, #0x1b
	lsl r2, r1, #5
	lsr r1, r0, #0x1f
	sub r3, r3, r1
	mov r0, #0x1b
	ror r3, r0
	add r0, r1, r3
	add r2, #0x10
	add r0, r2, r0
	str r0, [r6, #0xc]
	ldr r0, [r5, r4]
	mov r1, #7
	ldr r2, [r0, #4]
	ldr r3, [r0]
	mul r1, r2
	add r1, r3, r1
	str r1, [r0, #0x14]
	b _021F3878
_021F386A:
	mov r0, #0
	mvn r0, r0
	str r0, [r6, #8]
	ldr r1, [r5, r4]
	str r0, [r1, #0xc]
	ldr r1, [r5, r4]
	str r0, [r1, #0x14]
_021F3878:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _021F381A
_021F3884:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F380C

	thumb_func_start ov96_021F3888
ov96_021F3888: ; 0x021F3888
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r4, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r5, [sp, #0x30]
	cmp r0, #0
	bls _021F38F6
_021F389E:
	lsl r6, r4, #2
	ldr r2, [r5, r6]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _021F38B0
	mov r0, #0x63
	mvn r0, r0
	str r0, [r2, #0x18]
	b _021F38EA
_021F38B0:
	ldr r0, [r2, #8]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r2, #0xc]
	ldr r3, [sp, #0x14]
	str r0, [sp, #4]
	add r0, sp, #0x18
	str r0, [sp, #8]
	ldr r2, [r2, #0x14]
	add r0, r7, #0
	bl ov96_021F3930
	ldr r1, [r5, r6]
	str r0, [r1, #0x18]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021F38EA
	ldr r3, [r5, r6]
	ldr r1, [sp, #0x10]
	add r0, r3, #0
	add r0, #0xc
	str r0, [sp]
	ldr r2, [r3, #0x14]
	add r0, r7, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r3, #8
	bl ov96_021F3AD8
_021F38EA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blo _021F389E
_021F38F6:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F3888

	thumb_func_start ov96_021F38FC
ov96_021F38FC: ; 0x021F38FC
	sub r0, #0x10
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	sub r1, #0x10
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	asr r3, r2, #5
	add r0, r1, r0
	asr r2, r0, #5
	cmp r3, #0
	blt _021F3918
	cmp r2, #0
	bge _021F391E
_021F3918:
	mov r0, #0
	mvn r0, r0
	bx lr
_021F391E:
	mov r1, #7
	add r0, r2, #0
	mul r0, r1
	add r0, r3, r0
	cmp r0, #0x22
	ble _021F392E
	add r0, r1, #0
	sub r0, #8
_021F392E:
	bx lr
	thumb_func_end ov96_021F38FC

	thumb_func_start ov96_021F3930
ov96_021F3930: ; 0x021F3930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r3, #0
	mov r4, #0
	ldr r7, [sp, #0x28]
	cmp r5, #0
	bge _021F394A
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F394A:
	str r4, [r7]
	ldr r0, [r6, #8]
	ldrh r0, [r0]
	cmp r0, #0
	beq _021F3992
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	cmp r0, #1
	bne _021F3992
	add r0, r1, #0
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov96_021F3A5C
	cmp r0, #0
	beq _021F3970
	add r4, r4, #5
_021F3970:
	lsl r1, r5, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov96_021F3AB0
	cmp r0, #0
	beq _021F3984
	mov r0, #1
	add r4, r4, #4
	str r0, [r7]
_021F3984:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl ov96_021F39F0
	add r4, r4, r0
	b _021F39E8
_021F3992:
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #4]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov96_021F3A5C
	cmp r0, #0
	beq _021F39A6
	add r4, r4, #5
_021F39A6:
	lsl r1, r5, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov96_021F3AB0
	cmp r0, #0
	beq _021F39BA
	mov r0, #1
	add r4, r4, #4
	str r0, [r7]
_021F39BA:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl ov96_021F39F0
	cmp r0, #0
	bne _021F39CA
	add r4, r4, #2
_021F39CA:
	ldr r1, [r6]
	cmp r1, r5
	bne _021F39D2
	add r4, r4, #2
_021F39D2:
	cmp r0, #0
	beq _021F39D8
	mov r4, #0
_021F39D8:
	ldr r2, [r6, #0xc]
	ldr r0, [sp, #4]
	ldmia r2!, {r1, r2}
	bl ov96_021F3A5C
	cmp r0, #0
	beq _021F39E8
	add r4, r4, #4
_021F39E8:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F3930

