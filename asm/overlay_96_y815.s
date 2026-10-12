	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221567C
	.public ov96_022156A8
	.extern ov96_02215614

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
	thumb_func_start ov96_0221567C
ov96_0221567C: ; 0x0221567C
	push {r3, lr}
	bl ov96_02215614
	ldr r1, _022156A4 ; =0xFFFFFFF8
	add r1, sp
	ldrb r2, [r1, #0x14]
	ldrb r1, [r1, #0x10]
	cmp r2, r1
	bne _0221569E
	mov r1, #3
	sub r1, r1, r2
	cmp r1, r0
	beq _0221569A
	mov r0, #1
	pop {r3, pc}
_0221569A:
	mov r0, #0
	pop {r3, pc}
_0221569E:
	mov r0, #0
	pop {r3, pc}
	nop
_022156A4: .word 0xFFFFFFF8
	thumb_func_end ov96_0221567C

	thumb_func_start ov96_022156A8
ov96_022156A8: ; 0x022156A8
	push {r4, r5, r6, r7}
	mov r7, #0
	add r3, r7, #0
	add r4, r7, #0
	sub r3, #8
	sub r4, #8
_022156B4:
	lsl r5, r7, #2
	add r6, r2, r5
	ldrh r5, [r2, r5]
	ldrh r6, [r6, #2]
	sub r5, r0, r5
	sub r6, r1, r6
	cmp r5, r4
	blt _022156D6
	cmp r5, #8
	bgt _022156D6
	cmp r6, r3
	blt _022156D6
	cmp r6, #8
	bgt _022156D6
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_022156D6:
	add r5, r7, #1
	lsl r5, r5, #0x18
	lsr r7, r5, #0x18
	cmp r7, #3
	blo _022156B4
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_022156A8

