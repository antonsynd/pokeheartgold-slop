	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EEFAC
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetSaveData
	.extern ov96_021EE740
	.extern ov96_021EE75C
	.extern ov96_021EEECC
	.extern ov96_021EEEEC
	.extern ov96_021EEF0C

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
	thumb_func_start ov96_021EEFAC
ov96_021EEFAC: ; 0x021EEFAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r2, #1
	add r5, r0, #0
	mov r1, #0x9f
	mov r0, #0x5c
	lsl r2, r2, #0x12
	bl Heap_Create
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021EF04C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021EF050 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021EEECC
	add r0, r5, #0
	mov r1, #0x10
	bl PokeathlonCourse_AllocPtr4FromHeap
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x9f
	str r0, [r4]
	bl BgConfig_Alloc
	str r0, [r4, #4]
	ldr r1, [r4]
	bl ov96_021EEF0C
	ldr r0, [r4]
	bl ov96_021EE740
	str r0, [r4, #8]
	add r0, r5, #0
	bl PokeathlonCourse_GetMode
	add r6, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetSaveData
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	mov r2, #0
	add r3, r6, #0
	bl ov96_021EE75C
	ldr r0, _021EF054 ; =ov96_021EEEEC
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	ldr r0, _021EF058 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EF04C: .word 0xFFFFE0FF
_021EF050: .word 0x04001000
_021EF054: .word ov96_021EEEEC
_021EF058: .word gSystem + 0x60
	thumb_func_end ov96_021EEFAC

