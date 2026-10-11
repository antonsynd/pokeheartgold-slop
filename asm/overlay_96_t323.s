	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F3E60
	.public ov96_021F3EC0
	.public ov96_021F3F80
	.public ov96_021F424C
	.public ov96_021F4364
	.public ov96_021F4390
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern ov96_021E5F24
	.extern ov96_021EB2BC
	.extern ov96_021EB2F4
	.extern ov96_021EB334
	.extern ov96_021EB36C
	.extern ov96_021EB408
	.extern ov96_021EB4F4
	.extern ov96_021EB52C
	.extern ov96_021EB5B8
	.extern ov96_021F440C
	.extern ov96_021F459C
	.extern ov96_0221BFF4

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
	thumb_func_start ov96_021F3E60
ov96_021F3E60: ; 0x021F3E60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021F3EBC ; =ov96_0221BFF4
	add r4, sp, #8
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r6, #0
	mov r7, #2
_021F3E76:
	str r7, [sp]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #9
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #6
	bl ov96_021EB2F4
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB334
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB36C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _021F3E76
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3EBC: .word ov96_0221BFF4
	thumb_func_end ov96_021F3E60

	thumb_func_start ov96_021F3EC0
ov96_021F3EC0: ; 0x021F3EC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #4]
	ldr r0, _021F3F7C ; =ov96_0221BFF4
	str r1, [sp, #8]
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	add r5, sp, #0x1c
	add r4, sp, #0x14
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r6, #0
	mov r7, #3
_021F3EE2:
	ldr r0, [r4]
	add r1, r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [sp, #4]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl ov96_021EB408
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _021F3EE2
	mov r0, #0
	ldr r4, [sp, #8]
	str r0, [sp, #0xc]
	add r7, sp, #0x14
	add r6, sp, #0x1c
	mov r5, #0x40
_021F3F10:
	ldr r1, [r6]
	ldr r2, [r7]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov96_021EB5B8
	mov r1, #2
	str r0, [sp, #0x10]
	bl Sprite_SetDrawPriority
	mov r0, #0
	str r0, [sp, #0x2c]
	lsl r0, r5, #0xc
	str r0, [sp, #0x24]
	mov r0, #0x26
	lsl r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x24
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #1
	add r6, r6, #4
	add r4, r4, #4
	add r5, #0x80
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021F3F10
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov96_021F440C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3F7C: .word ov96_0221BFF4
	thumb_func_end ov96_021F3EC0

	thumb_func_start ov96_021F3F80
ov96_021F3F80: ; 0x021F3F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _021F4248 ; =ov96_0221BFF4
	add r4, r1, #0
	add r2, sp, #0x18
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	ldrb r6, [r3, #4]
	add r2, sp, #0x10
	add r5, r0, #0
	strb r6, [r2, #4]
	ldrb r6, [r3, #5]
	add r4, #0x68
	strb r6, [r2, #5]
	ldrb r6, [r3, #6]
	strb r6, [r2, #6]
	ldrb r6, [r3, #7]
	strb r6, [r2, #7]
	ldrb r6, [r3]
	strb r6, [r2]
	ldrb r6, [r3, #1]
	strb r6, [r2, #1]
	ldrb r6, [r3, #2]
	strb r6, [r2, #2]
	ldrb r3, [r3, #3]
	strb r3, [r2, #3]
	mov r2, #8
	str r2, [sp]
	mov r2, #2
	mov r3, #0x69
	bl ov96_021EB408
	mov r0, #9
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0x69
	bl ov96_021EB408
	mov r0, #0xa
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x69
	bl ov96_021EB408
	mov r6, #0
	mov r7, #0xb
_021F3FE8:
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0x69
	str r7, [sp]
	bl ov96_021EB408
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _021F3FE8
	mov r6, #0
	mov r7, #0xc
_021F4004:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x69
	str r7, [sp]
	bl ov96_021EB408
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F4004
	mov r6, #0
	mov r7, #0xd
_021F4020:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x69
	str r7, [sp]
	bl ov96_021EB408
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F4020
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #8
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r6, r0, #0
	mov r1, #4
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x18]
	mov r0, #0x22
	lsl r0, r0, #0x10
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #9
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r6, r0, #0
	mov r1, #3
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x26
	lsl r0, r0, #0xe
	str r0, [sp, #0x18]
	mov r0, #0x22
	lsl r0, r0, #0x10
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xb8
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0xa
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r6, r0, #0
	mov r1, #5
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	mov r1, #0xd
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #2
	lsl r0, r0, #0x14
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	mov r6, #0
_021F411C:
	lsl r7, r6, #2
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0xb
	bl ov96_021EB4F4
	add r1, r4, r7
	add r1, #0xbc
	str r0, [r1]
	add r0, r4, r7
	add r0, #0xbc
	ldr r0, [r0]
	bl ov96_021EB5B8
	str r0, [sp, #4]
	mov r1, #6
	bl Sprite_SetDrawPriority
	add r1, r6, #0
	ldr r0, [sp, #4]
	add r1, #0xb
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xa0
	mul r0, r6
	add r0, #0x30
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	mov r0, #0x86
	lsl r0, r0, #0xe
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, r7
	add r0, #0xbc
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _021F411C
	mov r6, #0
_021F417C:
	lsl r7, r6, #2
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0xc
	bl ov96_021EB4F4
	add r1, r4, r7
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, r7
	add r0, #0xc8
	ldr r0, [r0]
	bl ov96_021EB5B8
	str r0, [sp, #8]
	mov r1, #8
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #8]
	mov r1, #0xe
	bl Sprite_SetAnimCtrlSeq
	add r0, sp, #0x14
	ldrb r0, [r0, r6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, sp, #0x10
	ldrb r0, [r0, r6]
	lsl r1, r0, #0xc
	mov r0, #2
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, r7
	add r0, #0xc8
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F417C
	mov r6, #0
_021F41E0:
	lsl r7, r6, #2
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0xd
	bl ov96_021EB4F4
	add r1, r4, r7
	add r1, #0xd8
	str r0, [r1]
	add r0, r4, r7
	add r0, #0xd8
	ldr r0, [r0]
	bl ov96_021EB5B8
	str r0, [sp, #0xc]
	mov r1, #7
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #0xc]
	mov r1, #0x12
	bl Sprite_SetAnimCtrlSeq
	add r0, sp, #0x14
	ldrb r0, [r0, r6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, sp, #0x10
	ldrb r0, [r0, r6]
	lsl r1, r0, #0xc
	mov r0, #2
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, r7
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F41E0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021F4248: .word ov96_0221BFF4
	thumb_func_end ov96_021F3F80

	thumb_func_start ov96_021F424C
ov96_021F424C: ; 0x021F424C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r4, #0
	add r6, r5, #0
	add r6, #0xc
	add r7, r4, #0
_021F425A:
	lsl r0, r4, #4
	add r0, r6, r0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F425A
	ldr r0, [r5, #4]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	bl PokeathlonCourse_GetPlayerProfileFromData
	ldr r1, [r5]
	bl PlayerProfile_GetPlayerName_NewString
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F4360 ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov96_021EB5B8
	ldr r1, [sp, #0x10]
	add r1, #0xe
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #0x10]
	mov r4, #0
	add r1, r5, r0
	mov r0, #0x17
	lsl r0, r0, #4
	strb r4, [r1, r0]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0xc
	mov r6, #1
	str r0, [sp, #0x14]
_021F42D2:
	ldr r0, [sp, #0x10]
	cmp r4, r0
	beq _021F4332
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl PokeathlonCourse_GetPlayerProfileFromData
	ldr r1, [r5]
	bl PlayerProfile_GetPlayerName_NewString
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F4360 ; =0x000F0E00
	lsl r1, r6, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	add r0, r0, r1
	mov r1, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov96_021EB5B8
	add r1, r4, #0
	add r1, #0xe
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x17
	add r1, r5, r4
	lsl r0, r0, #4
	strb r6, [r1, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021F4332:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F42D2
	add r0, r5, #0
	mov r1, #1
	bl ov96_021F459C
	mov r4, #0
	add r5, #0xc
_021F4348:
	lsl r0, r4, #4
	add r0, r5, r0
	bl CopyWindowToVram
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F4348
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4360: .word 0x000F0E00
	thumb_func_end ov96_021F424C

	thumb_func_start ov96_021F4364
ov96_021F4364: ; 0x021F4364
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x64]
	add r4, r1, #0
	cmp r2, r4
	beq _021F438E
	str r4, [r5, #0x64]
	bl ov96_021F459C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov96_021EB5B8
	add r1, r4, #0
	bl Sprite_SetAnimCtrlSeq
	add r5, #0x4c
	add r0, r5, #0
	bl CopyWindowToVram
_021F438E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021F4364

	thumb_func_start ov96_021F4390
ov96_021F4390: ; 0x021F4390
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	cmp r2, #4
	bhi _021F43C0
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F43A6: ; jump table
	.short _021F43C0 - _021F43A6 - 2 ; case 0
	.short _021F43B0 - _021F43A6 - 2 ; case 1
	.short _021F43B4 - _021F43A6 - 2 ; case 2
	.short _021F43B8 - _021F43A6 - 2 ; case 3
	.short _021F43BC - _021F43A6 - 2 ; case 4
_021F43B0:
	mov r5, #0x12
	b _021F43C6
_021F43B4:
	mov r5, #0x13
	b _021F43C6
_021F43B8:
	mov r5, #0x14
	b _021F43C6
_021F43BC:
	mov r5, #0x15
	b _021F43C6
_021F43C0:
	bl GF_AssertFail
	mov r5, #0x12
_021F43C6:
	mov r0, #5
	lsl r0, r0, #6
	add r4, r6, r0
	add r1, r6, r7
	add r0, #0x30
	ldrb r0, [r1, r0]
	mov r1, #1
	add r2, r1, #0
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	bl ov96_021EB52C
	ldr r0, [r4, r6]
	bl ov96_021EB5B8
	add r1, r5, #0
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F4390

