	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E62AC
	.public ov96_021E634C
	.public ov96_021E637C
	.public ov96_021E6454
	.extern ov96_021E65D8
	.extern ov96_021E661C
	.extern ov96_021EA6E4
	.extern ov96_021EB5E8

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
	thumb_func_start ov96_021E62AC
ov96_021E62AC: ; 0x021E62AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, _021E6340 ; =0x00000728
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r2, [sp, #8]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	str r3, [sp, #0xc]
	strb r0, [r7, r1]
	ldr r0, [sp, #0x34]
	mov r4, #0
	cmp r0, #0
	bls _021E631E
_021E62D2:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	lsl r6, r4, #2
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x30]
	mov r3, #0
	add r5, r7, r6
	bl ov96_021EA6E4
	ldr r1, _021E6344 ; =0x0000071C
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x38]
	ldrh r1, [r1, r6]
	add r0, r0, r6
	lsl r1, r1, #0xc
	str r1, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldr r0, [sp, #4]
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, _021E6344 ; =0x0000071C
	add r1, sp, #0x10
	ldr r0, [r5, r0]
	bl Sprite_SetMatrix
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x34]
	cmp r4, r0
	blo _021E62D2
_021E631E:
	cmp r4, #3
	bhs _021E6336
	ldr r0, _021E6344 ; =0x0000071C
	mov r2, #0
_021E6326:
	lsl r1, r4, #2
	add r1, r7, r1
	str r2, [r1, r0]
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #3
	blo _021E6326
_021E6336:
	ldr r0, _021E6348 ; =0x00000729
	mov r1, #0
	strb r1, [r7, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6340: .word 0x00000728
_021E6344: .word 0x0000071C
_021E6348: .word 0x00000729
	thumb_func_end ov96_021E62AC

	thumb_func_start ov96_021E634C
ov96_021E634C: ; 0x021E634C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov96_021EB5E8
	add r3, r0, #0
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov96_021E62AC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021E634C

	thumb_func_start ov96_021E637C
ov96_021E637C: ; 0x021E637C
	push {r3, r4, r5, lr}
	ldr r1, _021E643C ; =0x00000729
	add r5, r0, #0
	ldrb r2, [r5, r1]
	mov r4, #0
	cmp r2, #0
	beq _021E6394
	cmp r2, #1
	beq _021E63AA
	cmp r2, #2
	beq _021E63C4
	b _021E6438
_021E6394:
	ldr r0, _021E6440 ; =0x0000089A
	bl PlaySE
	add r0, r5, #0
	bl ov96_021E65D8
	ldr r0, _021E643C ; =0x00000729
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021E6438
_021E63AA:
	bl ov96_021E661C
	cmp r0, #0
	beq _021E6438
	ldr r0, _021E643C ; =0x00000729
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #7
	add r1, r4, #0
	bl sub_020053A8
	b _021E6438
_021E63C4:
	sub r1, #0x1d
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _021E63E8
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _021E6448 ; =0x00000708
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	b _021E6412
_021E63E8:
	cmp r0, #0x15
	bne _021E63FE
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	b _021E6412
_021E63FE:
	cmp r0, #0x2a
	bne _021E6412
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #2
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
_021E6412:
	ldr r0, _021E644C ; =0x0000070C
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0x3f
	bls _021E6438
	ldr r0, _021E6450 ; =0x00000892
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _021E644C ; =0x0000070C
	mov r1, #0
	strb r1, [r5, r0]
	mov r4, #1
_021E6438:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E643C: .word 0x00000729
_021E6440: .word 0x0000089A
_021E6444: .word 0x0000089D
_021E6448: .word 0x00000708
_021E644C: .word 0x0000070C
_021E6450: .word 0x00000892
	thumb_func_end ov96_021E637C

	thumb_func_start ov96_021E6454
ov96_021E6454: ; 0x021E6454
	push {r3, r4, r5, lr}
	add r1, #0x1d
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r4, r0, #0
	cmp r4, #0
	bgt _021E6474
	ldr r0, _021E64AC ; =0x00000714
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, pc}
_021E6474:
	cmp r4, #3
	bgt _021E64A0
	ldr r0, _021E64B0 ; =0x0000072B
	ldrb r0, [r5, r0]
	cmp r0, r4
	beq _021E648A
	ldr r0, _021E64B4 ; =0x00000897
	bl PlaySE
	ldr r0, _021E64B0 ; =0x0000072B
	strb r4, [r5, r0]
_021E648A:
	ldr r0, _021E64AC ; =0x00000714
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _021E64AC ; =0x00000714
	add r1, r4, #1
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, pc}
_021E64A0:
	ldr r0, _021E64AC ; =0x00000714
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E64AC: .word 0x00000714
_021E64B0: .word 0x0000072B
_021E64B4: .word 0x00000897
	thumb_func_end ov96_021E6454

