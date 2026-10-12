	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F234C
	.extern _0221DCA0
	.extern ov96_021F2780
	.extern ov96_021F27A8
	.extern ov96_021F27B8
	.extern ov96_021F2814

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
	thumb_func_start ov96_021F234C
ov96_021F234C: ; 0x021F234C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x198
	mov r5, #0
	add r6, r0, #0
	str r0, [sp]
	str r5, [sp, #0x14]
	add r7, sp, #0x70
	add r6, #0x20
_021F236A:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r0, r4
	add r2, r6, r0
	mov r0, #0x90
	mul r0, r1
	add r1, r2, r0
	add r0, r1, #0
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F23A8
	ldr r0, [r1, #0x18]
	cmp r0, #1
	bne _021F23A8
	ldr r0, [sp, #0x14]
	add r2, r0, #0
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	strb r5, [r7, r0]
_021F23A8:
	mov r2, #0xc
	add r0, r1, #0
	add r3, r5, #0
	mul r3, r2
	add r2, sp, #0x7c
	add r0, #0x1c
	add r1, #0x28
	add r2, r2, r3
	bl VEC_Subtract
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _021F236A
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021F23CE
	b _021F276E
_021F23CE:
	mov r2, #0x1b
	mov r0, #0
	add r1, sp, #0x10c
	lsl r2, r2, #6
	bl MIi_CpuClear32
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bhi _021F23E6
	b _021F25D4
_021F23E6:
	ldr r1, _021F26AC ; =FX_SinCosTable_ + 0x800
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
_021F23EE:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x70
	ldrb r7, [r1, r0]
	ldr r0, _021F26B0 ; =0x000007CC
	mov r1, #0
	mov r2, #0x7b
	str r1, [sp, #0x60]
	add r0, sp
	lsl r2, r2, #4
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	mov r1, #0x90
	mul r1, r0
	add r2, sp, #0x10c
	add r4, r2, r1
	ldr r1, _021F26B0 ; =0x000007CC
	mov r5, #0
	add r1, sp
	mov r6, #0xc
	mov r0, #0xa4
_021F2418:
	add r2, r5, #0
	mul r2, r6
	add r3, r4, r2
	add r2, r5, #0
	mul r2, r0
	str r3, [r1, r2]
	add r2, r5, #1
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	cmp r5, #0xc
	blo _021F2418
	add r0, sp, #0x64
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r3, r4, #0
	mul r3, r0
	mov r0, #0x90
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	mov r5, #1
	add r0, r0, r3
	add r3, r2, r0
	add r3, #0x54
	add r2, sp, #0x48
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x18]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp]
	str r0, [sp, #0x20]
	add r0, #0x48
	str r0, [sp, #0x20]
_021F2476:
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x20]
	add r0, r0, r2
	str r0, [sp, #0x1c]
	mov r0, #0x90
	mul r0, r1
	str r0, [sp, #0x24]
	mov r1, #1
	add r0, sp, #0x64
	strb r1, [r0, r7]
	cmp r5, #0
	beq _021F2532
	mov r0, #0xa4
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021F26B0 ; =0x000007CC
	add r0, sp
	add r4, r0, r1
	mov r0, #0
	strh r0, [r4, #0x10]
	add r6, r4, #0
	strh r0, [r4, #0x12]
	add r5, r0, #0
	mov r0, #0xc0
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021F26B4 ; =_0221DCA0
	add r6, #0x10
	add r0, r0, r1
	str r0, [sp, #8]
_021F24CA:
	ldr r1, [sp, #8]
	lsl r0, r5, #4
	ldr r2, [sp, #8]
	add r1, r1, r0
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _021F2514
	ldr r0, [r1, #8]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	add r0, #0x28
	add r1, r2, r1
	add r2, sp, #0x3c
	bl VEC_Subtract
	ldr r0, [sp, #0x18]
	add r1, sp, #0x3c
	bl VEC_DotProduct
	cmp r0, #0
	ble _021F2514
	ldrh r0, [r4, #0x10]
	add r3, sp, #0x3c
	add r0, r4, r0
	strb r5, [r0, #4]
	ldrh r1, [r4, #0x10]
	mov r0, #0xc
	mul r0, r1
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_021F2514:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _021F24CA
	mov r0, #0xa4
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021F26B0 ; =0x000007CC
	add r0, sp
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl VEC_Add
_021F2532:
	mov r0, #0xa4
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021F26B0 ; =0x000007CC
	mov r5, #0
	add r0, sp
	add r4, r0, r1
	ldrh r0, [r4, #0x12]
	ldrh r1, [r4, #0x10]
	cmp r0, r1
	blo _021F2558
	add r1, r5, #0
	add r0, sp, #0x64
	strb r1, [r0, r7]
	add r0, sp, #0x54
	bl ov96_021F27A8
	add r7, r0, #0
	b _021F25BC
_021F2558:
	add r1, r4, r0
	ldrb r2, [r1, #4]
	add r1, sp, #0x64
	ldrb r1, [r1, r2]
	cmp r1, #0
	beq _021F256A
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _021F25BC
_021F256A:
	add r0, sp, #0x54
	add r1, r7, #0
	bl ov96_021F2780
	cmp r0, #0xff
	beq _021F25C2
	ldrh r2, [r4, #0x12]
	add r3, r4, #0
	mov r1, #0xc
	ldr r0, [r4]
	add r3, #0x14
	mul r1, r2
	add r1, r3, r1
	bl ov96_021F2814
	ldr r1, [sp, #0xc]
	cmp r0, r1
	blt _021F259C
	ldr r3, [r4]
	add r2, sp, #0x48
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021F25B0
_021F259C:
	ldrh r2, [r4, #0x12]
	add r3, r4, #0
	mov r1, #0xc
	mul r1, r2
	add r3, #0x14
	ldr r0, [r4]
	ldr r2, [sp, #0x18]
	add r1, r3, r1
	bl ov96_021F27B8
_021F25B0:
	ldrh r1, [r4, #0x12]
	mov r5, #1
	add r0, r1, #1
	strh r0, [r4, #0x12]
	add r0, r4, r1
	ldrb r7, [r0, #4]
_021F25BC:
	cmp r7, #0xff
	beq _021F25C2
	b _021F2476
_021F25C2:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _021F25D4
	b _021F23EE
_021F25D4:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bhi _021F25E0
	b _021F2704
_021F25E0:
	ldr r0, [sp, #4]
	mov r1, #0x90
	mul r1, r0
	ldr r0, [sp]
	add r2, sp, #0x10c
	str r0, [sp, #0x28]
	add r0, #0x20
	mov r5, #0
	add r7, r2, r1
	str r0, [sp, #0x28]
_021F25F4:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x28]
	add r6, r1, #0
	add r4, r0, r2
	mov r0, #0x90
	mul r6, r0
	mov r0, #0xc
	mul r0, r5
	str r0, [sp, #0x2c]
	add r0, r4, r6
	ldr r1, [sp, #0x2c]
	add r0, #0x28
	add r1, r7, r1
	add r2, r0, #0
	bl VEC_Add
	ldr r0, [sp, #0x2c]
	add r0, r7, r0
	bl VEC_Mag
	cmp r0, #0
	beq _021F2652
	add r0, r4, r6
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F2652
	add r2, r4, r6
	add r2, #0x28
	add r3, r4, r6
	ldmia r2!, {r0, r1}
	add r3, #0x1c
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
_021F2652:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _021F25F4
	ldr r0, [sp, #4]
	add r1, sp, #0x70
	ldrb r4, [r1, r0]
	mov r1, #3
	add r0, r4, #0
	bl _s32_div_f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	ldr r2, [sp]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, #0x20
	mul r0, r5
	add r2, r2, r0
	mov r0, #0x90
	mul r0, r1
	add r5, r2, r0
	add r0, r5, #0
	add r0, #0x8e
	ldrh r0, [r0]
	cmp r0, #0
	bne _021F26F2
	mov r1, #0x72
	mov r3, #0
	lsl r1, r1, #4
_021F2696:
	ldr r0, [sp]
	add r2, r0, r3
	ldrb r0, [r2, r1]
	cmp r4, r0
	bne _021F26B8
	mov r0, #0x72
	mov r1, #0xc
	lsl r0, r0, #4
	strb r1, [r2, r0]
	b _021F26BE
	nop
_021F26AC: .word FX_SinCosTable_ + 0x800
_021F26B0: .word 0x000007CC
_021F26B4: .word _0221DCA0
_021F26B8:
	add r3, r3, #1
	cmp r3, #4
	blt _021F2696
_021F26BE:
	ldr r0, [r5, #0x18]
	cmp r0, #1
	beq _021F26C8
	bl GF_AssertFail
_021F26C8:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x44
	strb r1, [r0]
	add r0, r5, #0
	add r3, r5, #0
	add r2, r5, #0
	mov r1, #0x3c
	add r0, #0x45
	add r3, #0x28
	strb r1, [r0]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0
	str r0, [r5, #0x34]
	str r0, [r5, #0x38]
	add r5, #0x41
	strb r0, [r5]
_021F26F2:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #4]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _021F2704
	b _021F25E0
_021F2704:
	ldr r0, [sp]
	mov r5, #0
	add r0, #0x20
	str r0, [sp]
	add r7, sp, #0x30
_021F270E:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp]
	add r6, r1, #0
	add r4, r0, r2
	mov r0, #0x90
	mul r6, r0
	add r0, r4, r6
	add r1, r4, r6
	add r0, #0x1c
	add r1, #0x28
	add r2, r7, #0
	bl VEC_Subtract
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	add r0, sp, #0x7c
	add r0, r0, r1
	add r1, r7, #0
	bl VEC_DotProduct
	cmp r0, #0
	bge _021F2764
	add r2, r4, r6
	add r2, #0x28
	add r3, r4, r6
	ldmia r2!, {r0, r1}
	add r3, #0x1c
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
_021F2764:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _021F270E
_021F276E:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x198
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F234C

