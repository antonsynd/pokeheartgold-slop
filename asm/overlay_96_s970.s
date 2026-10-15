	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220A910
	.extern ov96_0220B148
	.extern ov96_0221CDD8

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
	thumb_func_start ov96_0220A910
ov96_0220A910: ; 0x0220A910
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	bne _0220A91C
	bl GF_AssertFail
_0220A91C:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r1, r0, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0220A930
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0220A930:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0220A93A
	bl GF_AssertFail
_0220A93A:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	sub r0, #0x30
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x10
	add r1, #2
	add r2, sp, #0x10
	bl ov96_0220B148
	add r0, sp, #0x18
	add r1, sp, #0x14
	bl System_GetTouchNewCoords
	add r1, sp, #0x10
	mov r0, #0
	ldrsh r0, [r1, r0]
	str r0, [sp]
	ldr r0, [sp]
	ldr r4, [sp, #0x14]
	sub r0, #0x12
	cmp r4, r0
	blo _0220A978
	ldr r0, [sp]
	add r0, #0xc
	cmp r4, r0
	bls _0220A97A
_0220A978:
	b _0220AAE2
_0220A97A:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0220A992
	lsl r0, r0, #0xc
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0220A9A0
_0220A992:
	lsl r0, r0, #0xc
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0220A9A0:
	bl _ffix
	str r0, [sp, #0xc]
	cmp r4, #0
	beq _0220A9BC
	lsl r0, r4, #0xc
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0220A9CA
_0220A9BC:
	lsl r0, r4, #0xc
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0220A9CA:
	bl _ffix
	str r0, [sp, #8]
	mov r6, #0x3f
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r0, [r1, r0]
	ldr r4, _0220AAE8 ; =ov96_0221CDD8
	mov r7, #0
	add r5, sp, #0x1c
	str r0, [sp, #4]
	lsl r6, r6, #0x18
_0220A9E2:
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #4]
	add r0, r0, r1
	cmp r0, #0
	ble _0220A9FE
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _0220AA0A
_0220A9FE:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_0220AA0A:
	bl _ffix
	str r0, [r5]
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, [sp]
	add r0, r0, r1
	cmp r0, #0
	ble _0220AA2C
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _0220AA38
_0220AA2C:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_0220AA38:
	bl _ffix
	str r0, [r5, #4]
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0xc
	cmp r7, #4
	blt _0220A9E2
	ldr r4, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	sub r2, r2, r4
	sub r0, r1, r0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [sp, #0x28]
	sub r1, r1, r4
	bl FX_Div
	ldr r1, [sp, #0x20]
	ldr r5, [sp, #0x34]
	add r4, r0, r1
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	sub r2, r2, r5
	sub r0, r1, r0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [sp, #0x40]
	sub r1, r1, r5
	bl FX_Div
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0xc]
	add r0, r0, r1
	ldr r1, [sp, #0x28]
	cmp r2, r1
	blt _0220AAB6
	ldr r3, [sp, #0x34]
	cmp r2, r3
	ble _0220AADC
_0220AAB6:
	ldr r2, [sp, #8]
	cmp r2, r4
	blt _0220AAC8
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	cmp r2, r3
	blt _0220AAC8
	cmp r2, r1
	ble _0220AADC
_0220AAC8:
	ldr r1, [sp, #8]
	cmp r1, r0
	bgt _0220AAE2
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0220AAE2
	ldr r1, [sp, #0x40]
	cmp r0, r1
	bgt _0220AAE2
_0220AADC:
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0220AAE2:
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0220AAE8: .word ov96_0221CDD8
	thumb_func_end ov96_0220A910

