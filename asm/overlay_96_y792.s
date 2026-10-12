	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221457C
	.extern ov96_021EABA8
	.extern ov96_0221454C

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
	thumb_func_start ov96_0221457C
ov96_0221457C: ; 0x0221457C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r5, #0
	str r0, [sp, #4]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r5, #0
_0221458A:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	cmp r0, r7
	beq _022145AC
	lsl r0, r5, #2
	add r1, sp, #8
	add r2, sp, #8
	add r1, r1, r0
	strh r4, [r2, r0]
	add r0, r6, r4
	ldrb r0, [r0, #0xc]
	strh r0, [r1, #2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_022145AC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _0221458A
	ldr r1, _02214610 ; =0x0000081C
	ldr r0, [sp, #4]
	ldr r3, _02214614 ; =ov96_0221454C
	ldr r0, [r0, r1]
	mov r1, #9
	str r0, [sp]
	add r0, sp, #8
	mov r2, #4
	bl MATH_QSort
	mov r5, #0
	add r7, sp, #8
_022145CE:
	lsl r0, r5, #2
	ldrh r0, [r7, r0]
	mov r1, #3
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl _s32_div_f
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x5d
	mov r2, #0x7c
	lsl r0, r0, #2
	mul r2, r1
	ldr r1, [sp, #4]
	mul r0, r4
	add r0, r1, r0
	add r0, r2, r0
	add r1, r5, #0
	ldr r0, [r0, #0x5c]
	add r1, #0x10
	bl ov96_021EABA8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #9
	blo _022145CE
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02214610: .word 0x0000081C
_02214614: .word ov96_0221454C
	thumb_func_end ov96_0221457C

