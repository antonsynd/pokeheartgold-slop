	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022144C0
	.public ov96_0221454C
	.public ov96_0221457C
	.extern ov96_021EABA8

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
	thumb_func_start ov96_022144C0
ov96_022144C0: ; 0x022144C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	mov r5, #0
	add r4, sp, #0xc
	mov r7, #0x7c
_022144CC:
	lsl r2, r5, #3
	add r1, r6, r5
	str r1, [r4, r2]
	add r1, r5, #0
	mul r1, r7
	add r3, r4, r2
	add r1, r0, r1
	str r1, [r3, #4]
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, #3
	blo _022144CC
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r1, r0
	blo _022144F8
	add r0, r4, #0
	add r4, sp, #0x14
	b _022144FA
_022144F8:
	add r0, sp, #0x14
_022144FA:
	ldr r1, [sp, #0x1c]
	ldrb r2, [r1]
	ldr r1, [r0]
	ldrb r1, [r1]
	cmp r1, r2
	blo _02214522
	ldr r1, [r4]
	ldrb r1, [r1]
	cmp r1, r2
	blo _02214518
	str r0, [sp]
	add r0, sp, #0x1c
	str r4, [sp, #4]
	str r0, [sp, #8]
	b _0221452A
_02214518:
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	str r4, [sp, #8]
	b _0221452A
_02214522:
	add r1, sp, #0x1c
	str r1, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
_0221452A:
	mov r5, #0
	add r4, sp, #0
_0221452E:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	ldr r0, [r0, #4]
	add r1, #8
	ldr r0, [r0]
	bl ov96_021EABA8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _0221452E
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_022144C0

	thumb_func_start ov96_0221454C
ov96_0221454C: ; 0x0221454C
	ldrh r3, [r1, #2]
	ldrh r2, [r0, #2]
	cmp r2, r3
	bls _0221455A
	mov r0, #0
	mvn r0, r0
	bx lr
_0221455A:
	cmp r2, r3
	bhs _02214562
	mov r0, #1
	bx lr
_02214562:
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r0, r1
	bhs _02214570
	mov r0, #0
	mvn r0, r0
	bx lr
_02214570:
	cmp r0, r1
	bls _02214578
	mov r0, #1
	bx lr
_02214578:
	mov r0, #0
	bx lr
	thumb_func_end ov96_0221454C

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

