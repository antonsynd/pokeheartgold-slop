	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EFF3C
	.public ov96_021EFFE4
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021EF924
	.extern ov96_021EFB20
	.extern ov96_021EFB50
	.extern ov96_021EFD08
	.extern ov96_0221BA2C
	.extern ov96_0221BA38

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
	thumb_func_start ov96_021EFF3C
ov96_021EFF3C: ; 0x021EFF3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	bl ov96_021EF924
	ldrb r0, [r4]
	cmp r0, #0
	beq _021EFF5E
	cmp r0, #1
	beq _021EFF7A
	cmp r0, #2
	beq _021EFFBC
	b _021EFFCE
_021EFF5E:
	mov r0, #4
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r6, #0xc]
	ldr r3, _021EFFD8 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_021EFF7A:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EFFD2
	ldr r0, _021EFFDC ; =ov96_0221BA2C
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	bne _021EFFA2
	ldr r0, _021EFFE0 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #3
	bl ov96_021EFB20
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFFD2
_021EFFA2:
	cmp r0, #1
	bne _021EFFD2
	ldr r0, _021EFFE0 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	bl ov96_021EFB20
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFFD2
_021EFFBC:
	add r0, r5, #0
	bl ov96_021EFB50
	cmp r0, #0
	beq _021EFFD2
	add r0, r5, #0
	bl ov96_021EFD08
	b _021EFFD2
_021EFFCE:
	bl GF_AssertFail
_021EFFD2:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EFFD8: .word 0x00007FFF
_021EFFDC: .word ov96_0221BA2C
_021EFFE0: .word 0x000005DC
	thumb_func_end ov96_021EFF3C

	thumb_func_start ov96_021EFFE4
ov96_021EFFE4: ; 0x021EFFE4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	bl ov96_021EF924
	ldrb r0, [r4]
	cmp r0, #0
	beq _021F0006
	cmp r0, #1
	beq _021F0022
	cmp r0, #2
	beq _021F0064
	b _021F0076
_021F0006:
	mov r0, #4
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r6, #0xc]
	ldr r3, _021F0080 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_021F0022:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F007A
	ldr r0, _021F0084 ; =ov96_0221BA38
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	bne _021F004A
	ldr r0, _021F0088 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #2
	bl ov96_021EFB20
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F007A
_021F004A:
	cmp r0, #1
	bne _021F007A
	ldr r0, _021F0088 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	bl ov96_021EFB20
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F007A
_021F0064:
	add r0, r5, #0
	bl ov96_021EFB50
	cmp r0, #0
	beq _021F007A
	add r0, r5, #0
	bl ov96_021EFD08
	b _021F007A
_021F0076:
	bl GF_AssertFail
_021F007A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021F0080: .word 0x00007FFF
_021F0084: .word ov96_0221BA38
_021F0088: .word 0x000005DC
	thumb_func_end ov96_021EFFE4

