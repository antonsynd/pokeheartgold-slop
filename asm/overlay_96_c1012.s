	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022144C0
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

