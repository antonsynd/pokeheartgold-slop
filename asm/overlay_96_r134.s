	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EA214
	.public ov96_021EA2C4
	.public ov96_021EA374
	.public ov96_021EA424
	.public ov96_021EA4D4
	.public ov96_021EA584
	.public ov96_021EA634
	.public ov96_021EA6E4
	.public ov96_021EA7A4
	.extern ov96_021E9D08

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
	thumb_func_start ov96_021EA214
ov96_021EA214: ; 0x021EA214
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x14
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x15
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0xa0]
	str r4, [sp, #0x38]
	str r0, [sp, #0x64]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	str r7, [sp, #0x60]
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA2A4
	bl GF_AssertFail
_021EA2A4:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA214

	thumb_func_start ov96_021EA2C4
ov96_021EA2C4: ; 0x021EA2C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x19
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1a
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x18
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA354
	bl GF_AssertFail
_021EA354:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA2C4

	thumb_func_start ov96_021EA374
ov96_021EA374: ; 0x021EA374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1c
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1d
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA404
	bl GF_AssertFail
_021EA404:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA374

	thumb_func_start ov96_021EA424
ov96_021EA424: ; 0x021EA424
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1a
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1b
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA4B4
	bl GF_AssertFail
_021EA4B4:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA424

	thumb_func_start ov96_021EA4D4
ov96_021EA4D4: ; 0x021EA4D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1b
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1c
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA564
	bl GF_AssertFail
_021EA564:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA4D4

	thumb_func_start ov96_021EA584
ov96_021EA584: ; 0x021EA584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1d
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1e
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA614
	bl GF_AssertFail
_021EA614:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA584

	thumb_func_start ov96_021EA634
ov96_021EA634: ; 0x021EA634
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1e
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1f
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x18
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA6C4
	bl GF_AssertFail
_021EA6C4:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA634

	thumb_func_start ov96_021EA6E4
ov96_021EA6E4: ; 0x021EA6E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x90
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	str r3, [sp, #0x2c]
	cmp r4, #1
	bne _021EA6F8
	mov r6, #0x17
	b _021EA6FA
_021EA6F8:
	mov r6, #0x18
_021EA6FA:
	add r0, r5, #0
	mov r1, #0
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1f
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x20
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	ldr r3, [sp, #0x2c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x38]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x6c
	add r2, r6, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x6c
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xa8]
	str r7, [sp, #0x3c]
	str r0, [sp, #0x68]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r1, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	add r0, sp, #0x3c
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x3c
	str r4, [sp, #0x64]
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA784
	bl GF_AssertFail
_021EA784:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x90
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA6E4

	thumb_func_start ov96_021EA7A4
ov96_021EA7A4: ; 0x021EA7A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x20
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x21
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x5c]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	bl Sprite_CreateAffine
	add r4, r0, #0
	bne _021EA836
	bl GF_AssertFail
_021EA836:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EA7A4

