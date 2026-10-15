	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02217E7C
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_022178A0
	.extern ov96_02217DC8
	.extern ov96_02217E08
	.extern ov96_02218598
	.extern ov96_02218744

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
	thumb_func_start ov96_02217E7C
ov96_02217E7C: ; 0x02217E7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	bl PokeathlonCourse_GetHeapAllocPtr4
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, #0x1c
	ldr r7, [sp, #4]
	add r4, r0, r1
_02217E9A:
	add r0, r4, #0
	bl ov96_02218744
	cmp r0, #0
	beq _02217EB4
	mov r0, #0x5d
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _02217EB4
	ldr r0, [sp, #0xc]
	add r6, r0, #1
	cmp r6, #4
	blt _02217EB6
_02217EB4:
	b _02217FBC
_02217EB6:
	mov r1, #0x69
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xa8
	mul r0, r6
	add r5, r1, r0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r1, r0
	lsl r0, r6, #2
	add r0, r1, r0
	str r0, [sp]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0x2c
	str r0, [sp, #0x10]
_02217ED8:
	add r0, r5, #0
	bl ov96_02218744
	cmp r0, #0
	beq _02217FAE
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_02218598
	cmp r0, #0
	beq _02217FAE
	mov r1, #0
	add r0, sp, #0x24
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldrb r0, [r7, r6]
	cmp r0, #0
	beq _02217F0E
	ldr r0, [r4, #0x60]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	bne _02217F0E
	ldr r0, [sp]
	strb r1, [r0]
	ldrb r0, [r0]
	strb r0, [r7, r6]
_02217F0E:
	ldrb r0, [r7, r6]
	cmp r0, #0
	bne _02217FAE
	add r1, r5, #0
	ldr r0, [sp, #0x10]
	add r1, #0x2c
	add r2, sp, #0x24
	bl VEC_Subtract
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _02217F44
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _02217F44
	bl MTRandom
	mov r1, #0x3f
	and r0, r1
	sub r0, #0x20
	str r0, [sp, #0x24]
	bl MTRandom
	mov r1, #0x3f
	and r0, r1
	sub r0, #0x20
	str r0, [sp, #0x28]
_02217F44:
	add r0, sp, #0x24
	add r1, r0, #0
	bl VEC_Normalize
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0x24
	bl ov96_022178A0
	str r0, [sp, #0x14]
	mov r0, #0
	ldr r1, [sp, #0x24]
	mvn r0, r0
	mul r0, r1
	str r0, [sp, #0x24]
	mov r0, #0
	ldr r1, [sp, #0x28]
	mvn r0, r0
	mul r0, r1
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x24
	bl ov96_022178A0
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl ov96_02217E08
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov96_02217E08
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov96_02217DC8
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov96_02217DC8
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02217FA4
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02217FAE
_02217FA4:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0]
	ldrb r0, [r0]
	strb r0, [r7, r6]
_02217FAE:
	ldr r0, [sp]
	add r6, r6, #1
	add r0, r0, #4
	add r5, #0xa8
	str r0, [sp]
	cmp r6, #4
	blt _02217ED8
_02217FBC:
	ldr r0, [sp, #0xc]
	add r4, #0xa8
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0xc]
	cmp r0, #4
	bge _02217FCC
	b _02217E9A
_02217FCC:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_02217E7C

