	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EB3A4
	.public ov96_021EB3E4
	.public ov96_021EB408
	.extern ov96_021EB4F4

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
	thumb_func_start ov96_021EB3A4
ov96_021EB3A4: ; 0x021EB3A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _021EB3E0
	mov r7, #0x15
	add r4, r6, #0
	lsl r7, r7, #4
_021EB3B6:
	ldr r0, [r5, r7]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EB3C4
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
_021EB3C4:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r0, r0, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EB3D6
	bl SpriteTransfer_CreateExtPlttTransferTask
_021EB3D6:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _021EB3B6
_021EB3E0:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB3A4

	thumb_func_start ov96_021EB3E4
ov96_021EB3E4: ; 0x021EB3E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, sp, #8
	ldrb r6, [r6, #0x10]
	add r5, r0, #0
	add r4, r3, #0
	str r6, [sp]
	bl ov96_021EB408
	add r2, sp, #8
	ldrb r2, [r2, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021EB4F4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB3E4

	thumb_func_start ov96_021EB408
ov96_021EB408: ; 0x021EB408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, r0, #0
	str r3, [sp, #0x2c]
	add r4, r1, #0
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r6, r2, #0
	cmp r1, r0
	blt _021EB420
	bl GF_AssertFail
_021EB420:
	ldr r0, [sp, #0x2c]
	mov r2, #5
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x60
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, sp, #0x60
	str r0, [sp, #0x34]
	ldr r0, [r5]
	str r0, [sp, #0x5c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, sp, #0x30
	strh r1, [r0, #0x20]
	add r0, sp, #0x30
	str r1, [sp, #0x54]
	str r6, [sp, #0x58]
	bl Sprite_CreateAffine
	add r4, r0, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r7, #0x55
	ldr r1, [r5, #4]
	lsl r7, r7, #2
	ldr r3, [r5, r7]
	mov r0, #0xc
	add r2, r1, #0
	mov r6, #0
	mul r2, r0
	strh r6, [r3, r2]
	ldr r1, [r5, #4]
	ldr r3, [r5, r7]
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	strh r6, [r1, #2]
	ldr r1, [r5, #4]
	ldr r3, [r5, r7]
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	str r4, [r1, #4]
	add r1, sp, #0x88
	ldrb r6, [r1, #0x10]
	ldr r1, [r5, #4]
	ldr r3, [r5, r7]
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	strh r6, [r1, #8]
	ldr r1, [r5, #4]
	ldr r2, [r5, r7]
	mul r0, r1
	add r1, r2, r0
	ldr r0, [sp, #0x2c]
	strh r0, [r1, #0xa]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	add r0, r4, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EB408

