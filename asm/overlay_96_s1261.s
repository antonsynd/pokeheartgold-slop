	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022163AC
	.public ov96_022164EC
	.public ov96_0221654C
	.extern ov96_0221D6C4
	.extern ov96_0221D738
	.extern ov96_0221D79C
	.extern ov96_0221D834

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
	thumb_func_start ov96_022163AC
ov96_022163AC: ; 0x022163AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r0, #8]
	ldr r5, [r0, #0xc]
	cmp r6, #0
	bne _022163BC
	bl GF_AssertFail
_022163BC:
	cmp r5, #0
	bne _022163C4
	bl GF_AssertFail
_022163C4:
	mov r4, #1
	str r4, [sp]
	ldr r0, _022164E0 ; =0x00002710
	str r4, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xf2
	mov r3, #0x10
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _022164E0 ; =0x00002710
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xf2
	mov r3, #0xd
	bl SpriteSystem_LoadPlttResObj
	add r0, r4, #0
	str r0, [sp]
	ldr r0, _022164E0 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xf2
	mov r3, #0xf
	bl SpriteSystem_LoadCellResObj
	add r0, r4, #0
	str r0, [sp]
	ldr r0, _022164E0 ; =0x00002710
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xf2
	mov r3, #0xe
	bl SpriteSystem_LoadAnimResObj
	mov r0, #1
	str r0, [sp]
	mov r4, #2
	ldr r0, _022164E4 ; =0x00002711
	str r4, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xf2
	mov r3, #0x14
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	str r0, [sp, #4]
	ldr r0, _022164E4 ; =0x00002711
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xf2
	mov r3, #0x11
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _022164E4 ; =0x00002711
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xf2
	mov r3, #0x13
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _022164E4 ; =0x00002711
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xf2
	mov r3, #0x12
	bl SpriteSystem_LoadAnimResObj
	add r7, r4, #0
	mov r4, #0
_0221647A:
	mov r0, #1
	str r0, [sp]
	ldr r0, _022164E8 ; =0x00002712
	str r7, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xf2
	mov r3, #0x18
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022164E8 ; =0x00002712
	str r7, [sp, #8]
	add r0, r4, r0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xf2
	mov r3, #0x15
	bl SpriteSystem_LoadPlttResObj
	add r4, r4, #1
	cmp r4, #2
	blt _0221647A
	mov r0, #1
	str r0, [sp]
	ldr r0, _022164E8 ; =0x00002712
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xf2
	mov r3, #0x17
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _022164E8 ; =0x00002712
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xf2
	mov r3, #0x16
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022164E0: .word 0x00002710
_022164E4: .word 0x00002711
_022164E8: .word 0x00002712
	thumb_func_end ov96_022163AC

	thumb_func_start ov96_022164EC
ov96_022164EC: ; 0x022164EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _02216548 ; =ov96_0221D79C
	add r7, r2, #0
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	mov r2, #6
_022164FE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022164FE
	ldr r0, [r6]
	cmp r5, #0
	str r0, [r3]
	bne _02216512
	bl GF_AssertFail
_02216512:
	cmp r4, #0
	bne _0221651A
	bl GF_AssertFail
_0221651A:
	add r1, sp, #4
	strh r7, [r1]
	ldr r0, [sp]
	mov r3, #0x1e
	strh r0, [r1, #2]
	add r0, sp, #0x40
	ldrh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	strh r2, [r1, #6]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	add r2, sp, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	add r4, r0, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02216548: .word ov96_0221D79C
	thumb_func_end ov96_022164EC

	thumb_func_start ov96_0221654C
ov96_0221654C: ; 0x0221654C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xdc
	str r0, [sp]
	ldr r6, [r0, #4]
	ldr r0, [r0]
	add r3, sp, #8
	ldr r4, _022165EC ; =ov96_0221D6C4
	str r0, [sp, #4]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _022165F0 ; =ov96_0221D834
	add r3, sp, #0x18
	mov r2, #0x18
_02216572:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02216572
	ldr r0, [r4]
	ldr r5, _022165F4 ; =ov96_0221D738
	str r0, [r3]
	mov r7, #0
	add r4, sp, #0x18
_02216584:
	ldr r1, [r5]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r1, [r5]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5]
	ldr r3, [sp, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #4
	cmp r7, #7
	blt _02216584
	ldr r3, [sp]
	ldr r2, _022165F8 ; =0x00000135
	ldr r3, [r3]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	ldr r1, [sp]
	str r0, [r1, #0x14]
	add r0, r1, #0
	ldr r0, [r0]
	bl MessageFormat_New
	ldr r1, [sp]
	str r0, [r1, #0x10]
	ldr r1, [r1]
	mov r0, #4
	bl FontID_Alloc
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022165EC: .word ov96_0221D6C4
_022165F0: .word ov96_0221D834
_022165F4: .word ov96_0221D738
_022165F8: .word 0x00000135
	thumb_func_end ov96_0221654C

