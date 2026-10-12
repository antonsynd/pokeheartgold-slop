	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EE290
	.public ov96_021EE324
	.public ov96_021EE440
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E8A20
	.extern ov96_021ECC58
	.extern ov96_021EEA80

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
	thumb_func_start ov96_021EE290
ov96_021EE290: ; 0x021EE290
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r3, #0
	ldr r7, _021EE318 ; =0xFF00FFFF
	add r2, r3, #0
	add r6, r4, #0
_021EE29C:
	ldr r0, [r6]
	lsl r1, r0, #8
	lsr r1, r1, #0x18
	bne _021EE2BA
	add r1, r1, #1
	lsl r1, r1, #0x18
	and r0, r7
	lsr r1, r1, #8
	orr r0, r1
	str r0, [r6]
	lsr r0, r0, #0x1c
	cmp r0, r3
	bls _021EE2BA
	add r3, r0, #0
	add r5, r2, #0
_021EE2BA:
	add r2, r2, #1
	add r6, r6, #4
	cmp r2, #4
	blt _021EE29C
	lsl r1, r5, #2
	ldr r3, [r4, r1]
	ldr r2, _021EE318 ; =0xFF00FFFF
	add r0, r3, #0
	lsl r3, r3, #8
	lsr r3, r3, #0x18
	sub r3, r3, #1
	lsl r3, r3, #0x18
	and r0, r2
	lsr r3, r3, #8
	orr r0, r3
	str r0, [r4, r1]
	ldr r3, [r4, r1]
	lsl r0, r2, #0x10
	lsl r2, r3, #0x10
	lsr r2, r2, #0x10
	add r2, r2, #1
	lsl r2, r2, #0x10
	and r0, r3
	lsr r2, r2, #0x10
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	ldr r3, _021EE31C ; =ov96_021ECC58
	add r0, r4, #0
	add r2, r1, #0
	bl MATH_QSort
	ldr r1, [r4]
	ldr r0, _021EE320 ; =0xFFFF0000
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE318: .word 0xFF00FFFF
_021EE31C: .word ov96_021ECC58
_021EE320: .word 0xFFFF0000
	thumb_func_end ov96_021EE290

	thumb_func_start ov96_021EE324
ov96_021EE324: ; 0x021EE324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0x10]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, #0xb7
	ldrb r6, [r0]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bne _021EE3FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, #0x20
	strb r6, [r0]
	ldr r0, [sp, #0x10]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	mov r2, #0x24
_021EE37E:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021EE37E
	add r0, r7, #0
	mov r4, #0
	bl PokeathlonCourse_GetParticipantCount
	cmp r0, #0
	ble _021EE3C8
	ldr r5, [sp, #0x10]
	add r5, #0x50
_021EE39A:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r1, [r0]
	cmp r1, r6
	blo _021EE3AC
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021EE3B0
_021EE3AC:
	mov r1, #1
	str r1, [sp, #4]
_021EE3B0:
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _021EE3BA
	mov r0, #0
	str r0, [sp]
_021EE3BA:
	add r0, r7, #0
	add r5, #0x28
	add r4, r4, #1
	bl PokeathlonCourse_GetParticipantCount
	cmp r4, r0
	blt _021EE39A
_021EE3C8:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EE3DE
	ldr r0, [sp, #0xc]
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r0, #0x21
	strb r1, [r0]
_021EE3DE:
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r0, #0x21
	ldrb r0, [r0]
	bic r0, r1
	ldr r1, [sp, #4]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #1
	and r1, r2
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r0, #0x21
	str r0, [sp, #0xc]
	strb r1, [r0]
_021EE3FC:
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	ldr r0, [r0, #0xc]
	bl ov96_021EEA80
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	add r0, #0xb8
	str r0, [sp, #0x14]
	ldr r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [sp, #8]
	add r0, #0x21
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021EE438
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldrb r0, [r0]
	cmp r6, r0
	blo _021EE438
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE438:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE324

	thumb_func_start ov96_021EE440
ov96_021EE440: ; 0x021EE440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #0x10]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, #0xb7
	ldrb r6, [r0]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bne _021EE50A
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	strb r6, [r0, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	mov r2, #0x24
_021EE498:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021EE498
	add r0, r7, #0
	mov r4, #0
	bl PokeathlonCourse_GetParticipantCount
	cmp r0, #0
	ble _021EE4E2
	ldr r5, [sp, #0x10]
	add r5, #0x50
_021EE4B4:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r1, [r0]
	cmp r1, r6
	blo _021EE4C6
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021EE4CA
_021EE4C6:
	mov r1, #1
	str r1, [sp, #4]
_021EE4CA:
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _021EE4D4
	mov r0, #0
	str r0, [sp]
_021EE4D4:
	add r0, r7, #0
	add r5, #0x28
	add r4, r4, #1
	bl PokeathlonCourse_GetParticipantCount
	cmp r4, r0
	blt _021EE4B4
_021EE4E2:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EE4F6
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	mov r0, #2
	lsl r0, r0, #0x1c
	orr r1, r0
	ldr r0, [sp, #0xc]
	str r1, [r0, #8]
_021EE4F6:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	ldr r0, _021EE548 ; =0xEFFFFFFF
	and r1, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #3
	orr r1, r0
	ldr r0, [sp, #0xc]
	str r1, [r0, #8]
_021EE50A:
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	ldr r0, [r0, #0xc]
	bl ov96_021EEA80
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	add r0, #0xb8
	str r0, [sp, #0x14]
	ldr r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _021EE540
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xc]
	cmp r6, r0
	blo _021EE540
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE540:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE548: .word 0xEFFFFFFF
	thumb_func_end ov96_021EE440

