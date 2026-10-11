	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E7C04
	.public ov96_021E7C94
	.public ov96_021E7CC8
	.public ov96_021E7D18
	.public ov96_021E7D30
	.public ov96_021E7D6C
	.public ov96_021E7F48
	.extern ov96_021E5F24
	.extern ov96_021E7F98

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
	thumb_func_start ov96_021E7C04
ov96_021E7C04: ; 0x021E7C04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r2, #0
	add r7, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	add r0, #0x80
	ldrh r0, [r0]
	ldrh r1, [r4]
	add r2, r7, #0
	bl ov96_021E7D18
	cmp r0, #0
	beq _021E7C90
	add r6, #0x80
	ldmia r4!, {r0, r1}
	add r5, r6, #0
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	mov r4, #4
_021E7C36:
	add r0, r5, #0
	sub r0, #0x20
	ldrh r0, [r0]
	ldrh r1, [r5]
	add r2, r7, #0
	bl ov96_021E7D18
	cmp r0, #0
	beq _021E7C90
	add r3, r5, #0
	sub r3, #0x20
	add r2, sp, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, r5, #0
	add r3, r5, #0
	sub r2, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, r5, #0
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	sub r4, r4, #1
	sub r5, #0x20
	stmia r2!, {r0, r1}
	cmp r4, #0
	bgt _021E7C36
_021E7C90:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E7C04

	thumb_func_start ov96_021E7C94
ov96_021E7C94: ; 0x021E7C94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov96_021E5F24
	mov r2, #0
	add r1, r2, #0
_021E7CA2:
	ldrh r0, [r4]
	add r3, r1, #0
	add r6, r4, #0
	strh r0, [r5]
	add r7, r5, #0
_021E7CAC:
	ldrh r0, [r6, #2]
	add r3, r3, #1
	add r6, r6, #2
	strh r0, [r7, #2]
	add r7, r7, #2
	cmp r3, #3
	blt _021E7CAC
	add r2, r2, #1
	add r4, #0x20
	add r5, #8
	cmp r2, #5
	blt _021E7CA2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E7C94

	thumb_func_start ov96_021E7CC8
ov96_021E7CC8: ; 0x021E7CC8
	push {r4, r5, r6, r7}
	mov r0, #0
	add r3, r1, #0
_021E7CCE:
	ldrh r4, [r2]
	mov r5, #0
	add r6, r2, #0
	strh r4, [r1]
	add r7, r1, #0
_021E7CD8:
	ldrh r4, [r6, #2]
	add r5, r5, #1
	add r6, r6, #2
	strh r4, [r7, #2]
	add r7, r7, #2
	cmp r5, #3
	blt _021E7CD8
	ldr r4, [r2, #8]
	mov r5, #0
	str r4, [r3, #0x2c]
	add r6, r2, #0
	add r7, r3, #0
_021E7CF0:
	ldrh r4, [r6, #0xc]
	add r5, r5, #1
	add r6, r6, #2
	strh r4, [r7, #0x30]
	add r7, r7, #2
	cmp r5, #8
	blt _021E7CF0
	ldrb r5, [r2, #0x1c]
	add r4, r3, #0
	add r4, #0x40
	add r0, r0, #1
	strb r5, [r4]
	add r2, #0x20
	add r1, #8
	add r3, #0x18
	cmp r0, #5
	blt _021E7CCE
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E7CC8

	thumb_func_start ov96_021E7D18
ov96_021E7D18: ; 0x021E7D18
	push {r3, lr}
	ldr r3, _021E7D2C ; =0x0000FFFF
	cmp r0, r3
	bne _021E7D24
	mov r0, #1
	pop {r3, pc}
_021E7D24:
	bl ov96_021E7D30
	pop {r3, pc}
	nop
_021E7D2C: .word 0x0000FFFF
	thumb_func_end ov96_021E7D18

	thumb_func_start ov96_021E7D30
ov96_021E7D30: ; 0x021E7D30
	push {r4, lr}
	mov r4, #0
	cmp r2, #0
	bne _021E7D4A
	ldr r2, _021E7D68 ; =0x0000FFFF
	cmp r0, r2
	bne _021E7D42
	mov r4, #1
	b _021E7D64
_021E7D42:
	cmp r0, r1
	bge _021E7D64
	mov r4, #1
	b _021E7D64
_021E7D4A:
	cmp r2, #1
	bne _021E7D60
	ldr r2, _021E7D68 ; =0x0000FFFF
	cmp r0, r2
	bne _021E7D58
	mov r4, #1
	b _021E7D64
_021E7D58:
	cmp r0, r1
	ble _021E7D64
	mov r4, #1
	b _021E7D64
_021E7D60:
	bl GF_AssertFail
_021E7D64:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_021E7D68: .word 0x0000FFFF
	thumb_func_end ov96_021E7D30

	thumb_func_start ov96_021E7D6C
ov96_021E7D6C: ; 0x021E7D6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r1, [sp]
	ldr r1, _021E7F3C ; =0x0000072C
	add r5, r0, #0
	add r7, r5, r1
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, _021E7F40 ; =0x0098967F
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E7DCE
	ldr r2, [sp]
	mov r0, #1
	add r2, #0x38
	bl ov96_021E7F98
	mov r0, #0x1d
	lsl r0, r0, #4
	ldrh r0, [r7, r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021E7DBA
	ldr r2, [sp]
	ldr r1, _021E7F40 ; =0x0098967F
	mov r0, #1
	add r2, #0x3c
	bl ov96_021E7F98
	add r0, r5, #0
	bl ov96_021E7F48
	b _021E7E0A
_021E7DBA:
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E7E0A
	ldr r2, [sp]
	ldr r1, _021E7F40 ; =0x0098967F
	mov r0, #1
	add r2, #0x40
	bl ov96_021E7F98
	b _021E7E0A
_021E7DCE:
	ldr r2, [sp]
	mov r0, #1
	add r2, r2, #4
	bl ov96_021E7F98
	mov r0, #0x1d
	lsl r0, r0, #4
	ldrh r0, [r7, r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021E7DF8
	ldr r2, [sp]
	ldr r1, _021E7F40 ; =0x0098967F
	mov r0, #1
	add r2, #8
	bl ov96_021E7F98
	add r0, r5, #0
	bl ov96_021E7F48
	b _021E7E0A
_021E7DF8:
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E7E0A
	ldr r2, [sp]
	ldr r1, _021E7F40 ; =0x0098967F
	mov r0, #1
	add r2, #0xc
	bl ov96_021E7F98
_021E7E0A:
	ldr r0, _021E7F44 ; =0x0000072A
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _021E7E68
	ldr r0, [sp]
	ldr r6, [sp]
	str r0, [sp, #0xc]
	add r0, #0x6c
	str r0, [sp, #0xc]
	add r6, #0x44
_021E7E20:
	mov r1, #0x72
	add r0, r7, r4
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021E7E46
	lsl r2, r4, #2
	add r3, r5, r2
	mov r2, #0xf6
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	ldr r1, _021E7F40 ; =0x0098967F
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	mov r0, #1
	add r2, r6, r2
	bl ov96_021E7F98
	b _021E7E5A
_021E7E46:
	mov r1, #0x73
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021E7E5A
	ldr r1, _021E7F40 ; =0x0098967F
	ldr r2, [sp, #0xc]
	mov r0, #1
	bl ov96_021E7F98
_021E7E5A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021E7F44 ; =0x0000072A
	ldrb r0, [r5, r0]
	cmp r4, r0
	blo _021E7E20
_021E7E68:
	ldr r0, [sp, #8]
	mov r1, #0x60
	mul r1, r0
	add r0, r7, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r4, _021E7F40 ; =0x0098967F
	str r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r6, #0
	str r0, [sp, #0x14]
	add r0, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp]
	str r0, [sp, #0x1c]
	add r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r0, [sp, #0x20]
	add r0, #0x28
	str r0, [sp, #0x20]
	ldr r0, [sp]
	str r0, [sp, #0x24]
	add r0, #0x2c
	str r0, [sp, #0x24]
	ldr r0, [sp]
	str r0, [sp, #0x28]
	add r0, #0x30
	str r0, [sp, #0x28]
	ldr r0, [sp]
	str r0, [sp, #0x2c]
	add r0, #0x34
	str r0, [sp, #0x2c]
_021E7EB6:
	ldr r0, [sp, #4]
	lsl r1, r6, #5
	add r5, r0, r1
	ldr r0, [r0, r1]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x14]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x18]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #0x1c]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x20]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0x14]
	ldr r2, [sp, #0x24]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x2c]
	add r1, r4, #0
	bl ov96_021E7F98
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021E7EB6
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [sp]
	ldr r0, [r7, r0]
	ldr r1, _021E7F40 ; =0x0098967F
	add r2, #0x10
	bl ov96_021E7F98
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [sp]
	ldr r0, [r7, r0]
	add r2, #0x14
	ldr r1, _021E7F40 ; =0x0098967F
	str r2, [sp]
	bl ov96_021E7F98
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7F3C: .word 0x0000072C
_021E7F40: .word 0x0098967F
_021E7F44: .word 0x0000072A
	thumb_func_end ov96_021E7D6C

	thumb_func_start ov96_021E7F48
ov96_021E7F48: ; 0x021E7F48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_FriendshipRecords_Get
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0x3f
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x7c
	mul r0, r2
	add r3, r1, r0
	mov r2, #0
	mov r5, #0x28
_021E7F74:
	add r6, r2, #0
	mul r6, r5
	add r1, r3, r6
	ldrh r6, [r3, r6]
	lsl r7, r2, #2
	add r0, r4, r7
	strh r6, [r4, r7]
	ldrh r6, [r1, #2]
	strb r6, [r0, #3]
	ldrb r1, [r1, #0x11]
	strb r1, [r0, #2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	blo _021E7F74
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E7F48

