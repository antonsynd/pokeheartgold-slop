	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F0A5C
	.public ov96_021F0A7C
	.public ov96_021F0AE0
	.public ov96_021F0B58
	.public ov96_021F0BD4
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateTransitionType
	.extern ov96_021E5F24
	.extern ov96_021E637C
	.extern ov96_021E667C
	.extern ov96_021F107C
	.extern ov96_021F1170
	.extern ov96_0221BC7C
	.extern ov96_0221BCCC
	.extern ov96_0221BCE8
	.extern ov96_0221BD04
	.extern ov96_0221BD20
	.extern ov96_0221BD3C
	.extern ov96_0221BD58
	.extern ov96_0221BD74
	.extern ov96_0221BD90
	.extern ov96_0221BDAC

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
	thumb_func_start ov96_021F0A5C
ov96_021F0A5C: ; 0x021F0A5C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F0A78 ; =ov96_0221BDAC
	add r3, sp, #0
	mov r2, #5
_021F0A66:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F0A66
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F0A78: .word ov96_0221BDAC
	thumb_func_end ov96_021F0A5C

	thumb_func_start ov96_021F0A7C
ov96_021F0A7C: ; 0x021F0A7C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	ldrb r1, [r4]
	cmp r1, #0
	beq _021F0A98
	cmp r1, #1
	beq _021F0AA8
	cmp r1, #2
	beq _021F0AC8
	b _021F0AD8
_021F0A98:
	add r0, r5, #0
	mov r1, #0x15
	bl PokeathlonCourse_SetStateTransitionType
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F0AD8
_021F0AA8:
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #0x14]
	mov r1, #3
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F0AD8
_021F0AC8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F0AD8
	add r0, r5, #0
	mov r1, #1
	bl PokeathlonCourse_SetStateField07
_021F0AD8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F0A7C

	thumb_func_start ov96_021F0AE0
ov96_021F0AE0: ; 0x021F0AE0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021F0AFE
	cmp r0, #1
	beq _021F0B10
	cmp r0, #2
	beq _021F0B28
	b _021F0B52
_021F0AFE:
	add r0, r5, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _021F0B52
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F0B52
_021F0B10:
	add r0, r5, #0
	bl ov96_021F1170
	add r0, r5, #0
	bl ov96_021F107C
	cmp r0, #0
	beq _021F0B52
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F0B52
_021F0B28:
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _021F0B52
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	mov r1, #2
	bl PokeathlonCourse_SetStateField07
_021F0B52:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov96_021F0AE0

	thumb_func_start ov96_021F0B58
ov96_021F0B58: ; 0x021F0B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #4]
	ldrb r0, [r4]
	cmp r0, #0
	bne _021F0B7E
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F0B78
	mov r0, #1
	strb r0, [r4]
_021F0B78:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F0B7E:
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	beq _021F0B8E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F0B8E:
	mov r0, #0
	str r0, [sp, #8]
_021F0B92:
	ldr r0, [sp, #8]
	mov r6, #0
	lsl r0, r0, #0x18
	ldr r5, [sp, #4]
	add r4, r6, #0
	lsr r7, r0, #0x18
_021F0B9E:
	add r0, r5, #0
	add r0, #0x62
	ldrh r0, [r0]
	add r1, r7, #0
	add r6, r6, r0
	lsl r2, r6, #0x10
	ldr r0, [sp]
	lsr r2, r2, #0x10
	bl PokeathlonCourse_SetField5E0_AtIndex
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #3
	blt _021F0B9E
	mov r0, #0x1b
	ldr r1, [sp, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021F0B92
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F0B58

	thumb_func_start ov96_021F0BD4
ov96_021F0BD4: ; 0x021F0BD4
	push {r3, r4, r5, lr}
	sub sp, #0xf0
	ldr r5, _021F0D3C ; =ov96_0221BC7C
	add r3, sp, #0xe0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021F0D40 ; =ov96_0221BCE8
	add r3, sp, #0xc4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D44 ; =ov96_0221BD04
	add r3, sp, #0xa8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D48 ; =ov96_0221BD3C
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D4C ; =ov96_0221BD58
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D50 ; =ov96_0221BD74
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D54 ; =ov96_0221BD90
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D58 ; =ov96_0221BCCC
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #7
	str r0, [r3]
	add r0, r4, #0
	mov r3, #1
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D5C ; =ov96_0221BD20
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0xf0
	pop {r3, r4, r5, pc}
	nop
_021F0D3C: .word ov96_0221BC7C
_021F0D40: .word ov96_0221BCE8
_021F0D44: .word ov96_0221BD04
_021F0D48: .word ov96_0221BD3C
_021F0D4C: .word ov96_0221BD58
_021F0D50: .word ov96_0221BD74
_021F0D54: .word ov96_0221BD90
_021F0D58: .word ov96_0221BCCC
_021F0D5C: .word ov96_0221BD20
	thumb_func_end ov96_021F0BD4

