	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02215DD4
	.public ov96_02215DEC
	.public ov96_02215E2C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021EB06C

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
	thumb_func_start ov96_02215DD4
ov96_02215DD4: ; 0x02215DD4
	push {r4, lr}
	add r4, r1, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	mov r1, #0x69
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xa8
	mul r0, r4
	add r0, r1, r0
	add r0, #0x2c
	pop {r4, pc}
	thumb_func_end ov96_02215DD4

	thumb_func_start ov96_02215DEC
ov96_02215DEC: ; 0x02215DEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	mov r1, #0x69
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xa8
	mul r0, r5
	add r2, r1, r0
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r2, #4]
	ldr r1, [r2, #0x2c]
	ldr r2, [r2, #0x30]
	ldr r0, [r0]
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	add r3, sp, #8
	bl ov96_021EB06C
	ldr r0, [sp, #8]
	lsl r0, r0, #0xc
	str r0, [r4]
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [r4, #4]
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_02215DEC

	thumb_func_start ov96_02215E2C
ov96_02215E2C: ; 0x02215E2C
	push {r4, lr}
	add r4, r1, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	mov r1, #0xa8
	mul r1, r4
	add r1, r0, r1
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1c
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_02215E2C

