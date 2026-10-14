	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E8FE0
	.extern ov96_021E8C70
	.extern ov96_021E8EE4
	.extern ov96_021E9104

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
	thumb_func_start ov96_021E8FE0
ov96_021E8FE0: ; 0x021E8FE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E8FF2
	cmp r0, #1
	beq _021E90BE
	b _021E90F4
_021E8FF2:
	ldrh r0, [r5, #2]
	ldr r1, [r5, #4]
	add r2, r5, #0
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r0, #0x2c
	add r4, r7, #0
	mul r4, r0
	ldr r0, [r5, #0xc]
	lsl r6, r7, #4
	str r7, [sp]
	ldr r1, [r5, #0x18]
	add r2, #0x54
	str r1, [sp, #4]
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r3, [r5, #0x1c]
	add r1, r1, r4
	add r2, r2, r6
	bl ov96_021E8C70
	mov r0, #0x55
	add r3, r5, r6
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, #0x54
	add r2, r0, r4
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x55
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r0, r0, r4
	bl ov96_021E9104
	mov r1, #0x55
	ldr r2, [r5, #0xc]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r1, r1, r4
	str r0, [r1, #0x24]
	ldr r2, [r5, #0xc]
	mov r1, #0
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _021E9068
	add r0, r5, r6
	add r0, #0x58
	ldrh r0, [r0]
	cmp r0, #0
	beq _021E9068
	mov r1, #1
_021E9068:
	mov r3, #0x55
	lsl r3, r3, #2
	mov r0, #0x2c
	ldr r2, [r2, r3]
	mul r0, r7
	add r2, r2, r0
	str r1, [r2, #0x28]
	ldr r1, [r5, #0xc]
	ldr r1, [r1, r3]
	add r0, r1, r0
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021E908A
	add r1, #0x24
	ldr r0, [r1, r4]
	add r0, #8
	str r0, [r1, r4]
_021E908A:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021E90A6
	mov r0, #0x55
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r6, r0, r4
	ldr r0, [r0, r4]
	bl sub_0200A740
	ldr r0, [r6, #4]
	bl sub_0200A740
_021E90A6:
	ldrh r0, [r5, #2]
	add r0, r0, #1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldrh r0, [r5]
	cmp r1, r0
	blo _021E90F4
	mov r0, #0
	strh r0, [r5, #2]
	mov r0, #1
	str r0, [r5, #8]
	b _021E90F4
_021E90BE:
	ldrh r0, [r5, #2]
	ldr r1, [r5, #4]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x20]
	bl ov96_021E8EE4
	ldrh r0, [r5, #2]
	add r0, r0, #1
	strh r0, [r5, #2]
	ldr r1, [r5, #0xc]
	ldrh r0, [r1, #6]
	add r0, r0, #1
	strh r0, [r1, #6]
	ldrh r1, [r5, #2]
	ldrh r0, [r5]
	cmp r1, r0
	blo _021E90F4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E90F4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8FE0

