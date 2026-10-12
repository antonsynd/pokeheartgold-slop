	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022078B0
	.extern ov96_021EAF8C
	.extern ov96_02207990

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
	thumb_func_start ov96_022078B0
ov96_022078B0: ; 0x022078B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	mov r6, #0
	add r0, r2, #0
	strb r6, [r0]
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x58
	str r2, [sp]
	add r4, r7, #0
	str r0, [sp, #4]
_022078CA:
	ldr r0, [r4]
	cmp r0, #0
	beq _02207978
	ldr r0, [r4, #0xc]
	lsl r0, r0, #2
	add r0, r7, r0
	add r0, #0x64
	ldrh r0, [r0]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #2
	add r0, r7, r0
	add r0, #0x66
	ldrh r0, [r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xb1
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov96_021EAF8C
	add r2, r0, #0
	mov r3, #2
	ldr r0, [sp, #4]
	add r1, sp, #8
	lsl r2, r2, #0xc
	lsl r3, r3, #0xe
	bl ov96_02207990
	cmp r0, #0
	beq _0220796E
	add r0, r5, #0
	add r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #9
	blo _02207932
	add r5, #0xb3
	ldrb r0, [r5, r6]
	cmp r0, #0
	bne _0220792C
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0]
	strb r1, [r5, r6]
_0220792C:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02207932:
	add r0, r5, r6
	mov r1, #1
	add r0, #0xb3
	strb r1, [r0]
	mov r0, #0x14
	mov r1, #0
	mul r0, r6
	str r1, [r7, r0]
	add r0, r5, #0
	add r0, #0xaa
	ldrb r0, [r0]
	add r5, #0xaa
	add r0, r0, #1
	strb r0, [r5]
	add r0, r7, #0
	add r0, #0xb6
	ldrh r0, [r0]
	cmp r0, #0
	bne _0220795C
	bl GF_AssertFail
_0220795C:
	add r0, r7, #0
	add r0, #0xb6
	ldrh r0, [r0]
	add r7, #0xb6
	add sp, #0x14
	sub r0, r0, #1
	strh r0, [r7]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0220796E:
	add r1, r5, r6
	add r1, #0xb3
	mov r0, #0
	strb r0, [r1]
	b _02207980
_02207978:
	add r1, r5, r6
	add r1, #0xb3
	mov r0, #0
	strb r0, [r1]
_02207980:
	add r6, r6, #1
	add r4, #0x14
	cmp r6, #5
	blt _022078CA
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_022078B0

