	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022091B4
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E6454
	.extern ov96_021E8228
	.extern ov96_021E8A20
	.extern ov96_021EB144
	.extern ov96_02209BB0
	.extern ov96_02209BF8
	.extern ov96_02209E70
	.extern ov96_0220A298
	.extern ov96_0220A5DC
	.extern ov96_0220A704
	.extern ov96_0220A840
	.extern ov96_0220A87C
	.extern ov96_0220A8CC
	.extern ov96_0220A910
	.extern ov96_0220AAEC
	.extern ov96_0220AD34
	.extern ov96_0220AD4C
	.extern ov96_0220B528
	.extern ov96_0220B634
	.extern ov96_0220B708
	.extern ov96_0220B758
	.extern ov96_0220B774
	.extern ov96_0220B7B4
	.extern ov96_0220B7CC
	.extern ov96_0220B8D8
	.extern ov96_0220B8F0
	.extern ov96_0220C9A0

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
	thumb_func_start ov96_022091B4
ov96_022091B4: ; 0x022091B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0220920C
	ldr r0, [r4, #0x40]
	bl ov96_0220AD4C
	add r1, r0, #0
	add r0, r5, #0
	bl ov96_0220A5DC
	add r0, r4, #0
	bl ov96_02209BF8
	ldr r0, [r4, #0x4c]
	mov r1, #0
	bl ov96_0220B708
	ldr r0, [r4, #0x44]
	bl ov96_0220B8F0
	ldr r0, [r4, #0x40]
	bl ov96_0220A87C
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov96_021EB144
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0220920C:
	bl System_GetTouchNew
	cmp r0, #0
	beq _0220922E
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_0220922E:
	add r0, r4, #0
	bl ov96_02209E70
	ldr r0, [r4, #0x40]
	bl ov96_0220A840
	ldr r0, [r4, #0x40]
	bl ov96_0220AD34
	add r6, r0, #0
	cmp r6, #1
	bne _0220924A
	mov r1, #1
	b _0220924C
_0220924A:
	mov r1, #0
_0220924C:
	ldr r0, [r4, #0x4c]
	bl ov96_0220B528
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _02209262
	ldr r0, [r4, #0x48]
	bl ov96_0220C9A0
_02209262:
	ldr r0, [r4, #0x44]
	bl ov96_0220B8D8
	ldr r0, [r4, #0x40]
	bl ov96_0220A910
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov96_0220A298
	ldr r0, [r4, #0x4c]
	bl ov96_0220B7CC
	cmp r0, #0
	beq _02209312
	cmp r6, #2
	bne _02209312
	cmp r7, #0
	beq _02209312
	ldr r0, [r4, #0x4c]
	bl ov96_0220B758
	add r6, r0, #0
	ldr r0, [r4, #0x4c]
	bl ov96_0220B774
	ldr r1, [r6]
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	lsr r1, r1, #0x1a
	bl ov96_0220A8CC
	add r7, r0, #0
	ldr r0, [r4, #0x4c]
	bl ov96_0220B7B4
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r3, r7, #0
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r2, [r6]
	ldr r0, [r4, #0x40]
	lsl r2, r2, #0x17
	lsr r2, r2, #0x17
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov96_0220AAEC
	add r2, r0, #0
	ldr r0, [r4, #0x4c]
	add r1, r7, #0
	bl ov96_0220B634
	add r0, r4, #0
	bl ov96_02209BB0
	cmp r7, #0
	beq _022092EC
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #2
	bl ov96_0220A704
	b _02209312
_022092EC:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022092FE
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov96_0220A704
	b _02209312
_022092FE:
	ldr r0, [r4, #0x4c]
	bl ov96_0220B774
	cmp r0, #0
	beq _02209312
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov96_0220A704
_02209312:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _02209320
	sub r1, r1, #1
	str r1, [r4, r0]
_02209320:
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov96_021E6454
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02209356
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _02209356
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	mov r1, #1
	ldr r2, [r0, #0x10]
	lsl r1, r1, #0x10
	orr r1, r2
	str r1, [r0, #0x10]
_02209356:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_022091B4

