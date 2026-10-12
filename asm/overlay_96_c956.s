	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220FF88
	.extern ov96_0220FB98
	.extern ov96_0220FF68

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
	thumb_func_start ov96_0220FF88
ov96_0220FF88: ; 0x0220FF88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r4, #1
	bl ov96_0220FF68
	lsl r0, r0, #0x1c
	add r2, r5, #0
	ldr r3, [r5, #0x1c]
	ldr r1, _0221002C ; =0xFFFFF0FF
	lsr r0, r0, #0x14
	and r1, r3
	orr r0, r1
	str r0, [r5, #0x1c]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1c
	add r2, #0x1c
	cmp r0, #3
	bhi _0220FFD8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220FFBA: ; jump table
	.short _0220FFC2 - _0220FFBA - 2 ; case 0
	.short _0220FFD0 - _0220FFBA - 2 ; case 1
	.short _0220FFC2 - _0220FFBA - 2 ; case 2
	.short _0220FFD0 - _0220FFBA - 2 ; case 3
_0220FFC2:
	ldr r1, [r2]
	mov r0, #0xff
	bic r1, r0
	mov r0, #0x1e
	orr r0, r1
	str r0, [r2]
	b _0220FFD8
_0220FFD0:
	ldr r1, [r2]
	mov r0, #0xff
	bic r1, r0
	str r1, [r2]
_0220FFD8:
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1c
	cmp r0, #3
	bhs _0220FFE6
	mov r1, #4
	b _0220FFF4
_0220FFE6:
	bl MTRandom
	mov r1, #1
	and r0, r1
	add r0, r0, #1
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x18
_0220FFF4:
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1c
	beq _0220FFFE
	mov r4, #2
_0220FFFE:
	mov r2, #0
	cmp r4, #0
	ble _0221002A
	add r0, r5, #0
	add r0, #8
_02210008:
	ldr r3, [r0]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1f
	bne _02210022
	mov r0, #0xc
	mul r0, r2
	add r3, r5, #4
	lsl r2, r2, #0x18
	add r0, r3, r0
	lsr r2, r2, #0x18
	bl ov96_0220FB98
	pop {r3, r4, r5, pc}
_02210022:
	add r2, r2, #1
	add r0, #0xc
	cmp r2, r4
	blt _02210008
_0221002A:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221002C: .word 0xFFFFF0FF
	thumb_func_end ov96_0220FF88

