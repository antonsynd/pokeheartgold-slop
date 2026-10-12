	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FA34C
	.public ov96_021FA6D0
	.public ov96_021FA7BC
	.public ov96_021FA83C
	.extern ov96_021E5F24
	.extern ov96_021E8228
	.extern ov96_021EAB94
	.extern ov96_021EAC0C
	.extern ov96_021EAD88
	.extern ov96_021EAE4C
	.extern ov96_021EAE9C
	.extern ov96_021EAED4
	.extern ov96_021EAF8C
	.extern ov96_021EAF90
	.extern ov96_021EB5B8
	.extern ov96_021FA340
	.extern ov96_021FAAE0
	.extern ov96_021FAB04
	.extern ov96_021FAB24
	.extern ov96_021FB6B4
	.extern ov96_021FB6C8
	.extern ov96_021FB784
	.extern ov96_021FB8B4
	.extern ov96_021FB8FC
	.extern ov96_021FBCB8
	.extern ov96_021FBEA0
	.extern ov96_021FBEA4
	.extern ov96_021FBEFC
	.extern ov96_021FBF5C
	.extern ov96_021FC6EC
	.extern ov96_0221C55C
	.extern ov96_0221C589
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
	thumb_func_start ov96_021FA34C
ov96_021FA34C: ; 0x021FA34C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #8]
	add r6, r3, #0
	str r1, [sp, #4]
	cmp r0, #1
	beq _021FA38A
	ldr r0, [r4, #0x28]
	cmp r0, #2
	beq _021FA38A
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _021FA38A
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	bl _fls
	bhs _021FA38A
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x54]
	bl _fadd
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	bl _fgr
	bls _021FA38A
	ldr r0, [r4, #0x50]
	str r0, [r4, #0xc]
_021FA38A:
	cmp r6, #0
	beq _021FA422
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021FA422
	ldrb r2, [r4, #0x18]
	add r3, r4, #0
	ldr r1, [r6, #4]
	add r0, r5, #0
	add r3, #0x24
	bl ov96_021FA7BC
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA3FA
	ldr r6, [sp, #8]
_021FA3B2:
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021FA340
	add r7, r0, #0
	bl ov96_021FBEA0
	cmp r0, #0
	beq _021FA3F4
	add r0, r7, #0
	add r1, sp, #0x1c
	bl ov96_021FBF5C
	ldr r0, [r4, #0x24]
	bl ov96_021EAF8C
	mov r1, #0x11
	ldr r2, [r4, #0x3c]
	lsl r1, r1, #4
	add r1, r2, r1
	sub r0, r1, r0
	add r1, sp, #0x1c
	bl ov96_021FAB04
	cmp r0, #0
	beq _021FA3F4
	mov r0, #1
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021FBCB8
	b _021FA3FA
_021FA3F4:
	add r6, r6, #1
	cmp r6, #4
	blt _021FA3B2
_021FA3FA:
	ldr r0, [r4, #0x44]
	bl ov96_021EB5B8
	mov r1, #1
	add r6, r0, #0
	bl Sprite_SetDrawFlag
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021FA418
	add r0, r6, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	b _021FA452
_021FA418:
	add r0, r6, #0
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	b _021FA452
_021FA422:
	cmp r6, #0
	beq _021FA452
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _021FA452
	ldr r0, [r4, #0x2c]
	cmp r0, #3
	bne _021FA452
	add r0, r4, #0
	add r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA452
	add r0, r4, #0
	mov r1, #1
	add r0, #0x60
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x62
	strh r1, [r0]
_021FA452:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl _fadd
	add r6, r0, #0
	bl _ffix
	add r7, r0, #0
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fsub
	str r0, [r4, #0x10]
	ldrh r0, [r4]
	add r0, r0, r7
	strh r0, [r4]
	ldrh r1, [r4]
	ldrb r2, [r4, #0x18]
	ldr r0, [sp, #4]
	bl ov96_021FB6B4
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov96_021FB6C8
	ldrh r0, [r4, #4]
	sub r0, r0, r7
	strh r0, [r4, #4]
	mov r0, #2
	ldrh r1, [r4, #4]
	lsl r0, r0, #8
	add r0, r1, r0
	cmp r0, #0
	bgt _021FA49C
	strh r0, [r4, #4]
_021FA49C:
	ldrh r1, [r4, #4]
	mov r0, #0x11
	lsl r0, r0, #4
	add r1, r1, r0
	strh r1, [r4, #6]
	ldrh r1, [r4, #6]
	add r0, #0xf0
	add r0, r1, r0
	cmp r0, #0
	bgt _021FA4B2
	strh r0, [r4, #6]
_021FA4B2:
	mov r6, #0
_021FA4B4:
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021FA340
	add r1, r7, #0
	bl ov96_021FBEFC
	add r6, r6, #1
	cmp r6, #4
	blt _021FA4B4
	ldr r0, [sp, #4]
	ldrb r1, [r4, #0x18]
	add r0, #0xdc
	ldr r0, [r0]
	add r2, r7, #0
	bl ov96_021FC6EC
	add r1, r4, #0
	add r2, r4, #0
	ldrb r0, [r4, #0x18]
	add r1, #0x24
	add r2, #0xc
	bl ov96_021FA83C
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _021FA54C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021FA4F6
	mov r0, #3
	str r0, [r4, #0x28]
	b _021FA53E
_021FA4F6:
	cmp r0, #3
	beq _021FA4FE
	cmp r0, #1
	bne _021FA53E
_021FA4FE:
	ldrh r1, [r4]
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r2, [r4, #0x3c]
	cmp r1, r0
	blo _021FA51A
	cmp r2, #0x78
	bne _021FA53E
	mov r0, #4
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	b _021FA53E
_021FA51A:
	sub r0, #0x80
	cmp r1, r0
	blo _021FA53E
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov96_021EAC0C
	ldr r0, [r4, #0x4c]
	bl ov96_021EB5B8
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
_021FA53E:
	ldr r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl ov96_021FAB24
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021FA54C:
	ldr r1, [r4, #0x28]
	mov r0, #1
	cmp r1, #1
	bne _021FA556
	mov r0, #0
_021FA556:
	add r1, r4, #0
	add r1, #0x60
	ldrh r1, [r1]
	cmp r1, #1
	bne _021FA56C
	add r1, r4, #0
	add r1, #0x62
	ldrh r1, [r1]
	cmp r1, #1
	bne _021FA56C
	mov r0, #1
_021FA56C:
	cmp r0, #0
	bne _021FA572
	b _021FA67C
_021FA572:
	mov r6, #0
_021FA574:
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021FA340
	str r0, [sp, #0xc]
	bl ov96_021FBEA0
	cmp r0, #0
	beq _021FA674
	ldr r7, [r4, #0x24]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x14
	bl ov96_021FBF5C
	add r0, r7, #0
	bl ov96_021EAF90
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ov96_021EAF8C
	add r1, r0, #0
	mov r0, #0x11
	lsl r1, r1, #0x18
	ldr r2, [r4, #0x3c]
	lsl r0, r0, #4
	add r2, r2, r0
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x18
	sub r0, r2, r0
	add r2, sp, #0x14
	bl ov96_021FAAE0
	cmp r0, #0
	beq _021FA674
	ldr r0, [sp, #0xc]
	bl ov96_021FBEA4
	ldrb r2, [r4, #0x18]
	ldr r1, _021FA6C0 ; =ov96_0221DC2C
	ldr r0, _021FA6C4 ; =0x000008A5
	ldrb r1, [r1, r2]
	bl sub_0200606C
	ldrb r2, [r4, #0x18]
	ldr r0, _021FA6C0 ; =ov96_0221DC2C
	ldr r1, _021FA6C8 ; =ov96_0221DC28
	ldrb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	bl sub_020061D0
	add r0, r4, #0
	add r0, #0x60
	ldrh r0, [r0]
	cmp r0, #1
	bne _021FA61E
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	cmp r0, #1
	bne _021FA61E
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldrb r2, [r4, #0x18]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r3, #2
	bl ov96_021E8228
	add r1, r4, #0
	add r1, #0x30
	mov r0, #3
	strb r0, [r1]
	mov r0, #1
	str r0, [r4, #0x2c]
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021FBCB8
	b _021FA666
_021FA61E:
	mov r0, #0x3f
	lsl r0, r0, #0x18
	str r0, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #9]
	mov r0, #2
	add r1, r4, #0
	str r0, [r4, #0x28]
	add r1, #0x31
	mov r0, #0
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x32
	mov r0, #1
	strb r0, [r1]
	mov r0, #4
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x4c]
	bl ov96_021EB5B8
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldrb r2, [r4, #0x18]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r3, #1
	bl ov96_021E8228
_021FA666:
	add r1, r4, #0
	add r1, #0x60
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x62
	strh r0, [r1]
_021FA674:
	add r6, r6, #1
	cmp r6, #4
	bge _021FA67C
	b _021FA574
_021FA67C:
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq _021FA6B0
	ldrh r1, [r4]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	blo _021FA6B0
	mov r0, #1
	strb r0, [r4, #8]
	mov r1, #0x23
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, _021FA6C0 ; =ov96_0221DC2C
	strh r0, [r4, #2]
	ldrb r2, [r4, #0x18]
	ldr r0, _021FA6CC ; =0x000008AB
	ldrb r1, [r1, r2]
	bl sub_0200606C
	mov r1, #0xf1
	ldr r0, [sp, #4]
	mov r2, #0x1e
	lsl r1, r1, #2
	strh r2, [r0, r1]
_021FA6B0:
	ldr r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl ov96_021FAB24
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021FA6C0: .word ov96_0221DC2C
_021FA6C4: .word 0x000008A5
_021FA6C8: .word ov96_0221DC28
_021FA6CC: .word 0x000008AB
	thumb_func_end ov96_021FA34C

	thumb_func_start ov96_021FA6D0
ov96_021FA6D0: ; 0x021FA6D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0xc]
	sub r0, r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r6, r1, #0
	str r0, [sp, #0x14]
	bl System_GetTouchNew
	cmp r0, #0
	beq _021FA71C
	ldr r0, [sp, #4]
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
	ldr r2, _021FA7A8 ; =gSystem + 0x40
	add r0, r6, #0
	ldrh r1, [r2, #0x20]
	ldrh r2, [r2, #0x22]
	bl ov96_021FB784
	str r0, [sp, #8]
	cmp r0, #3
	bge _021FA71C
	str r0, [sp, #0x10]
_021FA71C:
	mov r7, #0
	add r5, r6, #0
	add r4, r7, #0
	add r5, #0xe0
_021FA724:
	ldrb r0, [r5, #8]
	mov r3, #0
	cmp r0, #0
	bne _021FA736
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021FA73C
	add r3, sp, #0x10
	b _021FA73C
_021FA736:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021FA73C:
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl ov96_021FA34C
	add r4, r4, #1
	add r5, #0x6c
	cmp r4, #3
	blt _021FA724
	add r0, r6, #0
	add r0, #0xe6
	ldrh r0, [r0]
	ldr r1, _021FA7AC ; =0x01FF0000
	ldr r2, _021FA7B0 ; =0x04000010
	lsl r0, r0, #0x10
	and r0, r1
	str r0, [r2]
	ldr r0, _021FA7B4 ; =0x00000152
	ldrh r3, [r6, r0]
	lsl r3, r3, #0x10
	and r3, r1
	str r3, [r2, #4]
	add r3, r0, #0
	add r3, #0x6c
	ldrh r3, [r6, r3]
	lsl r3, r3, #0x10
	and r3, r1
	str r3, [r2, #8]
	add r2, r6, #0
	add r2, #0xe4
	ldrh r2, [r2]
	lsl r2, r2, #0x10
	add r3, r2, #0
	ldr r2, _021FA7B8 ; =0x04001010
	and r3, r1
	str r3, [r2]
	sub r3, r0, #2
	ldrh r3, [r6, r3]
	add r0, #0x6a
	lsl r3, r3, #0x10
	and r3, r1
	str r3, [r2, #4]
	ldrh r0, [r6, r0]
	lsl r0, r0, #0x10
	and r0, r1
	str r0, [r2, #8]
	cmp r7, #3
	blo _021FA7A0
	mov r0, #1
	str r0, [sp, #0xc]
_021FA7A0:
	ldr r0, [sp, #0xc]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FA7A8: .word gSystem + 0x40
_021FA7AC: .word 0x01FF0000
_021FA7B0: .word 0x04000010
_021FA7B4: .word 0x00000152
_021FA7B8: .word 0x04001010
	thumb_func_end ov96_021FA6D0

	thumb_func_start ov96_021FA7BC
ov96_021FA7BC: ; 0x021FA7BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r7, r0, #0
	ldr r0, [r4, #4]
	add r5, r2, #0
	cmp r0, #0
	bne _021FA82A
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA7FC
	ldr r1, _021FA82C ; =ov96_0221DC2C
	ldr r0, _021FA830 ; =0x0000060A
	add r6, r1, r5
	ldrb r1, [r1, r5]
	bl sub_0200606C
	add r0, r7, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, r5, #0
	mov r3, #2
	bl ov96_021E8228
	b _021FA808
_021FA7FC:
	ldr r1, _021FA82C ; =ov96_0221DC2C
	ldr r0, _021FA834 ; =0x000008AA
	add r6, r1, r5
	ldrb r1, [r1, r5]
	bl sub_0200606C
_021FA808:
	ldr r1, _021FA838 ; =ov96_0221DC28
	ldrb r0, [r6]
	ldrsb r1, [r1, r5]
	bl sub_020061D0
	mov r1, #1
	str r1, [r4, #4]
	mov r0, #0
	strb r0, [r4, #0xc]
	str r1, [r4, #8]
	add r1, r4, #0
	ldr r0, [r4]
	add r4, #0x14
	add r1, #0x10
	add r2, r4, #0
	bl ov96_021EAE9C
_021FA82A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FA82C: .word ov96_0221DC2C
_021FA830: .word 0x0000060A
_021FA834: .word 0x000008AA
_021FA838: .word ov96_0221DC28
	thumb_func_end ov96_021FA7BC

	thumb_func_start ov96_021FA83C
ov96_021FA83C: ; 0x021FA83C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _021FA8F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FA856: ; jump table
	.short _021FAA64 - _021FA856 - 2 ; case 0
	.short _021FA85E - _021FA856 - 2 ; case 1
	.short _021FA9AE - _021FA856 - 2 ; case 2
	.short _021FAA1E - _021FA856 - 2 ; case 3
_021FA85E:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _021FA874
	cmp r0, #2
	beq _021FA8D8
	cmp r0, #3
	beq _021FA912
	b _021FA9A8
_021FA874:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	ldr r3, _021FAAC8 ; =ov96_0221C55C
	lsl r1, r0, #3
	add r5, r0, r1
	ldrb r1, [r4, #0xc]
	sub r2, r1, #1
	add r1, r3, r5
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x14]
	sub r5, r2, r1
	cmp r0, #0
	bne _021FA8A4
	add r0, r4, #0
	mov r1, #0
	bl ov96_021FB8FC
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	bl ov96_021EAE4C
	b _021FA8B6
_021FA8A4:
	add r0, r4, #0
	bl ov96_021FB8B4
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	mov r3, #0
	bl ov96_021EAD88
_021FA8B6:
	ldrb r1, [r4, #0xc]
	ldrh r0, [r4, #0x38]
	cmp r1, r0
	blt _021FA8F2
	mov r0, #2
	str r0, [r4, #8]
	mov r1, #0
	add r0, r4, #0
	strb r1, [r4, #0xc]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FA8F2
	ldr r0, [r4]
	bl ov96_021EAB94
	b _021FAA6A
_021FA8D8:
	ldrb r1, [r4, #0xc]
	ldrh r0, [r4, #0x3a]
	cmp r1, r0
	blt _021FA8F2
	mov r0, #3
	str r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #0xc]
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA8F4
_021FA8F2:
	b _021FAA6A
_021FA8F4:
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EAB94
	ldr r6, _021FAACC ; =ov96_0221DC2C
	ldr r0, _021FAAD0 ; =0x000008AA
	ldrb r1, [r6, r5]
	bl sub_0200606C
	ldr r1, _021FAAD4 ; =ov96_0221DC28
	ldrb r0, [r6, r5]
	ldrsb r1, [r1, r5]
	bl sub_020061D0
	b _021FAA6A
_021FA912:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	ldr r3, _021FAAD8 ; =ov96_0221C589
	lsl r1, r0, #3
	add r6, r0, r1
	ldrb r1, [r4, #0xc]
	sub r2, r1, #1
	add r1, r3, r6
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x14]
	sub r6, r2, r1
	cmp r0, #0
	bne _021FA942
	add r0, r4, #0
	mov r1, #1
	bl ov96_021FB8FC
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	bl ov96_021EAE4C
	b _021FA954
_021FA942:
	add r0, r4, #0
	bl ov96_021FB8B4
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	mov r3, #0
	bl ov96_021EAD88
_021FA954:
	ldrh r0, [r4, #0x38]
	ldrb r1, [r4, #0xc]
	cmp r1, r0
	blt _021FA99C
	mov r3, #0
	str r3, [r4, #4]
	str r3, [r4, #8]
	strb r3, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov96_021EAD88
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA98C
	ldr r6, _021FAACC ; =ov96_0221DC2C
	ldr r0, _021FAADC ; =0x000008A8
	ldrb r1, [r6, r5]
	bl sub_0200606C
	ldr r1, _021FAAD4 ; =ov96_0221DC28
	ldrb r0, [r6, r5]
	ldrsb r1, [r1, r5]
	bl sub_020061D0
_021FA98C:
	add r0, r4, #0
	mov r1, #0
	bl ov96_021FB8B4
	mov r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
	b _021FAA6A
_021FA99C:
	sub r0, r0, #5
	cmp r1, r0
	bge _021FAA6A
	mov r0, #0
	strh r0, [r4, #0x3c]
	b _021FAA6A
_021FA9A8:
	bl GF_AssertFail
	b _021FAA6A
_021FA9AE:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _021FA9F4
	ldrb r0, [r4, #0xe]
	cmp r0, #4
	bhi _021FA9EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FA9CC: ; jump table
	.short _021FA9EC - _021FA9CC - 2 ; case 0
	.short _021FA9D6 - _021FA9CC - 2 ; case 1
	.short _021FA9E2 - _021FA9CC - 2 ; case 2
	.short _021FA9DC - _021FA9CC - 2 ; case 3
	.short _021FA9E8 - _021FA9CC - 2 ; case 4
_021FA9D6:
	mov r0, #3
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9DC:
	mov r0, #2
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9E2:
	mov r0, #4
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9E8:
	mov r0, #1
	strb r0, [r4, #0xe]
_021FA9EC:
	ldrb r1, [r4, #0xe]
	ldr r0, [r4]
	bl ov96_021EAC0C
_021FA9F4:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	cmp r0, #0x1e
	bls _021FAA6A
	mov r0, #0
	strb r0, [r4, #0xc]
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EAC0C
	b _021FAA6A
_021FAA1E:
	ldr r1, [r4, #0x18]
	mov r0, #0
	cmp r1, #0x78
	bge _021FAA36
	add r0, r1, #1
	mov r2, #1
	cmp r0, #0x78
	ble _021FAA32
	add r2, r1, #0
	sub r2, #0x78
_021FAA32:
	mov r0, #1
	b _021FAA46
_021FAA36:
	ble _021FAA46
	sub r2, r0, #1
	sub r0, r1, #1
	cmp r0, #0x78
	bge _021FAA44
	mov r0, #0x78
	sub r2, r0, r1
_021FAA44:
	mov r0, #1
_021FAA46:
	cmp r0, #0
	beq _021FAA6A
	ldr r0, [r4, #0x18]
	mov r3, #1
	add r0, r0, r2
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r0, r0, r2
	str r0, [r4, #0x1c]
	str r3, [sp]
	ldr r0, [r4]
	bl ov96_021EAED4
	b _021FAA6A
_021FAA64:
	mov r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
_021FAA6A:
	ldr r0, [r4, #0x20]
	bl ov96_021EB5B8
	add r5, r0, #0
	bl Sprite_GetMatrixPtr
	add r6, r0, #0
	add r3, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl Sprite_SetMatrix
	ldr r0, [r4]
	add r1, sp, #8
	add r2, sp, #4
	bl ov96_021EAE9C
	ldr r0, [r4, #0x28]
	bl ov96_021EB5B8
	add r4, r0, #0
	bl Sprite_GetMatrixPtr
	add r5, r0, #0
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl Sprite_SetMatrix
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FAAC8: .word ov96_0221C55C
_021FAACC: .word ov96_0221DC2C
_021FAAD0: .word 0x000008AA
_021FAAD4: .word ov96_0221DC28
_021FAAD8: .word ov96_0221C589
_021FAADC: .word 0x000008A8
	thumb_func_end ov96_021FA83C

