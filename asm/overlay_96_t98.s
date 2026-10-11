	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E93B4
	.public ov96_021E94EC

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
	thumb_func_start ov96_021E93B4
ov96_021E93B4: ; 0x021E93B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	cmp r1, #0
	beq _021E93D2
	cmp r1, #1
	beq _021E93D8
	cmp r1, #2
	beq _021E93DE
	b _021E93E4
_021E93D2:
	mov r0, #1
	str r0, [sp, #4]
	b _021E93E8
_021E93D8:
	mov r0, #1
	str r0, [sp, #4]
	b _021E93E8
_021E93DE:
	mov r0, #2
	str r0, [sp, #4]
	b _021E93E8
_021E93E4:
	bl GF_AssertFail
_021E93E8:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r6, #0
	str r1, [r0, #0xc]
	ldr r4, [r0]
	cmp r4, #0
	ble _021E949E
	add r0, #0x24
	mov ip, r0
_021E93FA:
	add r3, r6, #1
	add r2, r3, #0
	mov r0, #0xc
	add r1, sp, #8
	mul r2, r0
	add r0, r1, r2
	mov r3, ip
	mov r7, #0
	str r3, [r0, #8]
	str r7, [r0, #4]
	str r7, [r1, r2]
	cmp r6, #0
	ble _021E9486
_021E9414:
	ldr r2, [sp, #4]
	ldr r1, [r1, #4]
	cmp r2, #1
	ldr r5, [r0, #8]
	bne _021E9450
	ldr r3, [r1, #8]
	ldr r4, [r5, #0xc]
	ldr r2, [r3, #0xc]
	cmp r2, r4
	bge _021E9436
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	b _021E9486
_021E9436:
	cmp r2, r4
	bne _021E9480
	ldr r2, [r3]
	ldr r3, [r5]
	cmp r2, r3
	ble _021E9480
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	b _021E9480
_021E9450:
	ldr r3, [r1, #8]
	ldr r4, [r5, #0xc]
	ldr r2, [r3, #0xc]
	cmp r2, r4
	ble _021E9468
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	b _021E9486
_021E9468:
	cmp r2, r4
	bne _021E9480
	ldr r2, [r3]
	ldr r3, [r5]
	cmp r2, r3
	ble _021E9480
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
_021E9480:
	add r7, r7, #1
	cmp r7, r6
	blt _021E9414
_021E9486:
	cmp r7, r6
	bne _021E948E
	str r0, [r1, #4]
	str r1, [r0]
_021E948E:
	mov r0, ip
	add r0, #0x18
	mov ip, r0
	ldr r0, [sp]
	add r6, r6, #1
	ldr r4, [r0]
	cmp r6, r4
	blt _021E93FA
_021E949E:
	mov r1, #0
	mvn r1, r1
	mov r3, #0
	add r0, sp, #8
	add r2, r1, #0
	add r5, r3, #0
	cmp r4, #0
	ble _021E94E8
	mov r7, #0x51
	ldr r4, [sp]
	lsl r7, r7, #2
_021E94B4:
	ldr r0, [r0, #4]
	ldr r6, [r0, #8]
	str r6, [r4, r7]
	ldr r6, [r0, #8]
	ldr r6, [r6, #0xc]
	cmp r1, r6
	beq _021E94D2
	add r1, r6, #0
	cmp r3, #0
	beq _021E94CE
	add r2, r5, #0
	mov r3, #0
	b _021E94D4
_021E94CE:
	add r2, r2, #1
	b _021E94D4
_021E94D2:
	mov r3, #1
_021E94D4:
	mov r6, #0x51
	lsl r6, r6, #2
	ldr r6, [r4, r6]
	add r5, r5, #1
	strb r2, [r6, #9]
	ldr r6, [sp]
	add r4, r4, #4
	ldr r6, [r6]
	cmp r5, r6
	blt _021E94B4
_021E94E8:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E93B4

	thumb_func_start ov96_021E94EC
ov96_021E94EC: ; 0x021E94EC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	blo _021E94FA
	bl GF_AssertFail
_021E94FA:
	ldr r0, [r5]
	cmp r4, r0
	blt _021E9504
	bl GF_AssertFail
_021E9504:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E94EC

