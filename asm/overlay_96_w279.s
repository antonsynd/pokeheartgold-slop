	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EF094
	.public ov96_021EF0FC
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern ov96_021EE5B4
	.extern ov96_021EE60C
	.extern ov96_021EE644
	.extern ov96_021EE944
	.extern ov96_021EE9BC
	.extern ov96_021EF2C0
	.extern ov96_021EF4D0
	.extern ov96_021EF54C
	.extern ov96_021EF818
	.extern ov96_021EFA28

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
	thumb_func_start ov96_021EF094
ov96_021EF094: ; 0x021EF094
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _021EF0AC
	cmp r0, #1
	beq _021EF0DC
	b _021EF0F0
_021EF0AC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xf
	ble _021EF0F4
	ldr r0, [r4, #8]
	bl ov96_021EE9BC
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021EF0F4
_021EF0DC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EF0F4
	ldr r0, [r4, #8]
	bl ov96_021EE944
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EF0F0:
	bl GF_AssertFail
_021EF0F4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF094

	thumb_func_start ov96_021EF0FC
ov96_021EF0FC: ; 0x021EF0FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetField1ED
	cmp r0, #0
	beq _021EF116
	cmp r0, #1
	beq _021EF124
	b _021EF182
_021EF116:
	add r0, r5, #0
	bl ov96_021EF2C0
	add r0, r5, #0
	bl PokeathlonCourse_IncrementField1ED
	b _021EF186
_021EF124:
	add r0, r4, #0
	bl ov96_021EF818
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	bl ov96_021EF4D0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	ldr r1, [r4, #0xc]
	bl ov96_021EE5B4
	str r0, [r4, #0x34]
	ldr r1, [r4, #4]
	bl ov96_021EE60C
	add r0, r4, #0
	bl ov96_021EF54C
	ldr r0, [r4, #0x34]
	bl ov96_021EE644
	add r0, r4, #0
	bl ov96_021EFA28
	mov r0, #2
	bl sub_0203A994
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	mov r1, #1
	bl PokeathlonCourse_SetField1F4
	add r0, r5, #0
	mov r1, #0
	bl PokeathlonCourse_SetField1ED
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EF182:
	bl GF_AssertFail
_021EF186:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF0FC

