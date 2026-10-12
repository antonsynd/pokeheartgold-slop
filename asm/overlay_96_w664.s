	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220E890
	.public ov96_0220E8C0
	.extern ov96_0220E888

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
	thumb_func_start ov96_0220E890
ov96_0220E890: ; 0x0220E890
	ldr r2, [r0]
	cmp r2, #0
	beq _0220E8BC
	bge _0220E89C
	neg r3, r2
	b _0220E89E
_0220E89C:
	add r3, r2, #0
_0220E89E:
	cmp r3, r1
	bge _0220E8A8
	mov r1, #0
	str r1, [r0]
	bx lr
_0220E8A8:
	cmp r2, #0
	ble _0220E8B0
	mov r2, #1
	b _0220E8B4
_0220E8B0:
	mov r2, #0
	mvn r2, r2
_0220E8B4:
	ldr r3, [r0]
	mul r2, r1
	sub r1, r3, r2
	str r1, [r0]
_0220E8BC:
	bx lr
	.balign 4, 0
	thumb_func_end ov96_0220E890

	thumb_func_start ov96_0220E8C0
ov96_0220E8C0: ; 0x0220E8C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0xfe
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	mov r6, #0
	lsl r7, r7, #0x16
	cmp r5, #0
	bne _0220E8D8
	bl GF_AssertFail
_0220E8D8:
	ldrb r0, [r5]
	str r0, [sp, #4]
	sub r0, r4, r0
	bl ov96_0220E888
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov96_0220E888
	sub r4, r4, r0
	beq _0220E94E
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0220E906
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0220E914
_0220E906:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0220E914:
	bl _ffix
	cmp r0, #0
	beq _0220E94E
	mov r1, #0xa
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, _0220E958 ; =0xFFFE8000
	mul r6, r4
	cmp r6, r0
	bgt _0220E92E
	add r6, r0, #0
_0220E92E:
	mov r0, #1
	lsl r0, r0, #0xe
	sub r0, r6, r0
	mov r1, #0x64
	bl _s32_div_f
	bl _fflt
	ldr r1, _0220E95C ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	add r0, r7, #0
	bl _fsub
	add r7, r0, #0
_0220E94E:
	ldr r0, [sp]
	str r7, [r0]
	asr r0, r6, #0xc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220E958: .word 0xFFFE8000
_0220E95C: .word 0x45800000
	thumb_func_end ov96_0220E8C0

