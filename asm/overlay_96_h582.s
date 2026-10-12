	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F85A0
	.public ov96_021F85F4
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E8A20
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
	thumb_func_start ov96_021F85A0
ov96_021F85A0: ; 0x021F85A0
	push {r3, r4, lr}
	sub sp, #0x34
	add r4, r0, #0
	add r2, sp, #0
	mov r0, #0
	add r3, r2, #0
	add r1, r0, #0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	str r0, [r3]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x2c]
	mov r1, #0xe0
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x70
	strh r1, [r0, #2]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x94
	add r1, #0x98
	ldr r0, [r0]
	ldr r1, [r1]
	bl SpriteSystem_NewSprite
	add r4, #0x9c
	str r0, [r4]
	add sp, #0x34
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F85A0

	thumb_func_start ov96_021F85F4
ov96_021F85F4: ; 0x021F85F4
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
	add r0, #0xa4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bne _021F86AC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	strb r6, [r0, #1]
	ldr r0, [sp, #0x10]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	mov r2, #0x24
_021F8650:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021F8650
	add r0, r7, #0
	mov r4, #0
	bl PokeathlonCourse_GetParticipantCount
	cmp r0, #0
	ble _021F869A
	ldr r5, [sp, #0x10]
	add r5, #0x50
_021F866C:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r1, [r0]
	cmp r1, r6
	blo _021F867E
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021F8682
_021F867E:
	mov r1, #1
	str r1, [sp, #4]
_021F8682:
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _021F868C
	mov r0, #0
	str r0, [sp]
_021F868C:
	add r0, r7, #0
	add r5, #0x28
	add r4, r4, #1
	bl PokeathlonCourse_GetParticipantCount
	cmp r4, r0
	blt _021F866C
_021F869A:
	ldr r0, [sp]
	cmp r0, #0
	beq _021F86A6
	ldr r0, [sp, #0xc]
	mov r1, #1
	strb r1, [r0, #2]
_021F86A6:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	strb r1, [r0, #3]
_021F86AC:
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	ldr r0, [r0, #0x18]
	bl ov96_021EEA80
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	add r0, #0xa8
	str r0, [sp, #0x14]
	ldr r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _021F86E0
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	cmp r6, r0
	blo _021F86E0
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F86E0:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F85F4

