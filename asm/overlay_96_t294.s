	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F0F04
	.public ov96_021F107C
	.public ov96_021F1170
	.public ov96_021F1614
	.public ov96_021F1CC0
	.public ov96_021F208C
	.public ov96_021F20C4
	.public ov96_021F218C
	.public ov96_021F21EC
	.public ov96_021F22FC
	.public ov96_021F234C
	.public ov96_021F2780
	.public ov96_021F27A8
	.public ov96_021F27B8
	.public ov96_021F2814
	.public ov96_021F2834
	.public ov96_021F295C
	.public ov96_021F2984
	.public ov96_021F2A00
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantCount
	.extern _0221DCA0
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E60D8
	.extern ov96_021E6104
	.extern ov96_021E658C
	.extern ov96_021E65A4
	.extern ov96_021E8228
	.extern ov96_021E8318
	.extern ov96_021E872C
	.extern ov96_021E8A20
	.extern ov96_021E8BAC
	.extern ov96_021EAA04
	.extern ov96_021EAA20
	.extern ov96_021EAB38
	.extern ov96_021EAB74
	.extern ov96_021EABE0
	.extern ov96_021EAC0C
	.extern ov96_021EAED4
	.extern ov96_021EAF60
	.extern ov96_021EAF78
	.extern ov96_021EB01C
	.extern ov96_021EB06C
	.extern ov96_021EB0A4
	.extern ov96_021EB144
	.extern ov96_021EB52C
	.extern ov96_021EB5B8
	.extern ov96_021EB63C
	.extern ov96_021F2A84
	.extern ov96_021F2AA4
	.extern ov96_021F2B68
	.extern ov96_021F2D98
	.extern ov96_021F2E2C
	.extern ov96_021F2E80
	.extern ov96_021F2EFC
	.extern ov96_021F2F7C
	.extern ov96_021F2FEC
	.extern ov96_021F30F8
	.extern ov96_021F3180
	.extern ov96_021F32C4
	.extern ov96_021F342C
	.extern ov96_021F4364
	.extern ov96_021F4390
	.extern ov96_021F45F4
	.extern ov96_021F4688
	.extern ov96_021F46B4
	.extern ov96_0221BC64
	.extern ov96_0221BC8C
	.extern ov96_0221BC9C
	.extern ov96_0221BCB4
	.extern ov96_0221BDD4

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
	thumb_func_start ov96_021F0F04
ov96_021F0F04: ; 0x021F0F04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	str r0, [sp, #4]
	add r4, r0, #0
	ldr r0, [sp]
	add r5, r1, #0
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
_021F0F1E:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r6, #0
	mul r2, r0
	ldr r0, [sp, #0x10]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r1, [r6, #0x28]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, [r6, #0x2c]
	asr r2, r0, #0xc
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r3, r0, #0xc
	cmp r2, #0
	bge _021F0F5E
	mov r2, #0
	b _021F0F64
_021F0F5E:
	cmp r2, #0xff
	ble _021F0F64
	mov r2, #0xff
_021F0F64:
	cmp r3, #0
	bge _021F0F6C
	mov r3, #0
	b _021F0F72
_021F0F6C:
	cmp r3, #0xff
	ble _021F0F72
	mov r3, #0xff
_021F0F72:
	ldr r0, [r6, #0x18]
	add r7, r5, r4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r6, #0
	add r0, #0x40
	ldrb r0, [r0]
	add r6, #0x44
	strb r2, [r5, r4]
	lsl r2, r4, #1
	sub r0, r0, #1
	strb r3, [r7, #0xc]
	add r3, r0, #0
	lsl r3, r2
	ldr r0, [sp, #0xc]
	lsl r1, r2
	add r0, r0, r3
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #8]
	ldrb r0, [r6]
	add r1, r0, #0
	lsl r1, r4
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F0F1E
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	str r0, [r5, #0x18]
	ldr r0, _021F1078 ; =0x00000726
	mov r7, #0
	ldrb r1, [r1, r0]
	add r3, r0, #0
	add r3, #0xc
	lsl r2, r1, #0x18
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	str r1, [r5, #0x18]
	ldr r1, [sp, #8]
	ldr r2, [sp]
	add r1, r7, r1
	str r1, [r5, #0x1c]
	ldrh r2, [r2, r3]
	add r3, r0, #0
	add r3, #0x25
	lsl r2, r2, #0x18
	add r1, r1, r2
	ldr r2, [sp]
	str r1, [r5, #0x1c]
	ldrb r2, [r2, r3]
	lsl r2, r2, #0x1c
	add r1, r1, r2
	str r1, [r5, #0x1c]
	ldr r1, [sp]
	sub r2, r0, #2
	ldrb r2, [r1, r2]
	lsl r3, r2, #2
	add r3, r1, r3
	add r1, r0, #0
	sub r1, #0x46
	ldr r1, [r3, r1]
	add r3, r2, #1
	lsr r6, r3, #0x1f
	lsl r4, r3, #0x1e
	sub r4, r4, r6
	mov r3, #0x1e
	ror r4, r3
	add r6, r6, r4
	ldr r3, [sp]
	sub r4, r0, #2
	strb r6, [r3, r4]
	ldr r3, [sp, #4]
	add r4, r0, #3
	add r6, r7, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	add r4, r0, #0
	add r4, #0x22
	lsl r3, r3, #0xc
	add r6, r6, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	add r4, r0, #0
	lsl r1, r1, #0x18
	lsl r3, r3, #0xd
	add r6, r6, r3
	lsr r1, r1, #0x18
	ldr r3, [sp]
	str r6, [r5, #0x20]
	add r4, #0x24
	ldrb r3, [r3, r4]
	add r4, r0, #0
	add r4, #0x26
	lsl r3, r3, #0xe
	add r6, r6, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	lsl r1, r1, #0x12
	lsl r3, r3, #0xf
	add r3, r6, r3
	add r3, r3, r1
	lsl r1, r2, #0x1a
	add r1, r3, r1
	ldr r2, [sp]
	str r1, [r5, #0x20]
	add r3, r0, #1
	ldrb r2, [r2, r3]
	mov r3, #0xc
	lsl r2, r2, #0x1c
	add r1, r1, r2
	str r1, [r5, #0x20]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x22
	strb r7, [r1, r2]
	add r2, r0, #0
	add r2, #0x25
	strb r3, [r1, r2]
	add r0, #0x26
	strb r7, [r1, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1078: .word 0x00000726
	thumb_func_end ov96_021F0F04

	thumb_func_start ov96_021F107C
ov96_021F107C: ; 0x021F107C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r7, r0, #0
	bl ov96_021E8A20
	add r6, r0, #0
	mov r0, #0
	add r7, #0xf0
	str r0, [r6]
	add r0, r7, #0
	bl ov96_021E8A20
	ldr r0, [r0, #0x20]
	mov r1, #1
	asr r0, r0, #0xc
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021F10E2
	ldr r0, [r4, #0x18]
	bl ov96_021EB63C
	ldr r0, _021F115C ; =0x0000076C
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov96_021EB144
	add r0, r5, #0
	bl ov96_021E65A4
	ldr r0, _021F1160 ; =0x00000774
	ldr r0, [r4, r0]
	bl ov96_021F46B4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_021E8318
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021F2EFC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F10E2:
	ldr r0, _021F1164 ; =0x0000072A
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _021F111A
	sub r0, r0, #3
	ldrb r0, [r4, r0]
	cmp r0, #1
	bhs _021F10F6
	mov r1, #0
	b _021F1104
_021F10F6:
	cmp r0, #3
	blo _021F1104
	cmp r0, #4
	bhs _021F1102
	mov r1, #2
	b _021F1104
_021F1102:
	mov r1, #3
_021F1104:
	ldr r0, _021F1168 ; =0x00000732
	ldrh r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov96_021F30F8
	ldr r1, _021F1168 ; =0x00000732
	strh r0, [r4, r1]
	mov r0, #0
	sub r1, #8
	strb r0, [r4, r1]
_021F111A:
	bl System_GetTouchNew
	cmp r0, #0
	beq _021F113C
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_021F113C:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _021F1152
	ldr r0, _021F116C ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	strb r1, [r6, #4]
	ldrh r0, [r0, #0x22]
	strb r0, [r6, #5]
	mov r0, #1
	str r0, [r6]
_021F1152:
	add r0, r5, #0
	bl ov96_021F1614
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F115C: .word 0x0000076C
_021F1160: .word 0x00000774
_021F1164: .word 0x0000072A
_021F1168: .word 0x00000732
_021F116C: .word gSystem + 0x40
	thumb_func_end ov96_021F107C

	thumb_func_start ov96_021F1170
ov96_021F1170: ; 0x021F1170
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #4]
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov96_021E5F24
	cmp r0, #0
	beq _021F1190
	b _021F160A
_021F1190:
	ldr r0, [sp, #0x14]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0x1c]
	ldr r0, _021F146C ; =0x000007EC
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021F11EA
	ldr r0, [sp, #4]
	mov r6, #0
	bl PokeathlonCourse_GetParticipantCount
	add r7, r6, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _021F11D2
	ldr r5, [sp, #0x14]
	add r5, #0x50
_021F11B6:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021F11C8
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021F11C8:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r5, #0x28
	cmp r7, r0
	blt _021F11B6
_021F11D2:
	ldr r0, [sp, #0x10]
	cmp r6, r0
	bne _021F1216
	ldr r1, _021F1470 ; =0x00000726
	mov r2, #0
	add r0, r1, #0
	strb r2, [r4, r1]
	add r0, #0x24
	strb r2, [r4, r0]
	add r1, #0xc6
	str r2, [r4, r1]
	b _021F13DC
_021F11EA:
	add r1, r0, #0
	sub r1, #0xc4
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _021F122E
	add r1, r0, #0
	sub r1, #0xc4
	ldrb r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #0
	sub r1, #0xc4
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0xc4
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021F1212
	mov r1, #1
	str r1, [r4, r0]
	b _021F13DC
_021F1212:
	cmp r1, #0x3c
	beq _021F1218
_021F1216:
	b _021F13DC
_021F1218:
	add r1, r0, #0
	mov r2, #1
	sub r1, #0xc2
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0xc5
	ldrb r1, [r4, r1]
	sub r0, #0xc5
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021F13DC
_021F122E:
	add r1, r0, #0
	sub r1, #0xa2
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _021F1310
	add r1, r0, #0
	mov r2, #0x2c
	sub r1, #0xc6
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0xa3
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021F1302
	add r1, r0, #0
	sub r1, #0x9f
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021F12F4
	add r1, r0, #0
	sub r1, #0x9d
	ldrb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0x9e
	ldrb r1, [r4, r1]
	cmp r2, r1
	blo _021F1272
	add r0, r4, #0
	bl ov96_021F2A00
	ldr r0, _021F1474 ; =0x00000728
	mov r1, #0x5a
	strb r1, [r4, r0]
	b _021F13DC
_021F1272:
	add r1, r0, #0
	add r2, r4, r2
	sub r1, #0x9c
	ldrb r2, [r2, r1]
	add r1, r0, #0
	sub r1, #0xa1
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0x9d
	ldrb r1, [r4, r1]
	sub r0, #0x90
	add r1, r4, r1
	ldrb r0, [r1, r0]
	bl ov96_021F32C4
	ldr r1, _021F1478 ; =0x0000074C
	strb r0, [r4, r1]
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	mov r1, #3
	bl _s32_div_f
	mov r1, #0x6e
	lsl r0, r0, #0x18
	lsl r1, r1, #4
	lsr r7, r0, #0x18
	add r0, r1, #0
	add r0, #0x6f
	ldrb r0, [r4, r0]
	add r6, r4, r1
	lsl r5, r7, #2
	add r2, r4, r0
	add r0, r1, #0
	add r0, #0x7c
	ldrb r0, [r2, r0]
	ldr r3, [r6, r5]
	add r0, r3, r0
	str r0, [r6, r5]
	add r0, r1, #0
	add r0, #0x6f
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	add r0, #0x6f
	strb r2, [r4, r0]
	add r0, r1, #0
	mov r2, #6
	add r0, #0x6d
	add r1, #0x6b
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #3
	bl ov96_021E8228
	b _021F13DC
_021F12F4:
	add r1, r0, #0
	sub r1, #0x9f
	ldrb r1, [r4, r1]
	sub r0, #0x9f
	sub r1, r1, #1
	strb r1, [r4, r0]
	b _021F13DC
_021F1302:
	add r1, r0, #0
	sub r1, #0xa3
	ldrb r1, [r4, r1]
	sub r0, #0xa3
	sub r1, r1, #1
	strb r1, [r4, r0]
	b _021F13DC
_021F1310:
	sub r0, #0xc5
	ldrb r0, [r4, r0]
	cmp r0, #1
	bhs _021F131C
	mov r2, #8
	b _021F1326
_021F131C:
	cmp r0, #3
	bhs _021F1324
	mov r2, #6
	b _021F1326
_021F1324:
	mov r2, #4
_021F1326:
	ldr r0, _021F147C ; =0x00000725
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, r2
	blt _021F13DC
	mov r1, #0
	strb r1, [r4, r0]
	add r2, r0, #1
	ldrb r2, [r4, r2]
	add r3, r2, #1
	add r2, r0, #1
	strb r3, [r4, r2]
	ldrb r2, [r4, r2]
	cmp r2, #0x2b
	blo _021F13DC
	mov r3, #1
	add r2, r0, #6
	strb r3, [r4, r2]
	add r2, r0, #0
	add r2, #0x23
	strb r3, [r4, r2]
	add r2, r0, #0
	add r2, #0x25
	strb r3, [r4, r2]
	mov r2, #0x14
	add r0, #0x24
	strb r2, [r4, r0]
	mov r0, #0x72
	mov r3, #0xc
	lsl r0, r0, #4
_021F1366:
	add r2, r4, r1
	add r1, r1, #1
	strb r3, [r2, r0]
	cmp r1, #4
	blt _021F1366
	add r0, r4, #0
	mov r5, #0
	str r0, [sp, #0x20]
	add r0, #0x20
	str r0, [sp, #0x20]
	add r7, r5, #0
_021F137C:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r6, #0
	mul r2, r0
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	add r3, r6, #0
	add r3, #0x28
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	str r7, [r6, #0x34]
	add r0, r6, #0
	str r7, [r6, #0x38]
	add r0, #0x8c
	ldrh r1, [r0]
	add r0, r6, #0
	add r0, #0x8e
	strh r1, [r0]
	add r0, r6, #0
	add r0, #0x44
	strb r7, [r0]
	add r0, r6, #0
	add r0, #0x45
	strb r7, [r0]
	add r0, r6, #0
	add r0, #0x46
	add r6, #0x47
	strb r7, [r0]
	strb r7, [r6]
	cmp r5, #0xc
	blt _021F137C
_021F13DC:
	ldr r0, _021F1480 ; =0x00000727
	ldrb r1, [r4, r0]
	cmp r1, #6
	blo _021F13E8
	mov r1, #1
	b _021F13EA
_021F13E8:
	mov r1, #0
_021F13EA:
	add r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, [sp, #0x14]
	add r0, #0x50
	bl ov96_021E8A20
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_021F1402:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _021F1402
	ldr r0, [r3]
	str r0, [r5]
	ldr r0, _021F1484 ; =0x0000074A
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021F1418
	b _021F15F0
_021F1418:
	ldr r0, [sp, #0x14]
	add r7, r4, #0
	add r0, #0x50
	mov r6, #0
	str r0, [sp, #0x14]
	add r5, r4, #0
	add r7, #0x20
_021F1426:
	ldr r0, [sp, #0x14]
	bl ov96_021E8A20
	str r0, [sp, #0x18]
	ldr r0, [r0]
	cmp r0, #0
	beq _021F148C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021F1450
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F1450
	mov r0, #0x6f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021F1498
_021F1450:
	cmp r1, #0
	bne _021F1498
	ldr r0, _021F1488 ; =0x000006F4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021F1498
	mov r0, #0x6f
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	b _021F1498
	nop
_021F146C: .word 0x000007EC
_021F1470: .word 0x00000726
_021F1474: .word 0x00000728
_021F1478: .word 0x0000074C
_021F147C: .word 0x00000725
_021F1480: .word 0x00000727
_021F1484: .word 0x0000074A
_021F1488: .word 0x000006F4
_021F148C:
	mov r0, #0x6f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
_021F1498:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F14EE
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021F2A84
	cmp r0, #0
	bne _021F157E
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x18]
	ldrb r2, [r2, #4]
	lsl r1, r6, #0x18
	ldrb r3, [r3, #5]
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_021F20C4
	str r0, [sp, #0x24]
	cmp r0, #0xc
	beq _021F157E
	mov r1, #3
	bl _s32_div_f
	add r3, r1, #0
	mov r0, #0x90
	mul r3, r0
	mov r0, #0x72
	ldr r1, [sp, #0x24]
	add r2, r4, r6
	lsl r0, r0, #4
	strb r1, [r2, r0]
	add r1, r7, r3
	add r1, #0x46
	mov r0, #2
	strb r0, [r1]
	add r1, r7, r3
	add r1, #0x47
	mov r0, #3
	strb r0, [r1]
	b _021F157E
_021F14EE:
	ldr r0, _021F1610 ; =0x000006F4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F156A
	mov r0, #0x72
	add r1, r4, r6
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	str r1, [sp, #0xc]
	cmp r0, #0xc
	beq _021F157E
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x90
	mul r0, r1
	str r0, [sp, #0x28]
	add r0, r7, r0
	str r0, [sp, #8]
	add r0, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #8]
	ldrb r0, [r0, #4]
	ldrb r1, [r1, #5]
	add r2, #0x28
	mov r3, #0
	bl ov96_021F208C
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	ldr r2, [sp, #8]
	ldr r0, [r7, r0]
	ldr r1, [r1, #0x1c]
	ldr r2, [r2, #0x20]
	bl ov96_021F2F7C
	cmp r0, #0
	beq _021F1556
	mov r0, #0x72
	ldr r1, [sp, #0xc]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	mov r1, #1
	add r2, r4, r0
	mov r0, #0x7e
	lsl r0, r0, #4
	strb r1, [r2, r0]
	b _021F157E
_021F1556:
	mov r0, #0x72
	ldr r1, [sp, #0xc]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	mov r1, #0
	add r2, r4, r0
	mov r0, #0x7e
	lsl r0, r0, #4
	strb r1, [r2, r0]
	b _021F157E
_021F156A:
	mov r1, #0x72
	add r0, r4, r6
	lsl r1, r1, #4
	ldrb r1, [r0, r1]
	cmp r1, #0xc
	beq _021F157E
	mov r1, #0x72
	mov r2, #0xc
	lsl r1, r1, #4
	strb r2, [r0, r1]
_021F157E:
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r0, #0x28
	str r0, [sp, #0x14]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r5, #0xc
	add r7, r7, r0
	cmp r6, #4
	bge _021F1594
	b _021F1426
_021F1594:
	mov r1, #0x77
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x3e
	ldrh r1, [r4, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021F342C
	add r6, r0, #0
	cmp r6, #0xc
	beq _021F15F0
	mov r1, #3
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #4]
	bl PokeathlonCourse_GetParticipantCount
	cmp r5, r0
	blo _021F15EC
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	add r2, r4, #0
	lsl r0, r0, #4
	add r2, #0x20
	mul r0, r5
	add r0, r2, r0
	mov r2, #0x90
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	add r0, r0, r3
	mov r2, #2
	add r1, #0x46
	strb r2, [r1]
	mov r1, #3
	add r0, #0x47
	strb r1, [r0]
	b _021F15F0
_021F15EC:
	bl GF_AssertFail
_021F15F0:
	ldr r0, [sp, #4]
	bl ov96_021F1CC0
	add r0, r4, #0
	bl ov96_021F21EC
	add r0, r4, #0
	bl ov96_021F2834
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov96_021F0F04
_021F160A:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021F1610: .word 0x000006F4
	thumb_func_end ov96_021F1170

	thumb_func_start ov96_021F1614
ov96_021F1614: ; 0x021F1614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x138
	str r0, [sp, #0xc]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0xc]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x4c]
	mov r1, #0xf
	ldr r2, [r0, #0x1c]
	asr r0, r2, #0x1c
	and r0, r1
	str r0, [sp, #0x64]
	asr r0, r2, #0x18
	add r5, r0, #0
	ldr r0, [sp, #0x4c]
	and r5, r1
	ldr r0, [r0, #0x18]
	asr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x4c]
	ldr r2, [r0, #0x20]
	mov r0, #1
	asr r3, r2, #0xd
	and r3, r0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	str r3, [sp, #0x60]
	asr r3, r2, #0xe
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x5c]
	asr r3, r2, #0xf
	mov r0, #7
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	asr r3, r2, #0x1a
	mov r0, #3
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x58]
	asr r0, r2, #0x12
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	asr r0, r2, #0x1c
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _021F16B4
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_GetDataCopyArea
	bl ov96_021E8A20
	mov r1, #0
	strb r1, [r0, #8]
_021F16B4:
	mov r0, #0x73
	lsl r0, r0, #4
	ldrh r1, [r6, r0]
	lsl r2, r5, #0x18
	lsr r7, r2, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r7
	beq _021F16E4
	mov r5, #0
	strh r7, [r6, r0]
	add r3, r5, #0
	add r0, #0xc
_021F16CE:
	add r2, r6, r5
	add r5, r5, #1
	strb r3, [r2, r0]
	cmp r5, #0xc
	blt _021F16CE
	ldr r0, _021F19E8 ; =0x000007AC
	ldr r3, [sp, #0xc]
	add r0, r6, r0
	add r2, r7, #0
	bl ov96_021F2B68
_021F16E4:
	cmp r4, #0
	bne _021F170A
	ldr r0, _021F19EC ; =0x00000738
	mov r1, #1
	ldr r3, [r6, r0]
	ldr r0, [r6]
	add r2, r3, #0
	ldr r3, [r3, #8]
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r6]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _021F19F0 ; =0x000007A8
	mov r1, #0
	str r1, [r6, r0]
	b _021F1796
_021F170A:
	cmp r4, #0x2b
	bhs _021F1766
	ldr r0, _021F19F0 ; =0x000007A8
	ldr r1, [r6, r0]
	cmp r1, #0
	bne _021F175C
	ldr r1, [sp, #0x50]
	cmp r1, #1
	bhi _021F172E
	cmp r4, #0x20
	blo _021F172E
	sub r0, #0xd1
	bl PlaySE
	ldr r0, _021F19F0 ; =0x000007A8
	mov r1, #1
	str r1, [r6, r0]
	b _021F175C
_021F172E:
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bls _021F1746
	cmp r4, #0x1c
	blo _021F1746
	ldr r0, _021F19F4 ; =0x000006D7
	bl PlaySE
	ldr r0, _021F19F0 ; =0x000007A8
	mov r1, #1
	str r1, [r6, r0]
	b _021F175C
_021F1746:
	ldr r0, [sp, #0x50]
	cmp r0, #3
	bls _021F175C
	cmp r4, #0x15
	blo _021F175C
	ldr r0, _021F19F4 ; =0x000006D7
	bl PlaySE
	ldr r0, _021F19F0 ; =0x000007A8
	mov r1, #1
	str r1, [r6, r0]
_021F175C:
	ldr r1, [r6]
	add r0, r4, #0
	bl ov96_021F295C
	b _021F1796
_021F1766:
	ldr r3, _021F19F8 ; =ov96_0221BC8C
	add r2, sp, #0x11c
	mov r1, #8
_021F176C:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _021F176C
	mov r1, #2
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	mov r1, #1
	add r2, sp, #0x11c
	mov r3, #0xe
	bl LoadRectToBgTilemapRect
	ldr r1, [r6]
	mov r0, #0x2a
	bl ov96_021F295C
_021F1796:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _021F17A2
	ldr r0, _021F19FC ; =0x000008CF
	bl PlaySE
_021F17A2:
	ldr r0, _021F1A00 ; =0x00000774
	ldr r1, [sp, #0x50]
	ldr r0, [r6, r0]
	bl ov96_021F4364
	add r0, sp, #0x12c
	ldr r3, _021F1A04 ; =ov96_0221BC9C
	str r0, [sp, #0x30]
	add r2, sp, #0xa4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021F1A08 ; =ov96_0221BCB4
	mov r5, #0
	add r2, sp, #0x8c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #0
	str r0, [sp, #0x68]
	add r0, #0x20
	str r5, [sp, #0x34]
	add r7, r6, #0
	str r0, [sp, #0x68]
_021F17DE:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x14]
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [sp, #0x24]
	mul r1, r0
	ldr r0, [sp, #0x68]
	ldr r2, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0x90
	mul r1, r2
	add r4, r0, r1
	ldr r0, [r0, r1]
	bl ov96_021EAA20
	bl ov96_021E8BAC
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	ldr r1, [r0, #0x1c]
	ldr r0, [sp, #0x34]
	asr r1, r0
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x4c]
	ldr r0, [r0, #0x20]
	add r1, r0, #0
	asr r1, r5
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _021F183C
	b _021F194A
_021F183C:
	mov r0, #0
	str r0, [sp, #0x38]
	ldr r0, _021F1A0C ; =0x00000778
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _021F1850
	ldr r0, _021F1A0C ; =0x00000778
	mov r1, #1
	strh r1, [r7, r0]
	b _021F191A
_021F1850:
	cmp r0, #1
	bne _021F1912
	add r2, sp, #0xa4
	add r3, sp, #0xf8
	mov ip, r3
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	add r2, sp, #0x8c
	add r3, sp, #0xe0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _021F1A10 ; =0x0000077A
	mov r2, ip
	ldrh r1, [r7, r1]
	ldr r0, _021F1A14 ; =0x45800000
	lsr r1, r1, #1
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x110]
	ldr r1, _021F1A10 ; =0x0000077A
	ldr r0, _021F1A14 ; =0x45800000
	ldrh r1, [r7, r1]
	lsr r1, r1, #1
	lsl r2, r1, #2
	add r1, sp, #0xf8
	ldr r1, [r1, r2]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x114]
	ldr r1, _021F1A10 ; =0x0000077A
	ldr r0, _021F1A14 ; =0x45800000
	ldrh r1, [r7, r1]
	lsr r1, r1, #1
	lsl r2, r1, #2
	add r1, sp, #0xf8
	ldr r1, [r1, r2]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x118]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x4c]
	add r2, r0, r5
	add r0, sp, #0x84
	str r0, [sp]
	ldrb r1, [r1, r5]
	ldrb r2, [r2, #0xc]
	ldr r0, [r4]
	add r3, sp, #0x88
	bl ov96_021EB06C
	ldr r0, [sp, #0x84]
	cmp r0, #0xb0
	blt _021F18E8
	ldr r0, _021F1A10 ; =0x0000077A
	ldrh r0, [r7, r0]
	lsr r0, r0, #1
	lsl r1, r0, #2
	add r0, sp, #0xe0
	ldr r0, [r0, r1]
	str r0, [sp, #0x38]
_021F18E8:
	ldr r0, _021F1A10 ; =0x0000077A
	ldrh r0, [r7, r0]
	add r1, r0, #1
	ldr r0, _021F1A10 ; =0x0000077A
	strh r1, [r7, r0]
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EABE0
	ldr r0, [sp, #0x3c]
	add r1, sp, #0x110
	bl Sprite_SetAffineScale
	ldr r0, _021F1A10 ; =0x0000077A
	ldrh r0, [r7, r0]
	cmp r0, #0xc
	blo _021F191A
	ldr r0, _021F1A0C ; =0x00000778
	mov r1, #2
	strh r1, [r7, r0]
	b _021F191A
_021F1912:
	ldr r0, [r4]
	mov r1, #0
	bl ov96_021EAB38
_021F191A:
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #0
	bl ov96_021EAB74
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x4c]
	add r2, r0, r5
	ldrb r3, [r2, #0xc]
	ldr r2, [sp, #0x38]
	ldrb r1, [r1, r5]
	add r2, r2, r3
	ldr r0, [r4]
	mov r3, #1
	bl ov96_021EB01C
	ldr r0, [sp, #0x30]
	mov r1, #1
	strb r1, [r0]
	b _021F1C52
_021F194A:
	ldr r0, _021F1A0C ; =0x00000778
	mov r1, #0
	strh r1, [r7, r0]
	add r0, r0, #2
	strh r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xd4]
	str r0, [sp, #0xd8]
	str r0, [sp, #0xdc]
	ldr r0, [r4]
	bl ov96_021EABE0
	ldr r0, [sp, #0x40]
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _021F1992
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bne _021F199A
	mov r0, #0x89
	lsl r0, r0, #4
	bl IsSEPlaying
	cmp r0, #0
	bne _021F199A
	mov r0, #0x89
	lsl r0, r0, #4
	bl PlaySE
	b _021F199A
_021F1992:
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_021F199A:
	ldr r0, [sp, #0x3c]
	add r1, sp, #0xd4
	bl Sprite_SetAffineScale
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EAB38
	ldr r0, [sp, #0x44]
	cmp r0, #2
	bne _021F19D4
	ldr r1, _021F1A18 ; =0x0000073C
	add r0, r6, r5
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021F19D4
	ldr r1, _021F1A18 ; =0x0000073C
	mov r2, #1
	strb r2, [r0, r1]
	add r0, r1, #0
	add r0, #0x30
	lsl r1, r5, #0x18
	add r3, r4, #0
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	add r3, #0x68
	bl ov96_021EAF60
	b _021F1A34
_021F19D4:
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne _021F1A34
	ldr r1, _021F1A18 ; =0x0000073C
	add r0, r6, r5
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _021F1A34
	ldr r1, _021F1A18 ; =0x0000073C
	b _021F1A1C
	.balign 4, 0
_021F19E8: .word 0x000007AC
_021F19EC: .word 0x00000738
_021F19F0: .word 0x000007A8
_021F19F4: .word 0x000006D7
_021F19F8: .word ov96_0221BC8C
_021F19FC: .word 0x000008CF
_021F1A00: .word 0x00000774
_021F1A04: .word ov96_0221BC9C
_021F1A08: .word ov96_0221BCB4
_021F1A0C: .word 0x00000778
_021F1A10: .word 0x0000077A
_021F1A14: .word 0x45800000
_021F1A18: .word 0x0000073C
_021F1A1C:
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r1, #0
	add r0, #0x30
	lsl r1, r5, #0x18
	add r3, r4, #0
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	mov r2, #1
	add r3, #0x48
	bl ov96_021EAF60
_021F1A34:
	ldr r0, [sp, #0x30]
	mov r1, #0
	strb r1, [r0]
	ldr r0, [sp, #0x4c]
	add r1, r0, r5
	ldrb r0, [r0, r5]
	str r0, [sp, #0x18]
	ldrb r0, [r1, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	ldr r1, [r0, #0x18]
	ldr r0, [sp, #0x34]
	asr r1, r0
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x18]
	mov r1, #0
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	add r0, sp, #0xc8
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0xc8]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xcc]
	ldr r0, [r4, #4]
	bl ov96_021EB5B8
	add r1, sp, #0xc8
	bl Sprite_SetMatrix
	mov r1, #0
	add r0, sp, #0xbc
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #0xc]
	mov r1, #3
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xc0]
	add r0, r5, #0
	bl _s32_div_f
	str r1, [sp, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl ov96_021E60C0
	ldrb r0, [r0, #7]
	cmp r0, #1
	beq _021F1AC0
	cmp r0, #2
	beq _021F1ACC
	cmp r0, #3
	beq _021F1AD8
	b _021F1AE4
_021F1AC0:
	mov r0, #2
	ldr r1, [sp, #0xc0]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0xc0]
	b _021F1AE8
_021F1ACC:
	mov r0, #2
	ldr r1, [sp, #0xc0]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0xc0]
	b _021F1AE8
_021F1AD8:
	mov r0, #1
	ldr r1, [sp, #0xc0]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0xc0]
	b _021F1AE8
_021F1AE4:
	bl GF_AssertFail
_021F1AE8:
	ldr r0, [r4, #8]
	bl ov96_021EB5B8
	add r1, sp, #0xbc
	bl Sprite_SetMatrix
	ldr r0, _021F1CA4 ; =0x0000076C
	lsl r1, r5, #0x18
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x6c]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x20]
	bl ov96_021EAC0C
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	mov r3, #1
	bl ov96_021EB01C
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bne _021F1B48
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	bl ov96_021E60D8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021F1B48
	mov r0, #0
	mov r2, #0x7d
	str r0, [sp]
	lsl r2, r2, #4
	ldrsh r2, [r6, r2]
	ldr r0, [sp, #0x6c]
	ldr r3, [sp, #0x20]
	mov r1, #0
	bl ov96_021EAED4
_021F1B48:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _021F1B80
	ldr r0, _021F1CA4 ; =0x0000076C
	lsl r1, r5, #0x18
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	lsl r3, r5, #0x18
	ldr r0, _021F1CA8 ; =0x000007AF
	mov r1, #1
	strb r1, [r6, r0]
	ldr r0, [sp, #0x20]
	ldr r1, _021F1CAC ; =0x000007AC
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x70]
	add r1, r6, r1
	lsr r3, r3, #0x18
	bl ov96_021F2E80
	b _021F1B88
_021F1B80:
	ldr r0, [sp, #0x3c]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
_021F1B88:
	ldr r0, [sp, #0x64]
	cmp r0, r5
	bne _021F1BF6
	ldr r0, [sp, #0x28]
	cmp r0, #1
	blo _021F1BF2
	cmp r0, #4
	bhi _021F1BF2
	ldr r0, [r4, #4]
	bl ov96_021EB5B8
	str r0, [sp, #0x74]
	mov r1, #1
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x74]
	add r1, r1, #2
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #0x28]
	cmp r0, #2
	bhi _021F1BC2
	ldr r0, _021F1CB0 ; =0x0000088D
	bl PlaySE
	b _021F1BD4
_021F1BC2:
	cmp r0, #3
	bne _021F1BCE
	ldr r0, _021F1CB4 ; =0x0000088E
	bl PlaySE
	b _021F1BD4
_021F1BCE:
	ldr r0, _021F1CB8 ; =0x0000088F
	bl PlaySE
_021F1BD4:
	ldr r0, _021F1CBC ; =0x00000774
	ldr r1, [sp, #0x24]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x18
	ldr r2, [sp, #0x28]
	lsr r1, r1, #0x18
	bl ov96_021F4390
	ldr r0, _021F1CAC ; =0x000007AC
	lsl r1, r5, #0x18
	add r0, r6, r0
	lsr r1, r1, #0x18
	bl ov96_021F2E2C
	b _021F1BF6
_021F1BF2:
	bl GF_AssertFail
_021F1BF6:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bne _021F1C52
	add r0, sp, #0x7c
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r3, sp, #0x80
	bl ov96_021EB06C
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne _021F1C44
	mov r0, #0x73
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	ldr r1, [sp, #0x80]
	ldr r2, [sp, #0x7c]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, sp, #0x78
	bl ov96_021F3180
	cmp r0, #0
	beq _021F1C44
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov96_021E658C
	b _021F1C52
_021F1C44:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov96_021E658C
_021F1C52:
	ldr r0, [sp, #0x34]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r5, #0xc
	bge _021F1C68
	b _021F17DE
_021F1C68:
	ldr r1, [sp, #0x4c]
	add r0, r6, #0
	bl ov96_021F2FEC
	ldr r1, _021F1CA8 ; =0x000007AF
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _021F1C86
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _021F1C86
	sub r0, r1, #3
	add r0, r6, r0
	bl ov96_021F2D98
_021F1C86:
	ldr r0, _021F1CBC ; =0x00000774
	ldr r1, [sp, #0x54]
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x58]
	bl ov96_021F4688
	ldr r0, _021F1CBC ; =0x00000774
	ldr r1, [sp, #0x5c]
	ldr r0, [r6, r0]
	add r2, sp, #0x12c
	bl ov96_021F45F4
	add sp, #0x138
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1CA4: .word 0x0000076C
_021F1CA8: .word 0x000007AF
_021F1CAC: .word 0x000007AC
_021F1CB0: .word 0x0000088D
_021F1CB4: .word 0x0000088E
_021F1CB8: .word 0x0000088F
_021F1CBC: .word 0x00000774
	thumb_func_end ov96_021F1614

	thumb_func_start ov96_021F1CC0
ov96_021F1CC0: ; 0x021F1CC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	str r0, [sp, #4]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, #0x20
	mov r6, #0
	str r0, [sp, #0x10]
_021F1CD4:
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r1, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r0, #0
	mov r0, #0x1b
	lsl r0, r0, #4
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	mov r0, #0x90
	mul r0, r5
	add r4, r1, r0
	add r0, r4, #0
	add r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F1D20
	mov r0, #0x47
	ldrsb r0, [r4, r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x47
	strb r1, [r0]
	mov r0, #0x47
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _021F1D20
	add r1, r4, #0
	add r1, #0x46
	mov r0, #0
	strb r0, [r1]
_021F1D20:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021F1D94
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov96_021F2F7C
	cmp r0, #0
	beq _021F1D94
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x18]
	add r1, #0x45
	strb r0, [r1]
	add r4, #0x44
	strb r0, [r4]
	mov r0, #1
	str r0, [sp]
	lsl r1, r7, #0x18
	lsl r2, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #5
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	lsl r1, r7, #0x18
	lsl r2, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov96_021E8228
	ldr r0, [sp, #0xc]
	add r4, r0, r6
	mov r0, #0x7e
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021F1D8C
	mov r0, #1
	str r0, [sp]
	lsl r1, r7, #0x18
	lsl r2, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #8
	bl ov96_021E8228
_021F1D8C:
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
_021F1D94:
	add r6, r6, #1
	cmp r6, #0xc
	blt _021F1CD4
	ldr r0, [sp, #0xc]
	mov r6, #0
	str r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
_021F1DA4:
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x14]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r7, r2, r0
	ldr r0, [r7, #0x18]
	cmp r0, #2
	bne _021F1E22
	mov r0, #1
	str r0, [sp, #8]
	mov r5, #0
_021F1DD4:
	cmp r6, r5
	beq _021F1E12
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
	ldr r0, [sp, #0x14]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r1, r2, r0
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _021F1E12
	add r0, r7, #0
	bl ov96_021F218C
	cmp r0, #0
	beq _021F1E12
	mov r0, #0
	str r0, [sp, #8]
	b _021F1E18
_021F1E12:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F1DD4
_021F1E18:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021F1E22
	mov r0, #1
	str r0, [r7, #0x18]
_021F1E22:
	add r6, r6, #1
	cmp r6, #0xc
	blt _021F1DA4
	ldr r3, _021F2080 ; =ov96_0221BC64
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r5, #0
	str r0, [r2]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
_021F1E3E:
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
	ldr r0, [sp, #0x18]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r4, r2, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021F1E6A
	b _021F206C
_021F1E6A:
	add r1, r4, #0
	add r1, #0x41
	mov r0, #0
	strb r0, [r1]
	str r0, [r4, #0x34]
	add r6, r4, #0
	str r0, [r4, #0x38]
	add r3, sp, #0x5c
	add r6, #0x28
	str r0, [r4, #0x3c]
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	add r0, r4, #0
	add r0, #0x1c
	add r2, sp, #0x74
	bl VEC_Subtract
	add r0, sp, #0x74
	bl VEC_Mag
	add r7, r0, #0
	cmp r7, #0
	bgt _021F1EA8
	add r0, r4, #0
	bl ov96_021F2AA4
	b _021F206C
_021F1EA8:
	add r0, sp, #0x74
	add r1, sp, #0x68
	bl VEC_Normalize
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F1EC0
	mov r6, #0x3f
	lsl r6, r6, #0x18
	b _021F1EDC
_021F1EC0:
	add r0, r4, #0
	add r0, #0x89
	ldrb r0, [r0]
	bl _ffltu
	bl _f2d
	ldr r3, _021F2084 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r6, r0, #0
_021F1EDC:
	add r0, r7, #0
	bl _fflt
	str r0, [sp, #0x1c]
	ldr r0, _021F2088 ; =0x45800000
	add r1, r6, #0
	bl _fmul
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	bl _fleq
	bhi _021F1F06
	add r3, r4, #0
	add r3, #0x1c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x5c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021F1F30
_021F1F06:
	mov r1, #0
	add r0, sp, #0x50
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, _021F2088 ; =0x45800000
	add r1, r6, #0
	bl _fmul
	bl _ffix
	add r1, sp, #0x68
	add r2, sp, #0x50
	add r3, sp, #0x74
	bl VEC_MultAdd
	add r1, sp, #0x5c
	add r0, sp, #0x74
	add r2, r1, #0
	bl VEC_Add
_021F1F30:
	cmp r7, #0
	beq _021F1FAC
	add r6, sp, #0x20
	ldmia r6!, {r0, r1}
	add r3, sp, #0x44
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, sp, #0x38
	str r0, [r3]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x68]
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x3c]
	add r0, r2, #0
	bl CalcAngleBetweenVecs
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	bls _021F1F66
	mov r1, #0xe
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _021F1F70
_021F1F66:
	add r1, r4, #0
	add r1, #0x40
	mov r0, #4
	strb r0, [r1]
	b _021F1FAC
_021F1F70:
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	bls _021F1F8A
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	bhs _021F1F8A
	add r1, r4, #0
	add r1, #0x40
	mov r0, #2
	strb r0, [r1]
	b _021F1FAC
_021F1F8A:
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _021F1FA4
	mov r1, #0xa
	lsl r1, r1, #0xc
	cmp r0, r1
	bhi _021F1FA4
	add r1, r4, #0
	add r1, #0x40
	mov r0, #3
	strb r0, [r1]
	b _021F1FAC
_021F1FA4:
	add r1, r4, #0
	add r1, #0x40
	mov r0, #1
	strb r0, [r1]
_021F1FAC:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _021F2058
	lsl r2, r5, #0x18
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	lsr r2, r2, #0x18
	add r3, sp, #0x74
	bl ov96_021F22FC
	cmp r0, #0
	bne _021F2044
	mov r1, #0
	add r0, sp, #0x2c
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F206C
	add r1, r4, #0
	add r1, #0x41
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x8a
	ldrh r0, [r0]
	bl _ffltu
	bl _f2d
	ldr r3, _021F2084 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x46
	ldrb r0, [r0]
	bl _ffltu
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	add r1, r0, #0
	ldr r0, _021F2088 ; =0x45800000
	bl _fmul
	bl _ffix
	add r3, r4, #0
	add r1, sp, #0x68
	add r2, sp, #0x2c
	add r3, #0x34
	bl VEC_MultAdd
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	cmp r0, #0
	beq _021F203E
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	add r4, #0x8e
	sub r0, r0, #1
	strh r0, [r4]
	b _021F206C
_021F203E:
	bl GF_AssertFail
	b _021F206C
_021F2044:
	add r0, r4, #0
	bl ov96_021F2AA4
	add r2, sp, #0x5c
	ldmia r2!, {r0, r1}
	add r4, #0x28
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	b _021F206C
_021F2058:
	add r1, r4, #0
	add r1, #0x8e
	mov r0, #0
	add r2, sp, #0x5c
	strh r0, [r1]
	ldmia r2!, {r0, r1}
	add r4, #0x28
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
_021F206C:
	add r5, r5, #1
	cmp r5, #0xc
	bge _021F2074
	b _021F1E3E
_021F2074:
	ldr r0, [sp, #0xc]
	bl ov96_021F234C
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2080: .word ov96_0221BC64
_021F2084: .word 0x40240000
_021F2088: .word 0x45800000
	thumb_func_end ov96_021F1CC0

	thumb_func_start ov96_021F208C
ov96_021F208C: ; 0x021F208C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	lsl r6, r4, #0xc
	lsl r4, r0, #0xc
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0
	add r1, r2, #0
	add r2, r0, #0
	add r7, r3, #0
	ldr r5, [sp, #0x20]
	str r6, [sp]
	str r4, [sp, #4]
	bl VEC_Subtract
	add r0, sp, #0
	bl VEC_Mag
	cmp r0, r7
	ble _021F20C0
	str r6, [r5]
	str r4, [r5, #4]
	mov r0, #0
	str r0, [r5, #8]
_021F20C0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F208C

	thumb_func_start ov96_021F20C4
ov96_021F20C4: ; 0x021F20C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r7, r0, #0
	bl ov96_021E6104
	mov r1, #0x1b
	mov r5, #0
	str r0, [sp, #0x14]
	lsl r6, r0, #0xc
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	add r7, #0x20
	mul r1, r0
	add r4, r5, #0
	add r7, r7, r1
_021F20E8:
	mov r0, #0x90
	mul r0, r4
	add r1, r7, r0
	ldr r0, [sp, #0x14]
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	asr r2, r0, #0xb
	lsr r2, r2, #0x14
	add r2, r0, r2
	asr r0, r2, #0xc
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov96_021E872C
	cmp r0, #0
	add r0, sp, #0x20
	beq _021F212C
	ldr r2, [sp, #0x18]
	lsl r1, r4, #2
	str r2, [r0, r1]
	mov r1, #1
	add r0, sp, #0x1c
	strb r1, [r0, r4]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _021F2136
_021F212C:
	lsl r2, r4, #2
	mov r1, #0
	str r1, [r0, r2]
	add r0, sp, #0x1c
	strb r1, [r0, r4]
_021F2136:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F20E8
	cmp r5, #0
	bne _021F214A
	add sp, #0x2c
	mov r0, #0xc
	pop {r4, r5, r6, r7, pc}
_021F214A:
	mov r2, #3
	mov r3, #0
	add r0, sp, #0x20
	add r1, sp, #0x1c
_021F2152:
	ldrb r4, [r1, r3]
	cmp r4, #0
	beq _021F2164
	lsl r4, r3, #2
	ldr r4, [r0, r4]
	cmp r4, r6
	bge _021F2164
	add r2, r3, #0
	add r6, r4, #0
_021F2164:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #3
	blo _021F2152
	cmp r2, #3
	bne _021F217C
	bl GF_AssertFail
	add sp, #0x2c
	mov r0, #0xc
	pop {r4, r5, r6, r7, pc}
_021F217C:
	ldr r0, [sp, #8]
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F20C4

	thumb_func_start ov96_021F218C
ov96_021F218C: ; 0x021F218C
	push {r3, r4, lr}
	sub sp, #0x34
	add r2, r0, #0
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r4, r1, #0
	ldr r0, [r2]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x2c]
	add r3, sp, #0x1c
	bl ov96_021EAF78
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	add r3, sp, #0x10
	bl ov96_021EAF78
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	add r2, sp, #0x28
	add r0, r1, r0
	lsl r4, r0, #0xc
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl VEC_Subtract
	add r0, sp, #0x28
	bl VEC_Mag
	cmp r0, r4
	bgt _021F21E4
	add sp, #0x34
	mov r0, #1
	pop {r3, r4, pc}
_021F21E4:
	mov r0, #0
	add sp, #0x34
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F218C

	thumb_func_start ov96_021F21EC
ov96_021F21EC: ; 0x021F21EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
_021F21F6:
	ldr r0, [sp, #8]
	mov r1, #0xc0
	ldr r2, _021F22F8 ; =_0221DCA0
	mul r1, r0
	add r5, r2, r1
	mov r1, #3
	mov r4, #0
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #3
	bl _s32_div_f
	ldr r0, [sp]
	add r2, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021F22F8 ; =_0221DCA0
	lsl r0, r0, #4
	add r7, r1, r0
_021F2236:
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021F2248
	lsl r1, r4, #4
	mov r0, #0
	add r2, r5, r1
	str r0, [r5, r1]
	str r0, [r2, #8]
	b _021F22DC
_021F2248:
	cmp r4, r0
	blo _021F22DC
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r6, #0
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #1
	bne _021F227E
	ldr r0, [r6, #0x18]
	cmp r0, #1
	beq _021F229A
_021F227E:
	lsl r2, r4, #4
	mov r0, #0
	str r0, [r5, r2]
	add r1, r5, r2
	mov r0, #0xc0
	add r3, r4, #0
	mul r3, r0
	mov r2, #0
	str r2, [r7, r3]
	str r2, [r1, #8]
	add r0, r7, r3
	add r1, r2, #0
	str r1, [r0, #8]
	b _021F22DC
_021F229A:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl ov96_021F218C
	cmp r0, #0
	beq _021F22C2
	lsl r1, r4, #4
	mov r0, #1
	str r0, [r5, r1]
	add r2, r5, r1
	mov r0, #0xc0
	add r1, r4, #0
	mul r1, r0
	mov r0, #1
	str r0, [r7, r1]
	ldr r0, [sp, #4]
	add r3, r7, r1
	str r6, [r2, #8]
	str r0, [r3, #8]
	b _021F22DC
_021F22C2:
	lsl r2, r4, #4
	mov r0, #0
	str r0, [r5, r2]
	add r1, r5, r2
	mov r0, #0xc0
	add r3, r4, #0
	mul r3, r0
	mov r2, #0
	str r2, [r7, r3]
	str r2, [r1, #8]
	add r0, r7, r3
	add r1, r2, #0
	str r1, [r0, #8]
_021F22DC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F2236
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #0xc
	blo _021F21F6
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F22F8: .word _0221DCA0
	thumb_func_end ov96_021F21EC

	thumb_func_start ov96_021F22FC
ov96_021F22FC: ; 0x021F22FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r3, #0
	mov r0, #0xc0
	add r6, r1, #0
	ldr r3, _021F2348 ; =_0221DCA0
	mul r0, r2
	mov r4, #0
	add r5, r3, r0
	add r6, #0x28
_021F2310:
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F2338
	ldr r0, [r1, #8]
	add r1, r6, #0
	add r0, #0x28
	add r2, sp, #0
	bl VEC_Subtract
	add r0, r7, #0
	add r1, sp, #0
	bl VEC_DotProduct
	cmp r0, #0
	ble _021F2338
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F2338:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F2310
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2348: .word _0221DCA0
	thumb_func_end ov96_021F22FC

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

	thumb_func_start ov96_021F2780
ov96_021F2780: ; 0x021F2780
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #0xc
	blt _021F2790
	bl GF_AssertFail
_021F2790:
	ldr r1, [r5, #0xc]
	cmp r1, #0xc
	blt _021F279A
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_021F279A:
	add r0, r1, #1
	str r0, [r5, #0xc]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	strb r4, [r5, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F2780

	thumb_func_start ov96_021F27A8
ov96_021F27A8: ; 0x021F27A8
	ldr r1, [r0, #0xc]
	sub r1, r1, #1
	bpl _021F27B2
	mov r0, #0xff
	bx lr
_021F27B2:
	str r1, [r0, #0xc]
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov96_021F27A8

	thumb_func_start ov96_021F27B8
ov96_021F27B8: ; 0x021F27B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r1, sp, #0x18
	add r4, r0, #0
	add r6, r2, #0
	bl VEC_Normalize
	add r0, r5, #0
	add r1, sp, #0xc
	bl VEC_Normalize
	add r0, sp, #0x18
	add r1, sp, #0xc
	bl VEC_DotProduct
	add r5, r0, #0
	add r0, r4, #0
	bl VEC_Mag
	add r2, r0, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	asr r1, r5, #0x1f
	add r0, r5, #0
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, r6, #0
	bl VEC_MultAdd
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov96_021F27B8

	thumb_func_start ov96_021F2814
ov96_021F2814: ; 0x021F2814
	push {r4, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, sp, #0xc
	bl VEC_Normalize
	add r0, r4, #0
	add r1, sp, #0
	bl VEC_Normalize
	add r0, sp, #0xc
	add r1, sp, #0
	bl VEC_DotProduct
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov96_021F2814

	thumb_func_start ov96_021F2834
ov96_021F2834: ; 0x021F2834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, _021F2950 ; =0x0000072B
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021F2844
	b _021F294A
_021F2844:
	mov r0, #0
	add r1, sp, #0x10
	add r5, r0, #0
_021F284A:
	add r0, r0, #1
	strb r5, [r1]
	add r1, r1, #1
	cmp r0, #4
	blt _021F284A
	ldr r1, _021F2950 ; =0x0000072B
	add r7, r4, #0
	add r0, r1, #0
	strb r5, [r4, r1]
	add r0, #0x23
	strb r5, [r4, r0]
	add r1, #0x24
	strb r5, [r4, r1]
	add r7, #0x20
_021F2866:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r0, r6
	add r2, r7, r0
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r0, [r6, #0x18]
	cmp r0, #1
	bne _021F28F6
	add r0, sp, #8
	str r0, [sp]
	ldr r1, [r6, #0x28]
	ldr r0, [r6]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [r6, #0x2c]
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #0xc
	bl ov96_021EB06C
	mov r0, #0x73
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, sp, #4
	bl ov96_021F3180
	add r2, r0, #0
	beq _021F28F6
	add r0, r6, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r6, #0x42
	add r3, sp, #0x10
	add r0, r0, r2
	strh r0, [r6]
	add r0, sp, #4
	ldrb r1, [r0]
	add r0, sp, #0x10
	ldrb r0, [r0, r1]
	add r6, r0, #1
	strb r6, [r3, r1]
	mov r3, #0xc
	add r6, r1, #0
	mul r6, r3
	add r3, sp, #0x18
	add r3, r3, r6
	strb r5, [r0, r3]
	add r0, sp, #0x14
	strb r2, [r0, r1]
_021F28F6:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F2866
	mov r0, #0
	mov ip, r0
	add r7, sp, #0x18
	add r1, sp, #0x14
	add r2, sp, #0x10
_021F2906:
	ldrb r3, [r2]
	mov r0, #0
	cmp r3, #0
	ble _021F293A
_021F290E:
	ldr r3, _021F2954 ; =0x0000074E
	ldrb r6, [r7, r0]
	ldrb r3, [r4, r3]
	add r0, r0, #1
	add r5, r4, r3
	mov r3, #0x75
	lsl r3, r3, #4
	strb r6, [r5, r3]
	sub r3, r3, #2
	ldrb r3, [r4, r3]
	ldrb r6, [r1]
	add r5, r4, r3
	ldr r3, _021F2958 ; =0x0000075C
	strb r6, [r5, r3]
	sub r3, #0xe
	ldrb r3, [r4, r3]
	add r5, r3, #1
	ldr r3, _021F2954 ; =0x0000074E
	strb r5, [r4, r3]
	ldrb r3, [r2]
	cmp r0, r3
	blt _021F290E
_021F293A:
	mov r0, ip
	add r0, r0, #1
	add r7, #0xc
	add r1, r1, #1
	add r2, r2, #1
	mov ip, r0
	cmp r0, #4
	blt _021F2906
_021F294A:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2950: .word 0x0000072B
_021F2954: .word 0x0000074E
_021F2958: .word 0x0000075C
	thumb_func_end ov96_021F2834

	thumb_func_start ov96_021F295C
ov96_021F295C: ; 0x021F295C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #1
	cmp r5, #1
	blt _021F2978
_021F2968:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl ov96_021F2984
	add r4, r4, #1
	cmp r4, r5
	ble _021F2968
_021F2978:
	add r0, r6, #0
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F295C

	thumb_func_start ov96_021F2984
ov96_021F2984: ; 0x021F2984
	push {r3, lr}
	sub sp, #0x10
	cmp r0, #1
	blo _021F299A
	cmp r0, #6
	bhi _021F299A
	sub r0, r0, #1
	lsl r3, r0, #1
	add r3, #0x12
	mov r0, #2
	b _021F29DC
_021F299A:
	cmp r0, #0x10
	blo _021F29AE
	cmp r0, #0x1c
	bhi _021F29AE
	sub r0, #0x10
	lsl r2, r0, #1
	mov r0, #0x1a
	sub r3, r0, r2
	mov r0, #0x14
	b _021F29DC
_021F29AE:
	cmp r0, #0x26
	blo _021F29C0
	cmp r0, #0x2b
	bhs _021F29C0
	sub r0, #0x26
	lsl r0, r0, #1
	add r3, r0, #4
	mov r0, #2
	b _021F29DC
_021F29C0:
	cmp r0, #7
	blo _021F29D2
	cmp r0, #0xf
	bhi _021F29D2
	sub r0, r0, #7
	lsl r0, r0, #1
	mov r3, #0x1c
	add r0, r0, #4
	b _021F29DC
_021F29D2:
	sub r0, #0x1d
	lsl r2, r0, #1
	mov r0, #0x12
	mov r3, #2
	sub r0, r0, r2
_021F29DC:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r1, #0
	mov r1, #1
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add sp, #0x10
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021F2984

	thumb_func_start ov96_021F2A00
ov96_021F2A00: ; 0x021F2A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, _021F2A80 ; =ov96_0221BDD4
	mov r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #4]
	mov r7, #2
_021F2A14:
	ldr r4, [sp, #8]
	ldr r5, [sp, #4]
	mov r6, #0
_021F2A1A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021F2A56
	str r7, [r4, #0x18]
	add r0, sp, #0x10
	str r0, [sp]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldr r0, [r4]
	add r3, sp, #0x14
	bl ov96_021EB0A4
	ldr r0, [sp, #0x14]
	add r3, r4, #0
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	lsl r0, r0, #0xc
	add r3, #0x28
	str r0, [r4, #0x2c]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	add r1, #0x40
	mov r0, #2
	strb r0, [r1]
_021F2A56:
	add r6, r6, #1
	add r4, #0x90
	add r5, r5, #4
	cmp r6, #3
	blt _021F2A1A
	mov r1, #0x1b
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _021F2A14
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2A80: .word ov96_0221BDD4
	thumb_func_end ov96_021F2A00

