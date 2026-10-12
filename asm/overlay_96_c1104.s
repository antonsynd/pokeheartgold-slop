	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02218A68
	.extern ov96_021EB0A4
	.extern ov96_0221D6E4
	.extern ov96_0221D6E6

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
	thumb_func_start ov96_02218A68
ov96_02218A68: ; 0x02218A68
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	ldr r1, _02218AD8 ; =ov96_0221D6E4
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1e
	lsl r2, r0, #2
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r3, _02218ADC ; =ov96_0221D6E6
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	ldr r0, [r0]
	add r3, sp, #8
	bl ov96_021EB0A4
	ldr r0, [sp, #8]
	add r2, r4, #0
	lsl r0, r0, #0xc
	str r0, [r4, #0x2c]
	ldr r0, [sp, #4]
	add r3, sp, #0xc
	lsl r0, r0, #0xc
	str r0, [r4, #0x30]
	ldr r0, [sp, #8]
	add r2, #0x44
	lsl r0, r0, #0xc
	str r0, [r4, #0x20]
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r3, #8]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [r4, #0x60]
	ldr r0, _02218AE0 ; =0xFFF0FFFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x10
	orr r1, r0
	ldr r0, _02218AE4 ; =0xF7FFFFFF
	and r1, r0
	ldr r0, _02218AE8 ; =0xDFFFFFFF
	and r1, r0
	ldr r0, _02218AEC ; =0xBFFFFFFF
	and r0, r1
	str r0, [r4, #0x60]
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_02218AD8: .word ov96_0221D6E4
_02218ADC: .word ov96_0221D6E6
_02218AE0: .word 0xFFF0FFFF
_02218AE4: .word 0xF7FFFFFF
_02218AE8: .word 0xDFFFFFFF
_02218AEC: .word 0xBFFFFFFF
	thumb_func_end ov96_02218A68

