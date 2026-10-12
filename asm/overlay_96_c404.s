	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F27B8
	.public ov96_021F2814
	.public ov96_021F2834
	.public ov96_021F295C
	.public ov96_021F2984
	.public ov96_021F2A00
	.extern ov96_021EB06C
	.extern ov96_021EB0A4
	.extern ov96_021F3180
	.extern ov96_0221BDD4

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
	thumb_func_start ov96_021F27B8
ov96_021F27B8: ; 0x021F27B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r1, sp, #0x18
	add r4, r0, #0
	add r6, r2, #0
	bl VEC_Normalize
	add r0, r5, #0
	add r1, sp, #0xc
	bl VEC_Normalize
	add r0, sp, #0x18
	add r1, sp, #0xc
	bl VEC_DotProduct
	add r5, r0, #0
	add r0, r4, #0
	bl VEC_Mag
	add r2, r0, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	asr r1, r5, #0x1f
	add r0, r5, #0
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, r6, #0
	bl VEC_MultAdd
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov96_021F27B8

	thumb_func_start ov96_021F2814
ov96_021F2814: ; 0x021F2814
	push {r4, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, sp, #0xc
	bl VEC_Normalize
	add r0, r4, #0
	add r1, sp, #0
	bl VEC_Normalize
	add r0, sp, #0xc
	add r1, sp, #0
	bl VEC_DotProduct
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov96_021F2814

	thumb_func_start ov96_021F2834
ov96_021F2834: ; 0x021F2834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, _021F2950 ; =0x0000072B
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021F2844
	b _021F294A
_021F2844:
	mov r0, #0
	add r1, sp, #0x10
	add r5, r0, #0
_021F284A:
	add r0, r0, #1
	strb r5, [r1]
	add r1, r1, #1
	cmp r0, #4
	blt _021F284A
	ldr r1, _021F2950 ; =0x0000072B
	add r7, r4, #0
	add r0, r1, #0
	strb r5, [r4, r1]
	add r0, #0x23
	strb r5, [r4, r0]
	add r1, #0x24
	strb r5, [r4, r1]
	add r7, #0x20
_021F2866:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r0, r6
	add r2, r7, r0
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r0, [r6, #0x18]
	cmp r0, #1
	bne _021F28F6
	add r0, sp, #8
	str r0, [sp]
	ldr r1, [r6, #0x28]
	ldr r0, [r6]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [r6, #0x2c]
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #0xc
	bl ov96_021EB06C
	mov r0, #0x73
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, sp, #4
	bl ov96_021F3180
	add r2, r0, #0
	beq _021F28F6
	add r0, r6, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r6, #0x42
	add r3, sp, #0x10
	add r0, r0, r2
	strh r0, [r6]
	add r0, sp, #4
	ldrb r1, [r0]
	add r0, sp, #0x10
	ldrb r0, [r0, r1]
	add r6, r0, #1
	strb r6, [r3, r1]
	mov r3, #0xc
	add r6, r1, #0
	mul r6, r3
	add r3, sp, #0x18
	add r3, r3, r6
	strb r5, [r0, r3]
	add r0, sp, #0x14
	strb r2, [r0, r1]
_021F28F6:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F2866
	mov r0, #0
	mov ip, r0
	add r7, sp, #0x18
	add r1, sp, #0x14
	add r2, sp, #0x10
_021F2906:
	ldrb r3, [r2]
	mov r0, #0
	cmp r3, #0
	ble _021F293A
_021F290E:
	ldr r3, _021F2954 ; =0x0000074E
	ldrb r6, [r7, r0]
	ldrb r3, [r4, r3]
	add r0, r0, #1
	add r5, r4, r3
	mov r3, #0x75
	lsl r3, r3, #4
	strb r6, [r5, r3]
	sub r3, r3, #2
	ldrb r3, [r4, r3]
	ldrb r6, [r1]
	add r5, r4, r3
	ldr r3, _021F2958 ; =0x0000075C
	strb r6, [r5, r3]
	sub r3, #0xe
	ldrb r3, [r4, r3]
	add r5, r3, #1
	ldr r3, _021F2954 ; =0x0000074E
	strb r5, [r4, r3]
	ldrb r3, [r2]
	cmp r0, r3
	blt _021F290E
_021F293A:
	mov r0, ip
	add r0, r0, #1
	add r7, #0xc
	add r1, r1, #1
	add r2, r2, #1
	mov ip, r0
	cmp r0, #4
	blt _021F2906
_021F294A:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2950: .word 0x0000072B
_021F2954: .word 0x0000074E
_021F2958: .word 0x0000075C
	thumb_func_end ov96_021F2834

	thumb_func_start ov96_021F295C
ov96_021F295C: ; 0x021F295C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #1
	cmp r5, #1
	blt _021F2978
_021F2968:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl ov96_021F2984
	add r4, r4, #1
	cmp r4, r5
	ble _021F2968
_021F2978:
	add r0, r6, #0
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F295C

	thumb_func_start ov96_021F2984
ov96_021F2984: ; 0x021F2984
	push {r3, lr}
	sub sp, #0x10
	cmp r0, #1
	blo _021F299A
	cmp r0, #6
	bhi _021F299A
	sub r0, r0, #1
	lsl r3, r0, #1
	add r3, #0x12
	mov r0, #2
	b _021F29DC
_021F299A:
	cmp r0, #0x10
	blo _021F29AE
	cmp r0, #0x1c
	bhi _021F29AE
	sub r0, #0x10
	lsl r2, r0, #1
	mov r0, #0x1a
	sub r3, r0, r2
	mov r0, #0x14
	b _021F29DC
_021F29AE:
	cmp r0, #0x26
	blo _021F29C0
	cmp r0, #0x2b
	bhs _021F29C0
	sub r0, #0x26
	lsl r0, r0, #1
	add r3, r0, #4
	mov r0, #2
	b _021F29DC
_021F29C0:
	cmp r0, #7
	blo _021F29D2
	cmp r0, #0xf
	bhi _021F29D2
	sub r0, r0, #7
	lsl r0, r0, #1
	mov r3, #0x1c
	add r0, r0, #4
	b _021F29DC
_021F29D2:
	sub r0, #0x1d
	lsl r2, r0, #1
	mov r0, #0x12
	mov r3, #2
	sub r0, r0, r2
_021F29DC:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r1, #0
	mov r1, #1
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add sp, #0x10
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021F2984

	thumb_func_start ov96_021F2A00
ov96_021F2A00: ; 0x021F2A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, _021F2A80 ; =ov96_0221BDD4
	mov r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #4]
	mov r7, #2
_021F2A14:
	ldr r4, [sp, #8]
	ldr r5, [sp, #4]
	mov r6, #0
_021F2A1A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021F2A56
	str r7, [r4, #0x18]
	add r0, sp, #0x10
	str r0, [sp]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldr r0, [r4]
	add r3, sp, #0x14
	bl ov96_021EB0A4
	ldr r0, [sp, #0x14]
	add r3, r4, #0
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	lsl r0, r0, #0xc
	add r3, #0x28
	str r0, [r4, #0x2c]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	add r1, #0x40
	mov r0, #2
	strb r0, [r1]
_021F2A56:
	add r6, r6, #1
	add r4, #0x90
	add r5, r5, #4
	cmp r6, #3
	blt _021F2A1A
	mov r1, #0x1b
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _021F2A14
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2A80: .word ov96_0221BDD4
	thumb_func_end ov96_021F2A00

