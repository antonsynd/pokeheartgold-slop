	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022117CC
	.public ov96_022117EC
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_021E637C
	.extern ov96_021E667C
	.extern ov96_02211AF0
	.extern ov96_02211B94
	.extern ov96_0221236C
	.extern ov96_0221D380

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
	thumb_func_start ov96_022117CC
ov96_022117CC: ; 0x022117CC
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _022117E8 ; =ov96_0221D380
	add r3, sp, #0
	mov r2, #5
_022117D6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022117D6
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_022117E8: .word ov96_0221D380
	thumb_func_end ov96_022117CC

	thumb_func_start ov96_022117EC
ov96_022117EC: ; 0x022117EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0221180A
	cmp r0, #1
	beq _0221181C
	cmp r0, #2
	beq _02211834
	b _0221186A
_0221180A:
	add r0, r5, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _0221186A
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0221186A
_0221181C:
	add r0, r5, #0
	bl ov96_02211B94
	add r0, r5, #0
	bl ov96_02211AF0
	cmp r0, #0
	beq _0221186A
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0221186A
_02211834:
	add r0, r5, #0
	bl ov96_02211B94
	add r0, r5, #0
	bl ov96_0221236C
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _0221186A
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x58]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	mov r1, #1
	bl PokeathlonCourse_SetStateField07
_0221186A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov96_022117EC

