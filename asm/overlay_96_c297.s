	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EDCEC
	.extern PokeathlonCourse_GetFieldData

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
	thumb_func_start ov96_021EDCEC
ov96_021EDCEC: ; 0x021EDCEC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	bl PokeathlonCourse_GetFieldData
	add r6, r0, #0
	cmp r4, #4
	blo _021EDD02
	bl GF_AssertFail
_021EDD02:
	cmp r5, #3
	blo _021EDD0A
	bl GF_AssertFail
_021EDD0A:
	cmp r7, #3
	bhi _021EDD58
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EDD1A: ; jump table
	.short _021EDD22 - _021EDD1A - 2 ; case 0
	.short _021EDD30 - _021EDD1A - 2 ; case 1
	.short _021EDD3E - _021EDD1A - 2 ; case 2
	.short _021EDD4A - _021EDD1A - 2 ; case 3
_021EDD22:
	mov r0, #0x60
	mul r0, r4
	add r1, r6, r0
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EDD30:
	mov r0, #0x60
	mul r0, r4
	add r1, r6, r0
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r0, [r0, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021EDD3E:
	mov r0, #0x60
	mul r0, r4
	lsl r1, r5, #5
	add r0, r6, r0
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021EDD4A:
	mov r0, #0x60
	mul r0, r4
	add r1, r6, r0
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_021EDD58:
	bl GF_AssertFail
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EDCEC

