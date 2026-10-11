	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EF770
	.public ov96_021EF7C4
	.public ov96_021EF818
	.public ov96_021EF8C0
	.public ov96_021EF924
	.public ov96_021EF95C
	.public ov96_021EF98C
	.public ov96_021EF99C
	.public ov96_021EFA04
	.extern ov96_0221BA54
	.extern ov96_0221BA68
	.extern ov96_0221BA80
	.extern ov96_0221BAA0
	.extern ov96_0221BAE8
	.extern ov96_0221DA80

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
	thumb_func_start ov96_021EF770
ov96_021EF770: ; 0x021EF770
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x20
	ldrb r1, [r0]
	mov r2, #0xf4
	mov r3, #0
	lsl r0, r1, #1
	add r4, r1, r0
	ldr r0, [r5, #0x30]
	mov r1, #8
	add r4, #0xd2
	bl ov98_0221EBD8
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #9
	mov r2, #0xf2
	bl ov98_0221EBEC
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #0xa
	mov r2, #0xf3
	bl ov98_0221EBEC
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x30]
	mov r1, #0xb
	add r2, r4, #0
	bl ov98_0221EC08
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF770

	thumb_func_start ov96_021EF7C4
ov96_021EF7C4: ; 0x021EF7C4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x20
	ldrb r1, [r0]
	mov r2, #0xf5
	mov r3, #0
	lsl r0, r1, #1
	add r4, r1, r0
	ldr r0, [r5, #0x30]
	mov r1, #8
	add r4, #0xd3
	bl ov98_0221EBD8
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #9
	mov r2, #0xf1
	bl ov98_0221EBEC
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #0xa
	mov r2, #0xf3
	bl ov98_0221EBEC
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x30]
	mov r1, #0xb
	add r2, r4, #0
	bl ov98_0221EC08
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF7C4

	thumb_func_start ov96_021EF818
ov96_021EF818: ; 0x021EF818
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _021EF8B4 ; =ov96_0221BA68
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021EF8B8 ; =ov96_0221BAA0
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021EF8BC ; =ov96_0221BA54
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0xc]
	bl SpriteSystem_Alloc
	str r0, [r4, #0x10]
	bl SpriteManager_New
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	mov r2, #4
	bl SpriteSystem_InitSprites
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, sp, #0x34
	bl SpriteSystem_InitManagerWithCapacities
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #0x10]
	bl SpriteSystem_GetRenderer
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	add r0, r4, #0
	bl ov96_021EF8C0
	add r0, r4, #0
	bl ov96_021EF99C
	add sp, #0x4c
	pop {r3, r4, pc}
	.balign 4, 0
_021EF8B4: .word ov96_0221BA68
_021EF8B8: .word ov96_0221BAA0
_021EF8BC: .word ov96_0221BA54
	thumb_func_end ov96_021EF818

	thumb_func_start ov96_021EF8C0
ov96_021EF8C0: ; 0x021EF8C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #0x14]
	ldr r6, [r5, #0x10]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #2
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #3
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF8C0

	thumb_func_start ov96_021EF924
ov96_021EF924: ; 0x021EF924
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _021EF958
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	blo _021EF952
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
_021EF952:
	add r0, r4, #0
	bl ov96_021EFA04
_021EF958:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF924

	thumb_func_start ov96_021EF95C
ov96_021EF95C: ; 0x021EF95C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021EF988 ; =ov96_0221BA80
	add r5, r0, #0
	lsl r0, r1, #4
	mov r6, #0
	add r4, r2, r0
	mov r7, #2
_021EF96A:
	mov r1, #0
	ldrsh r1, [r4, r1]
	mov r3, #2
	ldrsh r2, [r4, r7]
	ldr r0, [r5, #0x38]
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021EF96A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF988: .word ov96_0221BA80
	thumb_func_end ov96_021EF95C

	thumb_func_start ov96_021EF98C
ov96_021EF98C: ; 0x021EF98C
	add r1, r0, #0
	ldr r3, _021EF998 ; =ov96_021EFA04
	mov r2, #0
	add r1, #0x21
	strb r2, [r1]
	bx r3
	.balign 4, 0
_021EF998: .word ov96_021EFA04
	thumb_func_end ov96_021EF98C

	thumb_func_start ov96_021EF99C
ov96_021EF99C: ; 0x021EF99C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r5, _021EF9FC ; =ov96_0221DA80
	mov r0, #0
	ldr r4, _021EFA00 ; =ov96_0221BA80
	ldr r6, [sp]
	str r0, [sp, #4]
	add r7, r5, #0
_021EF9AE:
	ldr r0, [sp]
	ldr r1, [sp]
	mov r2, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r0, #0x10]
	ldr r1, [r1, #0x14]
	mov r3, #2
	strh r2, [r5]
	mov r2, #2
	ldrsh r2, [r4, r2]
	lsl r3, r3, #0x14
	strh r2, [r5, #2]
	add r2, r7, #0
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	str r0, [r6, #0x38]
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r0, r0, #1
	add r5, #0x34
	add r7, #0x34
	add r6, r6, #4
	str r0, [sp, #4]
	cmp r0, #4
	blt _021EF9AE
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0x40]
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [sp]
	bl ov96_021EFA04
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF9FC: .word ov96_0221DA80
_021EFA00: .word ov96_0221BA80
	thumb_func_end ov96_021EF99C

	thumb_func_start ov96_021EFA04
ov96_021EFA04: ; 0x021EFA04
	push {r4, lr}
	add r2, r0, #0
	add r1, r2, #0
	add r1, #0x20
	ldrb r1, [r1]
	ldr r0, [r2, #0x40]
	add r2, #0x21
	lsl r4, r1, #3
	ldrb r1, [r2]
	ldr r3, _021EFA24 ; =ov96_0221BAE8
	lsl r2, r1, #2
	add r1, r3, r4
	ldr r1, [r2, r1]
	bl ManagedSprite_SetAnim
	pop {r4, pc}
	.balign 4, 0
_021EFA24: .word ov96_0221BAE8
	thumb_func_end ov96_021EFA04

