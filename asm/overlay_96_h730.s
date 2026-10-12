	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02200950
	.extern ov96_021EB52C
	.extern ov96_021EB564
	.extern ov96_022004B4

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
	thumb_func_start ov96_02200950
ov96_02200950: ; 0x02200950
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	mov r3, #0x5b
	add r5, r0, #0
	lsl r3, r3, #2
	add r4, r1, #0
	add r7, r5, r3
	ldrb r3, [r7, r4]
	ldr r6, [sp, #0x18]
	cmp r2, r3
	beq _0220096C
	strb r2, [r7, r4]
	bl ov96_022004B4
_0220096C:
	ldr r0, [sp]
	cmp r0, #0
	beq _0220099A
	lsl r4, r4, #5
	add r0, r5, r4
	ldr r0, [r0, #0x48]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	add r0, r5, r4
	mov r1, #1
	ldr r0, [r0, #0x50]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, r4
	ldr r0, [r0, #0x4c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	b _02200A0E
_0220099A:
	lsl r4, r4, #5
	add r0, r5, r4
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, r4
	ldr r0, [r0, #0x50]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	cmp r6, #1
	beq _022009BE
	cmp r6, #2
	beq _022009E0
	b _02200A02
_022009BE:
	add r0, r5, r4
	add r0, #0x58
	ldrb r0, [r0]
	cmp r6, r0
	beq _02200A0E
	add r7, r5, #0
	add r7, #0x4c
	mov r1, #1
	ldr r0, [r7, r4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r7, r4]
	mov r1, #8
	bl ov96_021EB564
	b _02200A0E
_022009E0:
	add r0, r5, r4
	add r0, #0x58
	ldrb r0, [r0]
	cmp r6, r0
	beq _02200A0E
	add r7, r5, #0
	add r7, #0x4c
	mov r1, #1
	ldr r0, [r7, r4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r7, r4]
	mov r1, #9
	bl ov96_021EB564
	b _02200A0E
_02200A02:
	add r0, r5, r4
	ldr r0, [r0, #0x4c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_02200A0E:
	add r0, r5, r4
	add r0, #0x58
	strb r6, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02200950

