	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EAF94
	.public ov96_021EB01C
	.public ov96_021EB03C
	.public ov96_021EB06C
	.public ov96_021EB0A4
	.public ov96_021EB0CC
	.extern ov96_021E8BAC
	.extern ov96_021E92AC
	.extern ov96_021EAD88

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
	thumb_func_start ov96_021EAF94
ov96_021EAF94: ; 0x021EAF94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5]
	add r6, r2, #0
	bl ov96_021E8BAC
	add r2, sp, #0x10
	add r3, sp, #4
	str r0, [sp]
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	lsl r0, r4, #0xc
	str r0, [sp, #0x10]
	lsl r0, r6, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EAFD2
	add r1, r7, #0
	bl Sprite_SetMatrix
_021EAFD2:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EAFDE
	add r1, sp, #0x10
	bl Sprite_SetMatrix
_021EAFDE:
	ldr r0, [r5, #0x10]
	add r1, r6, r0
	ldr r0, [r5, #0x18]
	lsl r0, r0, #1
	sub r0, r1, r0
	ldr r1, [r5, #0x14]
	str r4, [r5, #0x20]
	sub r2, r4, r1
	ldr r1, [r5, #0x18]
	add r1, r0, r1
	str r1, [r5, #0x24]
	lsl r1, r2, #0xc
	lsl r0, r0, #0xc
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	bl ov96_021E92AC
	cmp r0, #0
	beq _021EB010
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
_021EB010:
	ldr r0, [sp]
	add r1, sp, #4
	bl Sprite_SetMatrix
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EAF94

	thumb_func_start ov96_021EB01C
ov96_021EB01C: ; 0x021EB01C
	push {r4, r5, r6, lr}
	ldr r5, [r0, #0x14]
	ldr r4, [r0, #0x28]
	sub r1, r1, r5
	ldr r5, [r0, #0x18]
	lsl r5, r5, #1
	sub r6, r5, r4
	lsr r5, r6, #0x1f
	add r5, r6, r5
	asr r5, r5, #1
	add r4, r4, r5
	sub r2, r2, r4
	bl ov96_021EAD88
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB01C

	thumb_func_start ov96_021EB03C
ov96_021EB03C: ; 0x021EB03C
	push {r4, r5, r6, r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r1, [r4, #0x18]
	add r6, r3, #0
	ldr r3, [r4, #0x28]
	lsl r5, r1, #1
	add r0, r2, #0
	sub r2, r5, r3
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r1, r3, r1
	lsl r1, r1, #0xc
	sub r0, r0, r1
	ldr r1, [r4, #0x2c]
	sub r1, r5, r1
	lsl r1, r1, #0xc
	add r1, r0, r1
	ldr r0, [sp, #0x10]
	str r7, [r6]
	str r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov96_021EB03C

	thumb_func_start ov96_021EB06C
ov96_021EB06C: ; 0x021EB06C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	ldr r1, [r4, #4]
	add r0, r2, #0
	add r6, r3, #0
	cmp r1, #0
	bne _021EB082
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021EB082:
	ldr r1, [r4, #0x18]
	ldr r3, [r4, #0x28]
	lsl r5, r1, #1
	sub r2, r5, r3
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r1, r3, r1
	sub r0, r0, r1
	add r1, r0, r5
	ldr r0, [r4, #0x10]
	sub r1, r1, r0
	ldr r0, [sp, #0x18]
	str r7, [r6]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB06C

	thumb_func_start ov96_021EB0A4
ov96_021EB0A4: ; 0x021EB0A4
	push {r3, r4}
	ldr r4, [r0, #0x10]
	add r4, r2, r4
	ldr r2, [r0, #0x18]
	str r1, [r3]
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x18]
	lsl r2, r2, #1
	lsl r0, r0, #1
	sub r3, r0, r1
	lsr r0, r3, #0x1f
	add r0, r3, r0
	sub r2, r4, r2
	asr r0, r0, #1
	add r0, r2, r0
	add r1, r1, r0
	ldr r0, [sp, #8]
	str r1, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021EB0A4

	thumb_func_start ov96_021EB0CC
ov96_021EB0CC: ; 0x021EB0CC
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	lsl r0, r3, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r2, [sp, #0x10]
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	add r0, sp, #0
	add r1, sp, #0xc
	add r2, sp, #0x18
	bl VEC_Subtract
	add r0, sp, #0x18
	bl VEC_Mag
	ldr r1, [r4, #0x1c]
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _021EB104
	add sp, #0x24
	mov r0, #1
	pop {r3, r4, pc}
_021EB104:
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB0CC

