	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220E6DC
	.public ov96_0220E70C

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
	thumb_func_start ov96_0220E6DC
ov96_0220E6DC: ; 0x0220E6DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	sub r0, r1, #7
	add r1, r5, #0
	mul r1, r0
	mov r0, #0x26
	mul r0, r1
	mov r1, #0xfa
	lsl r1, r1, #2
	bl _s32_div_f
	add r0, #0x80
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	lsl r0, r5, #0x11
	lsr r0, r0, #0x10
	bl GF_SinDeg
	lsl r0, r0, #6
	asr r0, r0, #0x10
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_0220E6DC

	thumb_func_start ov96_0220E70C
ov96_0220E70C: ; 0x0220E70C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _0220E71C
	bl GF_AssertFail
_0220E71C:
	cmp r4, #4
	blo _0220E724
	bl GF_AssertFail
_0220E724:
	cmp r6, #3
	blo _0220E72C
	bl GF_AssertFail
_0220E72C:
	mov r2, #0xe4
	add r1, r4, #0
	mul r1, r2
	add r3, r5, r1
	mov r1, #0x48
	mul r1, r6
	add r1, r3, r1
	add r2, #0x8c
	ldr r1, [r1, r2]
	mov r0, #1
	cmp r1, #2
	beq _0220E74A
	cmp r1, #1
	beq _0220E74A
	mov r0, #0
_0220E74A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_0220E70C

