	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FB994
	.public ov96_021FBA3C
	.public ov96_021FBBB4
	.public ov96_021FBCB8
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E60D8
	.extern ov96_021E8228
	.extern ov96_021EAC0C
	.extern ov96_021EB5B8
	.extern ov96_021FC164
	.extern ov96_0221C444
	.extern ov96_0221DC28
	.extern ov96_0221DC2C

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
	thumb_func_start ov96_021FB994
ov96_021FB994: ; 0x021FB994
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1e
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x64
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	mov r1, #0x3c
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0x3c
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0xed
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	mov r0, #0xee
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0xf
	lsl r0, r0, #6
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021FB994

	thumb_func_start ov96_021FBA3C
ov96_021FBA3C: ; 0x021FBA3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	str r3, [sp, #8]
	add r7, r0, #0
	mov r0, #0x8e
	lsl r0, r0, #2
	add r1, sp, #0x18
	str r2, [sp, #4]
	ldrb r2, [r1, #0x14]
	mov r1, #0x28
	add r0, r6, r0
	mul r1, r2
	add r4, r0, r1
	ldr r0, [r4, #0x18]
	ldr r5, [sp, #0x28]
	cmp r0, #1
	beq _021FBA8C
	ldrb r0, [r4]
	cmp r0, #2
	beq _021FBA8C
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _021FBA8C
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	bl _fls
	bhs _021FBA8C
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x14]
	bl _fadd
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	bl _fgr
	bls _021FBA8C
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
_021FBA8C:
	ldrb r0, [r4]
	cmp r0, #2
	bne _021FBAA4
	ldrb r0, [r4, #1]
	sub r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _021FBB50
	mov r0, #0
	strb r0, [r4]
	b _021FBB50
_021FBAA4:
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r2, [r4, #0x20]
	add r1, r5, #0
	bl ov96_021FC164
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0xc]
	cmp r0, r1
	beq _021FBB50
	ldr r1, [r4, #0x24]
	cmp r1, r0
	beq _021FBB50
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #3]
	cmp r1, r0
	bhs _021FBB14
	ldrb r0, [r4, #2]
	cmp r0, #4
	bhs _021FBAF2
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r1, [r4, #2]
	ldr r0, [r4, #0x10]
	sub r1, r1, #1
	lsl r2, r1, #2
	ldr r1, _021FBBAC ; =ov96_0221C444
	ldr r1, [r1, r2]
	bl _fadd
	str r0, [r4, #8]
_021FBAF2:
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #6
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #2
	bl ov96_021E8228
	b _021FBB4C
_021FBB14:
	ldrb r0, [r4, #4]
	cmp r1, r0
	bhs _021FBB3C
	mov r0, #2
	strb r0, [r4]
	mov r0, #0x1e
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #0x3f
	lsl r0, r0, #0x18
	str r0, [r4, #8]
	mov r3, #1
	str r3, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	bl ov96_021E8228
	b _021FBB4C
_021FBB3C:
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #2
	bl ov96_021E8228
_021FBB4C:
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x24]
_021FBB50:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl _fadd
	str r0, [sp, #0x10]
	bl _ffix
	add r7, r0, #0
	bl _fflt
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	bl _fsub
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x20]
	lsl r1, r5, #1
	add r2, r0, r7
	ldr r0, [sp, #4]
	str r2, [r4, #0x20]
	strh r2, [r0, r1]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021FBBA6
	mov r0, #1
	ldr r2, [r4, #0x20]
	lsl r0, r0, #0xc
	cmp r2, r0
	blt _021FBBA6
	ldr r2, [sp, #4]
	mov r0, #1
	add r3, r2, r1
	mov r1, #0x23
	strh r0, [r3, #0x10]
	lsl r1, r1, #4
	ldr r2, [r6, r1]
	strh r2, [r3, #0xa]
	ldr r1, [r6, r1]
	str r1, [r4, #0x1c]
	str r0, [r4, #0x18]
	ldr r0, _021FBBB0 ; =0x000008A1
	bl PlaySE
_021FBBA6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021FBBAC: .word ov96_0221C444
_021FBBB0: .word 0x000008A1
	thumb_func_end ov96_021FBA3C

	thumb_func_start ov96_021FBBB4
ov96_021FBBB4: ; 0x021FBBB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r6, r1, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl PokeathlonCourse_GetParticipantCount
	str r0, [sp, #4]
	cmp r0, #4
	bhs _021FBCAC
	str r0, [sp, #0xc]
_021FBBD0:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r5, #0
	sub r1, r1, r0
	lsl r0, r1, #1
	add r0, r1, r0
	str r0, [sp, #8]
	mov r1, #0x8e
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x14]
_021FBBE8:
	ldr r0, [sp, #8]
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r2, r1, #0
	mov r0, #0x28
	mul r2, r0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	add r4, r0, r2
	ldr r0, [sp]
	add r2, r5, #0
	bl ov96_021E60D8
	add r7, r0, #0
	ldrb r0, [r7, #1]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x3c]
	bl _fflt
	ldr r1, _021FBCB0 ; =0x41200000
	bl _fdiv
	str r0, [r4, #0x10]
	ldrb r0, [r7, #4]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x28]
	bl _fflt
	ldr r1, _021FBCB4 ; =0x42C80000
	bl _fdiv
	str r0, [r4, #0x14]
	bl LCRandom
	mov r1, #6
	bl _s32_div_f
	cmp r1, #5
	bhi _021FBC90
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FBC48: ; jump table
	.short _021FBC54 - _021FBC48 - 2 ; case 0
	.short _021FBC5E - _021FBC48 - 2 ; case 1
	.short _021FBC68 - _021FBC48 - 2 ; case 2
	.short _021FBC72 - _021FBC48 - 2 ; case 3
	.short _021FBC7C - _021FBC48 - 2 ; case 4
	.short _021FBC86 - _021FBC48 - 2 ; case 5
_021FBC54:
	mov r0, #0xa
	strb r0, [r4, #3]
	mov r0, #0x32
	strb r0, [r4, #4]
	b _021FBC94
_021FBC5E:
	mov r0, #0x14
	strb r0, [r4, #3]
	mov r0, #0x32
	strb r0, [r4, #4]
	b _021FBC94
_021FBC68:
	mov r0, #0x1e
	strb r0, [r4, #3]
	mov r0, #0x3c
	strb r0, [r4, #4]
	b _021FBC94
_021FBC72:
	mov r0, #0x14
	strb r0, [r4, #3]
	mov r0, #0x46
	strb r0, [r4, #4]
	b _021FBC94
_021FBC7C:
	mov r0, #0x1e
	strb r0, [r4, #3]
	mov r0, #0x46
	strb r0, [r4, #4]
	b _021FBC94
_021FBC86:
	mov r0, #0x28
	strb r0, [r4, #3]
	mov r0, #0x50
	strb r0, [r4, #4]
	b _021FBC94
_021FBC90:
	bl GF_AssertFail
_021FBC94:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021FBBE8
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #4
	blo _021FBBD0
_021FBCAC:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FBCB0: .word 0x41200000
_021FBCB4: .word 0x42C80000
	thumb_func_end ov96_021FBBB4

	thumb_func_start ov96_021FBCB8
ov96_021FBCB8: ; 0x021FBCB8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #4
	bhs _021FBD82
	ldr r0, [r4, #0x4c]
	bl ov96_021EB5B8
	add r6, r0, #0
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	ldrb r0, [r4, #9]
	cmp r0, #1
	bne _021FBD06
	ldrb r2, [r4, #0x18]
	ldr r1, _021FBDA0 ; =ov96_0221DC2C
	ldr r0, _021FBDA4 ; =0x000008A6
	ldrb r1, [r1, r2]
	bl sub_0200606C
	ldrb r2, [r4, #0x18]
	ldr r0, _021FBDA0 ; =ov96_0221DC2C
	ldr r1, _021FBDA8 ; =ov96_0221DC28
	ldrb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	bl sub_020061D0
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov96_021EAC0C
	add r0, r6, #0
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	b _021FBD5A
_021FBD06:
	cmp r0, #4
	bne _021FBD36
	ldrb r2, [r4, #0x18]
	ldr r1, _021FBDA0 ; =ov96_0221DC2C
	ldr r0, _021FBDAC ; =0x000008A9
	ldrb r1, [r1, r2]
	bl sub_0200606C
	ldrb r2, [r4, #0x18]
	ldr r0, _021FBDA0 ; =ov96_0221DC2C
	ldr r1, _021FBDA8 ; =ov96_0221DC28
	ldrb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	bl sub_020061D0
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl ov96_021EAC0C
	add r0, r6, #0
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
	b _021FBD5A
_021FBD36:
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021FBD5A
	ldrb r2, [r4, #0x18]
	ldr r1, _021FBDA0 ; =ov96_0221DC2C
	ldr r0, _021FBDB0 ; =0x000008A7
	ldrb r1, [r1, r2]
	bl sub_0200606C
	ldrb r2, [r4, #0x18]
	ldr r0, _021FBDA0 ; =ov96_0221DC2C
	ldr r1, _021FBDA8 ; =ov96_0221DC28
	ldrb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	bl sub_020061D0
_021FBD5A:
	ldr r0, [r4, #0xc]
	bl _f2d
	ldr r3, _021FBDB4 ; =0x40240000
	mov r2, #0
	bl _dls
	bhs _021FBD7E
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0x50]
	sub r1, r1, #1
	lsl r2, r1, #2
	ldr r1, _021FBDB8 ; =ov96_0221C444
	ldr r1, [r1, r2]
	bl _fadd
	str r0, [r4, #0xc]
	b _021FBD82
_021FBD7E:
	bl GF_AssertFail
_021FBD82:
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldrb r2, [r4, #0x18]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r3, #6
	bl ov96_021E8228
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FBDA0: .word ov96_0221DC2C
_021FBDA4: .word 0x000008A6
_021FBDA8: .word ov96_0221DC28
_021FBDAC: .word 0x000008A9
_021FBDB0: .word 0x000008A7
_021FBDB4: .word 0x40240000
_021FBDB8: .word ov96_0221C444
	thumb_func_end ov96_021FBCB8

