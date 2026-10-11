	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F7740
	.public ov96_021F77EC
	.extern ov96_021E8228
	.extern ov96_021E8A20

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
	thumb_func_start ov96_021F7740
ov96_021F7740: ; 0x021F7740
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #4
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #4
	bne _021F775C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F775C:
	ldrb r0, [r5, #0x1e]
	add r0, r0, #1
	strb r0, [r5, #0x1e]
	add r0, r5, #0
	add r0, #0x20
	ldrb r6, [r0]
	cmp r6, #4
	bge _021F7788
	mov r0, #0x28
	add r4, r6, #0
	mul r4, r0
	mov r7, #0
_021F7774:
	ldr r0, [r5, #4]
	add r0, #0x50
	add r0, r0, r4
	bl ov96_021E8A20
	add r6, r6, #1
	add r4, #0x28
	str r7, [r0]
	cmp r6, #4
	blt _021F7774
_021F7788:
	ldrb r1, [r5, #0x1e]
	ldrb r0, [r5, #0x1f]
	cmp r1, r0
	blo _021F7798
	mov r0, #1
	str r0, [r5]
	mov r0, #0
	strb r0, [r5, #0x1e]
_021F7798:
	ldr r0, [r5]
	cmp r0, #0
	beq _021F77E6
	add r0, r5, #0
	add r0, #0x20
	ldrb r1, [r0]
	ldrb r0, [r5, #0x1d]
	add r4, r1, r0
	cmp r4, r1
	bge _021F77B0
	bl GF_AssertFail
_021F77B0:
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r4, r0
	bge _021F77C0
	add sp, #8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021F77C0:
	lsl r2, r4, #0x18
	ldr r0, [sp]
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F77EC
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrb r0, [r5, #0x1d]
	add r0, r0, #1
	strb r0, [r5, #0x1d]
	ldrb r1, [r5, #0x1d]
	ldrb r0, [r5, #0x1c]
	cmp r1, r0
	blo _021F77E6
	mov r0, #0
	strb r0, [r5, #0x1d]
	str r0, [r5]
_021F77E6:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F7740

	thumb_func_start ov96_021F77EC
ov96_021F77EC: ; 0x021F77EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, [r6, #4]
	str r0, [sp, #4]
	add r5, r2, #0
	mov r0, #0x28
	add r1, #0x50
	mul r0, r5
	add r0, r1, r0
	bl ov96_021E8A20
	add r4, r6, #0
	add r4, #8
	add r7, r0, #0
	ldrb r0, [r4, r5]
	cmp r0, #0
	bne _021F7814
	mov r0, #0
	b _021F782A
_021F7814:
	bl LCRandom
	mov r1, #0x65
	bl _s32_div_f
	add r0, r6, r5
	ldrb r2, [r4, r5]
	ldrb r0, [r0, #0xc]
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
_021F782A:
	cmp r0, #0x64
	blt _021F7874
	mov r0, #1
	str r0, [r7]
	bl LCRandom
	ldrb r1, [r4, r5]
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsl r1, r5, #1
	add r1, r5, r1
	lsr r0, r0, #0x18
	mov r4, #0
	add r1, r6, r1
_021F7848:
	add r2, r1, r4
	ldrb r2, [r2, #0x10]
	cmp r0, r2
	bhs _021F7862
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	bl ov96_021E8228
	b _021F786C
_021F7862:
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #3
	blo _021F7848
_021F786C:
	cmp r4, #3
	blo _021F7874
	bl GF_AssertFail
_021F7874:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F77EC

