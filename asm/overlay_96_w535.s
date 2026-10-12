	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02203924
	.public ov96_02203970
	.extern ov96_021EB594
	.extern ov96_021EB630
	.extern ov96_0221C95C

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
	thumb_func_start ov96_02203924
ov96_02203924: ; 0x02203924
	push {r4, r5}
	ldrh r2, [r0]
	ldr r3, [r1, #4]
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	ldr r2, [r0, #4]
	cmp r2, r3
	ble _0220393A
	mov r2, #0
	mvn r2, r2
	b _02203966
_0220393A:
	cmp r2, r3
	bge _02203942
	mov r2, #1
	b _02203966
_02203942:
	ldr r4, _0220396C ; =ov96_0221C95C
	mov r2, #0xc
	add r3, r5, #0
	mul r3, r2
	ldrh r1, [r1, #2]
	add r3, r4, r3
	ldrh r0, [r0, #2]
	ldrb r1, [r3, r1]
	ldrb r0, [r3, r0]
	cmp r0, r1
	bhs _0220395C
	sub r2, #0xd
	b _02203966
_0220395C:
	cmp r0, r1
	bls _02203964
	mov r2, #1
	b _02203966
_02203964:
	mov r2, #0
_02203966:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
_0220396C: .word ov96_0221C95C
	thumb_func_end ov96_02203924

	thumb_func_start ov96_02203970
ov96_02203970: ; 0x02203970
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
_0220397A:
	mov r0, #0x48
	add r6, r4, #0
	mul r6, r0
	add r0, r5, r6
	add r0, #0xbc
	ldr r0, [r0]
	bl ov96_021EB594
	add r3, r5, r6
	add r3, #0xf9
	ldrb r3, [r3]
	lsl r1, r4, #3
	add r2, sp, #4
	add r2, r2, r1
	strh r3, [r2, #2]
	ldr r0, [r0, #4]
	str r0, [r2, #4]
	add r0, sp, #4
	strh r7, [r0, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _0220397A
	ldr r0, _022039F8 ; =0x00000598
	ldr r3, _022039FC ; =ov96_02203924
	ldr r0, [r5, r0]
	mov r1, #0xc
	str r0, [sp]
	add r0, sp, #4
	mov r2, #8
	bl MATH_QSort
	mov r4, #0
	add r7, sp, #4
_022039C0:
	lsl r0, r4, #3
	add r0, r7, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r6, r1, #0
	mov r0, #0x48
	mul r6, r0
	add r0, r5, r6
	add r0, #0xb8
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x14
	bl ov96_021EB630
	add r0, r5, r6
	add r0, #0xc0
	ldr r0, [r0]
	add r1, r4, #5
	bl ov96_021EB630
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _022039C0
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022039F8: .word 0x00000598
_022039FC: .word ov96_02203924
	thumb_func_end ov96_02203970

