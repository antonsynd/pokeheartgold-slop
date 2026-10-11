	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F6C5C
	.public ov96_021F6DA4
	.extern ov96_021EA634
	.extern ov96_021EB3E4
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_021EB5E8
	.extern ov96_021EB630
	.extern ov96_021F74D0
	.extern ov96_021F7544
	.extern ov96_0221C0B0
	.extern ov96_0221C0B4
	.extern ov96_0221C0C4
	.extern ov96_0221C0D0
	.extern ov96_0221C0DC

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
	thumb_func_start ov96_021F6C5C
ov96_021F6C5C: ; 0x021F6C5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	add r0, #0x8c
	ldr r0, [r0]
	add r5, r1, #0
	mov r2, #2
	bl ov96_021F74D0
	mov r2, #3
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x65
	str r2, [sp]
	bl ov96_021EB3E4
	ldr r1, [sp, #4]
	str r0, [r1, #0x64]
	mov r1, #0xc
	bl ov96_021EB564
	ldr r0, [sp, #4]
	mov r1, #1
	ldr r0, [r0, #0x64]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r4, [sp, #4]
	mov r6, #0
	mov r7, #4
_021F6C98:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x65
	str r7, [sp]
	bl ov96_021EB3E4
	add r1, r6, #0
	str r0, [r4, #0x68]
	add r1, #0xd
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r4, #0x68]
	add r2, r1, #0
	bl ov96_021EB52C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021F6C98
	ldr r4, [sp, #4]
	mov r6, #0
	mov r7, #7
_021F6CC8:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x65
	str r7, [sp]
	bl ov96_021EB3E4
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xb
	bl ov96_021EB564
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #9
	bl ov96_021EB630
	add r6, r6, #1
	add r4, #0x38
	cmp r6, #4
	blt _021F6CC8
	ldr r4, [sp, #4]
	mov r6, #0
	mov r7, #8
_021F6D02:
	str r7, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x65
	bl ov96_021EB3E4
	str r0, [r4, #0x78]
	mov r1, #9
	bl ov96_021EB564
	ldr r0, [r4, #0x78]
	mov r1, #6
	bl ov96_021EB630
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021F6D02
	mov r0, #0
	ldr r4, [sp, #4]
	ldr r7, _021F6D9C ; =ov96_0221C0B0
	ldr r6, _021F6DA0 ; =ov96_0221C0B4
	str r0, [sp, #8]
_021F6D32:
	add r0, r5, #0
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0x62
	ldr r3, [sp, #4]
	ldr r2, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r3, [r3, #0x54]
	mov r2, #1
	bl ov96_021EA634
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldrb r0, [r7]
	add r1, sp, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0x84
	ldrb r1, [r6]
	ldr r0, [r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, r0, #1
	add r7, r7, #1
	add r6, r6, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _021F6D32
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F6D9C: .word ov96_0221C0B0
_021F6DA0: .word ov96_0221C0B4
	thumb_func_end ov96_021F6C5C

	thumb_func_start ov96_021F6DA4
ov96_021F6DA4: ; 0x021F6DA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	str r1, [sp]
	add r0, #0x8c
	ldr r0, [r0]
	bl ov96_021F7544
	ldr r4, _021F6E2C ; =ov96_0221C0C4
	add r3, sp, #0x28
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r5, #0x64]
	bl ov96_021EB588
	ldr r4, _021F6E30 ; =ov96_0221C0DC
	add r3, sp, #0x1c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	bl ov96_021EB588
	ldr r3, _021F6E34 ; =ov96_0221C0D0
	mov r4, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, r4, #0
	str r0, [r2]
_021F6DF6:
	add r3, sp, #4
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp]
	cmp r6, r0
	beq _021F6E20
	ldr r1, [sp, #0x14]
	lsl r0, r4, #0x10
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x68]
	add r1, r7, #0
	bl ov96_021EB588
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021F6E20:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _021F6DF6
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F6E2C: .word ov96_0221C0C4
_021F6E30: .word ov96_0221C0DC
_021F6E34: .word ov96_0221C0D0
	thumb_func_end ov96_021F6DA4

