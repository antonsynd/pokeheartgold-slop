	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02208374
	.public ov96_02208448
	.public ov96_02208608
	.public ov96_02208658
	.public ov96_02208740
	.public ov96_02208784
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_021EB588
	.extern ov96_021EB594
	.extern ov96_021EB5B8
	.extern ov96_021EB630
	.extern ov96_022082BC
	.extern ov96_0220831C
	.extern ov96_022088AC
	.extern ov96_02208A80

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
	thumb_func_start ov96_02208374
ov96_02208374: ; 0x02208374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #3]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0]
	mov r0, #0x64
	mul r0, r4
	sub r0, r6, r0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #4]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #1]
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #5]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #2]
	mov r4, #0
	mov r6, #4
	mov r7, #8
_022083FE:
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x28]
	lsl r2, r4, #2
	add r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x1c
	add r0, #3
	ldrb r0, [r0, r4]
	add r2, #0xe
	lsl r2, r2, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	mov r1, #5
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	mov r3, #3
	bl CopyRectToBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _022083FE
	ldr r0, [r5, #8]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02208374

	thumb_func_start ov96_02208448
ov96_02208448: ; 0x02208448
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r5, #0x67
	add r4, r0, #0
	lsl r5, r5, #2
	add r6, r1, #0
	ldr r1, [r4, r5]
	cmp r1, #3
	bhi _022084B4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02208466: ; jump table
	.short _0220846E - _02208466 - 2 ; case 0
	.short _022084D6 - _02208466 - 2 ; case 1
	.short _02208500 - _02208466 - 2 ; case 2
	.short _02208576 - _02208466 - 2 ; case 3
_0220846E:
	add r0, r5, #4
	ldrh r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x6c
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r5, #4
	ldrh r1, [r4, r0]
	sub r0, #0x70
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl ov96_021EB588
	mov r0, #0xe7
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _022084B6
_022084B4:
	b _02208600
_022084B6:
	mov r0, #0xa5
	lsl r0, r0, #0xe
	str r0, [sp, #0x1c]
	add r0, r5, #4
	ldrh r1, [r4, r0]
	sub r0, #0x70
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x18
	bl ov96_021EB588
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _02208600
_022084D6:
	add r1, r5, #4
	ldrh r1, [r4, r1]
	add r2, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_022082BC
	add r3, r5, #4
	ldrh r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strh r0, [r4, r3]
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _02208600
_02208500:
	add r0, r5, #4
	ldrh r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x6c
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0xc
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #2
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r5, #4
	ldrh r1, [r4, r0]
	sub r0, #0x70
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl ov96_021EB588
	mov r0, #0xd1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _02208600
	str r0, [sp, #0x10]
	add r0, r5, #4
	ldrh r1, [r4, r0]
	sub r0, #0x70
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl ov96_021EB588
	add r3, r5, #4
	ldrh r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strh r0, [r4, r3]
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _02208600
_02208576:
	add r0, r5, #4
	ldrh r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x6c
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #4
	ldrh r1, [r4, r0]
	sub r0, #0x70
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	mov r0, #0xbb
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _02208600
	str r0, [sp, #4]
	add r0, r5, #4
	ldrh r1, [r4, r0]
	sub r0, #0x70
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	add r3, r5, #4
	ldrh r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strh r0, [r4, r3]
	add r0, r6, #2
	mov r1, #3
	bl _s32_div_f
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_022088AC
	mov r0, #0
	str r0, [r4, r5]
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02208600:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02208448

	thumb_func_start ov96_02208608
ov96_02208608: ; 0x02208608
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	beq _02208614
	cmp r5, #4
	blo _02208618
_02208614:
	bl GF_AssertFail
_02208618:
	mov r1, #0x6f
	sub r0, r5, #1
	lsl r1, r1, #2
	lsl r0, r0, #2
	add r3, r4, r1
	ldrh r2, [r3, r0]
	add r2, #0x20
	strh r2, [r3, r0]
	ldrh r2, [r3, r0]
	cmp r2, #0x58
	blo _0220863C
	mov r2, #0
	add r1, r1, #2
	strh r2, [r3, r0]
	add r2, r4, r1
	ldrh r1, [r2, r0]
	add r1, r1, #1
	strh r1, [r2, r0]
_0220863C:
	ldr r1, _02208654 ; =0x000001BE
	add r2, r4, r1
	ldrh r1, [r2, r0]
	cmp r1, #3
	blo _0220864E
	mov r1, #0
	strh r1, [r2, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0220864E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02208654: .word 0x000001BE
	thumb_func_end ov96_02208608

	thumb_func_start ov96_02208658
ov96_02208658: ; 0x02208658
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r3, #0
	mov r3, #0x69
	add r5, r0, #0
	lsl r3, r3, #2
	add r4, r1, #0
	add r6, r5, r3
	ldrb r3, [r6, r4]
	cmp r2, r3
	beq _02208674
	strb r2, [r6, r4]
	bl ov96_0220831C
_02208674:
	cmp r7, #0
	beq _022086B6
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0x28
	mul r0, r4
	add r0, #0x70
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, _0220873C ; =0x00350004
	add r6, r4, #0
	str r0, [sp, #0x14]
	mov r0, #0x1c
	mul r6, r0
	add r0, r5, r6
	ldr r0, [r0, #0x38]
	add r1, sp, #0x10
	bl ov96_021EB588
	add r0, r5, r6
	ldr r0, [r0, #0x40]
	add r1, sp, #0x10
	bl ov96_021EB588
	mov r0, #0x4f
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #0
	bl ov96_02208A80
	b _02208730
_022086B6:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x28
	mul r0, r4
	add r0, #0x70
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x35
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x1c
	add r6, r4, #0
	mul r6, r0
	add r0, r5, r6
	ldr r0, [r0, #0x38]
	add r1, sp, #4
	bl ov96_021EB588
	add r0, r5, r6
	ldr r0, [r0, #0x40]
	add r1, sp, #4
	bl ov96_021EB588
	mov r0, #0x4f
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r4, #4
	add r0, r1, r0
	mov r1, #1
	bl ov96_02208A80
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _02208724
	add r0, r5, r6
	add r0, #0x44
	ldrb r0, [r0]
	cmp r1, r0
	beq _02208730
	add r7, r5, #0
	mov r0, #0x1c
	mul r0, r4
	mov r1, #1
	add r7, #0x3c
	str r0, [sp]
	ldr r0, [r7, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r7, r0]
	bl ov96_021EB564
	b _02208730
_02208724:
	add r0, r5, r6
	ldr r0, [r0, #0x3c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_02208730:
	add r0, r5, r6
	ldr r1, [sp, #0x30]
	add r0, #0x44
	strb r1, [r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0220873C: .word 0x00350004
	thumb_func_end ov96_02208658

	thumb_func_start ov96_02208740
ov96_02208740: ; 0x02208740
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	mov r0, #0x6e
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_02208740

	thumb_func_start ov96_02208784
ov96_02208784: ; 0x02208784
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
	add r4, r5, #0
_02208790:
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl Sprite_SetDrawPriority
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _02208790
	mov r6, #0
	add r4, r5, #0
_022087A8:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov96_021EB5B8
	mov r1, #2
	bl Sprite_SetDrawPriority
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _022087A8
	mov r0, #1
	mov r2, #0
	add r1, sp, #4
_022087C6:
	cmp r2, r7
	bne _022087CC
	strb r2, [r1]
_022087CC:
	add r2, r2, #1
	cmp r2, #4
	blt _022087C6
	mov r2, #0
	add r4, sp, #4
	add r3, sp, #4
_022087D8:
	ldrb r1, [r3]
	cmp r1, r2
	beq _022087E8
	add r1, r0, #0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strb r2, [r4, r1]
_022087E8:
	add r2, r2, #1
	cmp r2, #4
	blt _022087D8
	mov r0, #3
	mov r6, #0
	str r0, [sp]
	add r4, sp, #4
	mov r7, #4
_022087F8:
	ldrb r1, [r4]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	ldr r1, [sp]
	bl ov96_021EB630
	ldrb r1, [r4]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	add r1, r7, #0
	bl ov96_021EB630
	ldrb r1, [r4]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	add r1, r6, #0
	ldr r0, [r0, #0x40]
	add r1, #0xb
	bl ov96_021EB630
	ldr r0, [sp]
	add r6, r6, #1
	add r0, r0, #2
	str r0, [sp]
	add r4, r4, #1
	add r7, r7, #2
	cmp r6, #4
	blt _022087F8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02208784

