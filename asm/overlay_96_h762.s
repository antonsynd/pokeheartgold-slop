	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02203468
	.public ov96_02203544
	.public ov96_02203754
	.public ov96_0220382C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern ov96_021E5F24
	.extern ov96_021E8228
	.extern ov96_0221C98C

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
	thumb_func_start ov96_02203468
ov96_02203468: ; 0x02203468
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	mov r0, #0
	add r5, r4, #0
	str r5, [sp]
	add r5, #0xc8
	add r7, r4, #0
	str r0, [sp, #8]
	str r5, [sp]
	add r7, #0xd4
	add r6, r0, #0
_02203484:
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #1
	bne _022034A2
	mov r0, #1
	ldr r3, [sp]
	lsl r0, r0, #0xc
	add r1, r7, #0
	add r2, r5, #0
	bl VEC_MultAdd
	b _022034CC
_022034A2:
	cmp r0, #3
	bne _022034CC
	add r0, r4, #0
	add r0, #0xf8
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf8
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #8
	blo _022034CC
	add r1, r4, #0
	add r1, #0xf8
	mov r0, #0
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
_022034CC:
	add r0, r4, #0
	add r0, #0xc8
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _022034F4
	lsl r0, r0, #6
	cmp r1, r0
	bgt _022034F4
	add r0, r4, #0
	add r0, #0xd0
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _022034F4
	lsl r0, r0, #6
	cmp r1, r0
	ble _022034F8
_022034F4:
	mov r0, #1
	str r0, [sp, #4]
_022034F8:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02203528
	add r0, r4, #0
	add r0, #0xc4
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xd4
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xdc
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xd8
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xe0
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xe8
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xe4
	str r6, [r0]
_02203528:
	ldr r0, [sp]
	add r4, #0x48
	add r0, #0x48
	str r0, [sp]
	ldr r0, [sp, #8]
	add r5, #0x48
	add r0, r0, #1
	add r7, #0x48
	str r0, [sp, #8]
	cmp r0, #0xc
	blt _02203484
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02203468

	thumb_func_start ov96_02203544
ov96_02203544: ; 0x02203544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, _02203730 ; =ov96_0221C98C
	str r1, [sp, #8]
	add r4, r1, #0
	str r0, [sp, #0x18]
_02203556:
	ldr r5, [sp, #8]
	mov r0, #0
	ldr r1, _02203734 ; =0x00000433
	str r0, [sp, #0x1c]
	strb r0, [r4, r1]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0xc8
	str r0, [sp, #0x14]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0xd4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	mov r1, #3
	add r6, r5, #0
	bl _s32_div_f
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	mov r1, #3
	bl _s32_div_f
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
_02203592:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #1
	bne _022035C4
	ldr r0, [sp, #0x1c]
	mov r1, #3
	bl _s32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	cmp r7, r0
	beq _022035C4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x2c
	bl VEC_Subtract
	add r0, sp, #0x2c
	bl VEC_Mag
	mov r1, #3
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _022035C6
_022035C4:
	b _022036FA
_022035C6:
	add r1, r5, #0
	add r1, #0xc4
	mov r0, #3
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #3
	bl ov96_021E8228
	ldr r0, _02203738 ; =0x0000042C
	ldrh r0, [r6, r0]
	add r1, r0, #1
	ldr r0, _02203738 ; =0x0000042C
	strh r1, [r6, r0]
	ldrh r1, [r6, r0]
	sub r0, #0x45
	cmp r1, r0
	bls _02203606
	ldr r1, _0220373C ; =0x000003E7
	add r0, r1, #0
	add r0, #0x45
	strh r1, [r6, r0]
_02203606:
	add r1, r5, #0
	add r1, #0xfb
	mov r0, #1
	strb r0, [r1]
	add r1, r0, #0
	ldr r0, _02203734 ; =0x00000433
	strb r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xfe
	ldrh r0, [r0]
	cmp r0, #3
	bhi _02203644
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220362A: ; jump table
	.short _02203632 - _0220362A - 2 ; case 0
	.short _02203638 - _0220362A - 2 ; case 1
	.short _0220363C - _0220362A - 2 ; case 2
	.short _02203640 - _0220362A - 2 ; case 3
_02203632:
	mov r7, #0xfe
	lsl r7, r7, #0x16
	b _0220364C
_02203638:
	ldr r7, _02203740 ; =0x41A00000
	b _0220364C
_0220363C:
	ldr r7, _02203744 ; =0x42480000
	b _0220364C
_02203640:
	ldr r7, _02203748 ; =0x42C80000
	b _0220364C
_02203644:
	bl GF_AssertFail
	mov r7, #0xfe
	lsl r7, r7, #0x16
_0220364C:
	add r1, r5, #0
	add r1, #0xfe
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xfc
	strh r0, [r1]
	ldr r0, [sp, #0x10]
	bl VEC_Mag
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	bl _fflt
	add r1, r7, #0
	bl _fmul
	mov r1, #0x42
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	bl _fmul
	add r1, r0, #0
	ldr r0, _0220374C ; =0x00000424
	ldr r0, [r4, r0]
	bl _fmul
	bl _ffix
	add r7, r0, #0
	bpl _02203692
	bl GF_AssertFail
_02203692:
	ldr r0, _02203750 ; =0x0000042E
	ldrsh r0, [r4, r0]
	sub r1, r0, r7
	ldr r0, _02203750 ; =0x0000042E
	sub r1, #0x1e
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _022036AA
	ldr r0, _02203750 ; =0x0000042E
	mov r1, #0
	strh r1, [r4, r0]
_022036AA:
	ldr r0, _02203750 ; =0x0000042E
	ldrsh r1, [r4, r0]
	mov r0, #0x78
	sub r0, r0, r1
	mov r1, #0x43
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r1, #0
	bne _022036DC
	cmp r0, #0x28
	bls _022036FA
	mov r1, #0x43
	lsl r1, r1, #4
	strb r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r3, #1
	bl ov96_021E8228
	b _022036FA
_022036DC:
	mov r1, #0x43
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldr r2, [sp, #0x28]
	mov r3, #1
	add r1, r1, r0
	mov r0, #0x43
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x24]
	bl ov96_021E8228
_022036FA:
	ldr r0, [sp, #0x14]
	add r5, #0x48
	add r0, #0x48
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r6, #0x20
	add r0, #0x48
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0xc
	bge _02203716
	b _02203592
_02203716:
	ldr r0, [sp, #0x18]
	add r4, #0x20
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #0xc
	bge _0220372A
	b _02203556
_0220372A:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02203730: .word ov96_0221C98C
_02203734: .word 0x00000433
_02203738: .word 0x0000042C
_0220373C: .word 0x000003E7
_02203740: .word 0x41A00000
_02203744: .word 0x42480000
_02203748: .word 0x42C80000
_0220374C: .word 0x00000424
_02203750: .word 0x0000042E
	thumb_func_end ov96_02203544

	thumb_func_start ov96_02203754
ov96_02203754: ; 0x02203754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r1, #0
	str r0, [sp]
	add r0, r1, #0
	add r2, sp, #0x28
	str r0, [sp, #4]
_02203762:
	ldr r0, [sp, #4]
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0xc
	blt _02203762
	ldr r0, [sp]
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r0, #0xc8
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
_02203784:
	ldr r0, [sp, #0x10]
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #1
	beq _02203792
	cmp r0, #2
	bne _022037DC
_02203792:
	ldr r7, [sp]
	ldr r6, [sp, #0x14]
	ldr r5, [sp, #0x18]
	mov r4, #0
_0220379A:
	ldr r0, [sp, #4]
	cmp r0, r4
	beq _022037D0
	add r0, r7, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #1
	beq _022037AE
	cmp r0, #2
	bne _022037D0
_022037AE:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	add r2, sp, #0x1c
	bl VEC_Subtract
	add r0, sp, #0x1c
	bl VEC_Mag
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r0, r1
	bge _022037D0
	ldr r0, [sp, #8]
	mov r1, #1
	strb r1, [r0]
	add r0, r1, #0
	strb r0, [r5]
_022037D0:
	add r4, r4, #1
	add r7, #0x48
	add r6, #0x48
	add r5, r5, #1
	cmp r4, #0xc
	blt _0220379A
_022037DC:
	ldr r0, [sp, #0x10]
	add r0, #0x48
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xc
	blt _02203784
	mov r3, #0
	add r2, sp, #0x28
	mov r1, #3
	add r0, r3, #0
_02203800:
	ldrb r4, [r2]
	cmp r4, #0
	beq _02203818
	ldr r4, [sp]
	add r4, #0xc4
	str r1, [r4]
	ldr r4, [sp]
	add r4, #0xfe
	strh r0, [r4]
	ldr r4, [sp]
	add r4, #0xfc
	strh r0, [r4]
_02203818:
	ldr r4, [sp]
	add r3, r3, #1
	add r4, #0x48
	add r2, r2, #1
	str r4, [sp]
	cmp r3, #0xc
	blt _02203800
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02203754

	thumb_func_start ov96_0220382C
ov96_0220382C: ; 0x0220382C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r1, [sp, #0x14]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	ldr r5, [sp, #0x10]
	lsr r0, r0, #0x18
	mov r7, #0
	add r4, r0, #1
	add r5, #0x14
_02203846:
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x14]
	lsr r1, r1, #0x18
	bl PokeathlonCourse_GetPlayerProfileFromData
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x44]
	bl PlayerProfile_GetPlayerName_NewString
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0220389C ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add r0, r5, #0
	bl CopyWindowToVram
	add r7, r7, #1
	add r4, r4, #1
	add r5, #0x10
	cmp r7, #3
	blt _02203846
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220389C: .word 0x000F0E00
	thumb_func_end ov96_0220382C

