	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F7C70
	.public ov96_021F7D10
	.public ov96_021F7D30
	.extern PokeathlonCourse_FreePtr4HeapAlloc
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021EB21C
	.extern ov96_021EE5E0
	.extern ov96_021EE808
	.extern ov96_021F84E4
	.extern ov96_021F8728
	.extern ov96_021F8F0C
	.extern ov96_0221C290
	.extern ov96_0221C298
	.extern ov96_0221C2B4
	.extern ov96_0221C310
	.extern ov96_0221C338

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
	thumb_func_start ov96_021F7C70
ov96_021F7C70: ; 0x021F7C70
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	mov r0, #4
	bl FontID_Release
	ldr r0, _021F7D04 ; =0x04000050
	mov r1, #0x3f
	mov r2, #0
	bl G2x_SetBlendBrightness_
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ov96_021EE5E0
	add r0, r4, #0
	add r0, #0x84
	bl RemoveWindow
	ldr r0, [r4, #0x18]
	bl ov96_021EE808
	ldr r5, _021F7D08 ; =ov96_0221C290
	mov r6, #0
_021F7CB6:
	ldrb r1, [r5]
	ldr r0, [r4, #0xc]
	bl FreeBgTilemapBuffer
	add r6, r6, #1
	add r5, r5, #1
	cmp r6, #6
	blt _021F7CB6
	ldr r0, [r4, #0x14]
	bl ov96_021F8F0C
	ldr r0, [r4, #0x1c]
	bl ov96_021F8728
	ldr r0, [r4, #0x10]
	bl ov96_021EB21C
	add r0, r4, #0
	bl ov96_021F84E4
	ldr r0, [r4, #0xc]
	bl Heap_Free
	add r0, r7, #0
	bl PokeathlonCourse_FreePtr4HeapAlloc
	ldr r0, _021F7D0C ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0x89
	bl Heap_Destroy
	bl sub_0203A914
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F7D04: .word 0x04000050
_021F7D08: .word ov96_0221C290
_021F7D0C: .word gSystem + 0x60
	thumb_func_end ov96_021F7C70

	thumb_func_start ov96_021F7D10
ov96_021F7D10: ; 0x021F7D10
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F7D2C ; =ov96_0221C310
	add r3, sp, #0
	mov r2, #5
_021F7D1A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F7D1A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F7D2C: .word ov96_0221C310
	thumb_func_end ov96_021F7D10

	thumb_func_start ov96_021F7D30
ov96_021F7D30: ; 0x021F7D30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc0
	ldr r4, _021F7D98 ; =ov96_0221C2B4
	add r3, sp, #8
	add r7, r0, #0
	str r1, [sp]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021F7D9C ; =ov96_0221C338
	add r3, sp, #0x18
	mov r2, #0x15
_021F7D52:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F7D52
	mov r0, #0
	ldr r4, _021F7DA0 ; =ov96_0221C298
	ldr r5, _021F7DA4 ; =ov96_0221C290
	str r0, [sp, #4]
	add r6, sp, #0x18
_021F7D64:
	ldrb r1, [r5]
	ldrb r3, [r4]
	add r0, r7, #0
	add r2, r6, #0
	bl InitBgFromTemplate
	ldrb r1, [r5]
	add r0, r7, #0
	bl BgClearTilemapBufferAndCommit
	ldrb r0, [r5]
	ldr r3, [sp]
	mov r1, #0x40
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #1
	add r6, #0x1c
	add r5, r5, #1
	str r0, [sp, #4]
	cmp r0, #6
	blt _021F7D64
	add sp, #0xc0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F7D98: .word ov96_0221C2B4
_021F7D9C: .word ov96_0221C338
_021F7DA0: .word ov96_0221C298
_021F7DA4: .word ov96_0221C290
	thumb_func_end ov96_021F7D30

