	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F5BA0
	.public ov96_021F5D3C
	.public ov96_021F5EC4
	.public ov96_021F5F34
	.public ov96_021F5F68
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E6104
	.extern ov96_021E8228
	.extern ov96_021E872C
	.extern ov96_021E8A20
	.extern ov96_021EAC0C
	.extern ov96_021EAD08
	.extern ov96_021EAF94
	.extern ov96_021EB0A4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB57C
	.extern ov96_021EB588
	.extern ov96_021F6088
	.extern ov96_021F7740
	.extern ov96_0221DC18

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
	thumb_func_start ov96_021F5BA0
ov96_021F5BA0: ; 0x021F5BA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	bl PokeathlonCourse_GetDataCopyArea
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r5, r0, #0
	bl System_GetTouchNew
	cmp r0, #0
	beq _021F5C10
	ldr r0, [sp, #8]
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
	ldr r2, _021F5D38 ; =gSystem + 0x40
	add r0, r5, #0
	ldrh r1, [r2, #0x20]
	ldrh r2, [r2, #0x22]
	bl ov96_021F5F68
	cmp r0, #3
	bhs _021F5CC2
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, _021F5D38 ; =gSystem + 0x40
	strb r0, [r5, r1]
	ldrh r0, [r2, #0x20]
	lsl r3, r0, #0xc
	add r0, r1, #0
	add r0, #0x2c
	str r3, [r5, r0]
	ldrh r0, [r2, #0x22]
	lsl r2, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x30
	str r2, [r5, r0]
	mov r0, #0
	add r1, #0x34
	str r0, [r5, r1]
	b _021F5CC2
_021F5C10:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _021F5C74
	mov r2, #5
	lsl r2, r2, #6
	ldrb r0, [r5, r2]
	cmp r0, #3
	bhs _021F5CC2
	add r0, r2, #1
	ldrb r0, [r5, r0]
	cmp r0, #7
	bhs _021F5C36
	add r0, r2, #1
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r2, #1
	strb r1, [r5, r0]
	b _021F5CC2
_021F5C36:
	add r3, sp, #0x1c
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	ldr r1, _021F5D38 ; =gSystem + 0x40
	str r0, [r3, #8]
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	add r2, #0x2c
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	add r2, r5, r2
	bl ov96_021F5F34
	mov r1, #5
	lsl r1, r1, #6
	ldrb r1, [r5, r1]
	add r0, r5, #0
	add r2, sp, #0x1c
	bl ov96_021F6088
	mov r0, #5
	mov r1, #3
	lsl r0, r0, #6
	strb r1, [r5, r0]
	mov r1, #0
	add r0, r0, #1
	strb r1, [r5, r0]
	b _021F5CC2
_021F5C74:
	mov r2, #5
	lsl r2, r2, #6
	ldrb r0, [r5, r2]
	cmp r0, #3
	bhs _021F5CB4
	add r0, r2, #1
	ldrb r0, [r5, r0]
	cmp r0, #7
	bhs _021F5CB4
	add r3, sp, #0x10
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	ldr r1, _021F5D38 ; =gSystem + 0x40
	str r0, [r3, #8]
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	add r2, #0x2c
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	add r2, r5, r2
	bl ov96_021F5F34
	mov r1, #5
	lsl r1, r1, #6
	ldrb r1, [r5, r1]
	add r0, r5, #0
	add r2, sp, #0x10
	bl ov96_021F6088
_021F5CB4:
	mov r0, #5
	mov r1, #3
	lsl r0, r0, #6
	strb r1, [r5, r0]
	mov r1, #0
	add r0, r0, #1
	strb r1, [r5, r0]
_021F5CC2:
	ldr r0, [sp, #8]
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F5D32
	add r0, r4, #0
	add r0, #0x28
	bl ov96_021E8A20
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x50
	bl ov96_021E8A20
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov96_021E8A20
	add r3, r0, #0
	mov r6, #4
_021F5CEA:
	ldr r2, [sp, #4]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #4]
	sub r6, r6, #1
	bne _021F5CEA
	ldr r1, [r3]
	add r0, r2, #0
	str r1, [r0]
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r0, [sp, #8]
	ldr r1, [r5, r1]
	bl ov96_021F7740
	mov r6, #0
	add r4, #0x50
	add r5, sp, #0xc
_021F5D0E:
	add r0, r4, #0
	bl ov96_021E8A20
	ldr r0, [r0]
	add r6, r6, #1
	strb r0, [r5]
	add r4, #0x28
	add r5, r5, #1
	cmp r6, #4
	blt _021F5D0E
	mov r2, #0
	add r1, sp, #0xc
_021F5D26:
	ldrb r0, [r1]
	add r1, r1, #1
	strb r0, [r7, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _021F5D26
_021F5D32:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5D38: .word gSystem + 0x40
	thumb_func_end ov96_021F5BA0

	thumb_func_start ov96_021F5D3C
ov96_021F5D3C: ; 0x021F5D3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #4]
	ldr r4, [sp, #4]
	ldr r6, [sp, #4]
	mov r0, #0
	ldr r5, _021F5EBC ; =ov96_0221DC18
	str r0, [sp, #0x10]
	add r4, #0x90
	add r7, r6, #0
_021F5D56:
	ldr r0, _021F5EC0 ; =0x00000FB4
	ldr r0, [r6, r0]
	lsl r1, r0, #6
	mov r0, #0x12
	lsl r0, r0, #0x10
	sub r0, r0, r1
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	mov r0, #2
	lsl r0, r0, #0x10
	str r1, [r4, #8]
	cmp r1, r0
	bge _021F5D74
	str r0, [r4, #8]
	b _021F5D7E
_021F5D74:
	mov r0, #0xdf
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021F5D7E
	str r0, [r4, #8]
_021F5D7E:
	ldr r1, [r4, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r1, r0, #0x18
	mov r0, #0xfa
	lsl r0, r0, #4
	str r1, [r7, r0]
	ldr r1, [r4, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	ldr r1, [r4, #0xc]
	str r0, [sp, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl ov96_021EAF94
	mov r1, #0
	add r0, sp, #0x14
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	bl ov96_021E60C0
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _021F5DF0
	mov r0, #6
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x18]
	b _021F5DFA
_021F5DF0:
	mov r0, #1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x18]
_021F5DFA:
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #4]
	beq _021F5E34
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #0x14
	bl ov96_021EAD08
	ldrb r0, [r5]
	bl sub_02006190
	cmp r0, #0
	bne _021F5E5E
	ldrb r1, [r5]
	mov r0, #0x89
	lsl r0, r0, #4
	bl sub_0200606C
	b _021F5E5E
_021F5E34:
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #0
	bl ov96_021EAD08
	mov r0, #0x3f
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	cmp r0, #0
	ldr r0, [r4]
	beq _021F5E58
	mov r1, #1
	bl ov96_021EAC0C
	b _021F5E5E
_021F5E58:
	mov r1, #2
	bl ov96_021EAC0C
_021F5E5E:
	ldr r0, [sp, #0x10]
	add r4, #0x38
	add r0, r0, #1
	add r6, #0x1c
	add r7, r7, #4
	add r5, r5, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	bge _021F5E72
	b _021F5D56
_021F5E72:
	ldr r4, [sp, #4]
	mov r1, #0x51
	mov r5, #0
	lsl r1, r1, #2
	add r0, r4, #0
	add r6, r0, r1
	add r7, r5, #0
_021F5E80:
	ldr r0, [sp, #4]
	mov r1, #0x5a
	add r0, r0, r5
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021F5EAE
	mov r1, #0x5a
	lsl r1, r1, #2
	strb r7, [r0, r1]
	mov r1, #1
	ldr r0, [r4, #0x78]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4, #0x78]
	add r1, r6, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x78]
	mov r1, #9
	bl ov96_021EB564
_021F5EAE:
	add r5, r5, #1
	add r4, r4, #4
	add r6, #0xc
	cmp r5, #3
	blt _021F5E80
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5EBC: .word ov96_0221DC18
_021F5EC0: .word 0x00000FB4
	thumb_func_end ov96_021F5D3C

	thumb_func_start ov96_021F5EC4
ov96_021F5EC4: ; 0x021F5EC4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	add r7, r0, #0
	add r0, r6, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
_021F5EE0:
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r4, r0
	bne _021F5F0A
	ldr r1, [sp]
	ldr r0, _021F5F30 ; =0x00000142
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021F5F24
	ldr r0, [r5, #0x68]
	bl ov96_021EB57C
	cmp r0, #0
	bne _021F5F24
	add r1, r4, #0
	ldr r0, [r5, #0x68]
	add r1, #0xd
	bl ov96_021EB564
	b _021F5F24
_021F5F0A:
	ldrb r0, [r7, r4]
	cmp r0, #0
	beq _021F5F24
	ldr r0, [r5, #0x68]
	bl ov96_021EB57C
	cmp r0, #0
	bne _021F5F24
	add r1, r4, #0
	ldr r0, [r5, #0x68]
	add r1, #0xd
	bl ov96_021EB564
_021F5F24:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021F5EE0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5F30: .word 0x00000142
	thumb_func_end ov96_021F5EC4

	thumb_func_start ov96_021F5F34
ov96_021F5F34: ; 0x021F5F34
	push {r3, r4, lr}
	sub sp, #0xc
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #3
	lsl r1, r1, #0xc
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r4, r3, #0
	add r1, r2, #0
	add r0, sp, #0
	add r2, r4, #0
	bl VEC_Subtract
	mov r0, #7
	ldr r1, [r4, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	ble _021F5F62
	str r0, [r4, #4]
_021F5F62:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F5F34

	thumb_func_start ov96_021F5F68
ov96_021F5F68: ; 0x021F5F68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #0xc]
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	bl ov96_021E6104
	lsl r6, r0, #0xc
	ldr r0, [sp, #8]
	mov r5, #0
	str r0, [sp, #0x14]
	add r0, #0x90
	add r4, r5, #0
	add r7, sp, #0x24
	str r0, [sp, #0x14]
_021F5F86:
	mov r0, #0x38
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	add r0, r1, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F5FA8
	mov r0, #0
	strb r0, [r7, r4]
	add r1, r0, #0
	lsl r2, r4, #2
	add r0, sp, #0x28
	str r1, [r0, r2]
	b _021F6014
_021F5FA8:
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	add r3, r4, #0
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	mov r2, #0x1c
	mul r3, r2
	ldr r2, [sp, #8]
	add r3, r2, r3
	ldr r2, _021F605C ; =0x00000FB4
	ldr r2, [r3, r2]
	lsl r3, r2, #6
	mov r2, #6
	lsl r2, r2, #0x10
	sub r2, r2, r3
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #0x1c
	bl ov96_021EB0A4
	bl ov96_021E6104
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov96_021E872C
	cmp r0, #0
	add r0, sp, #0x28
	beq _021F600A
	ldr r2, [sp, #0x20]
	lsl r1, r4, #2
	str r2, [r0, r1]
	mov r0, #1
	strb r0, [r7, r4]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _021F6014
_021F600A:
	lsl r2, r4, #2
	mov r1, #0
	str r1, [r0, r2]
	add r0, r1, #0
	strb r0, [r7, r4]
_021F6014:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F5F86
	cmp r5, #0
	bne _021F6028
	add sp, #0x34
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021F6028:
	mov r0, #3
	mov r3, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
_021F6030:
	ldrb r4, [r2, r3]
	cmp r4, #0
	beq _021F6042
	lsl r4, r3, #2
	ldr r4, [r1, r4]
	cmp r4, r6
	bge _021F6042
	add r0, r3, #0
	add r6, r4, #0
_021F6042:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #3
	blo _021F6030
	cmp r0, #3
	bne _021F6056
	bl GF_AssertFail
	mov r0, #3
_021F6056:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021F605C: .word 0x00000FB4
	thumb_func_end ov96_021F5F68

