	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02207C64
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E8318
	.extern ov96_021E8A20
	.extern ov96_02207774

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
	thumb_func_start ov96_02207C64
ov96_02207C64: ; 0x02207C64
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	add r0, r4, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	add r0, r4, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r1, #2
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x18]
	ldr r0, [r5, r0]
	ldr r2, _02207CC8 ; =0x000003FF
	lsr r0, r0, #0x12
	asr r3, r1, #0xb
	mov r1, #0x1f
	and r0, r2
	and r1, r3
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r2, #0
	sub r0, #0x18
	cmp r5, r0
	bls _02207CB6
	add r5, r2, #0
	sub r5, #0x18
_02207CB6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021E8318
	add r0, r6, #0
	add r1, r5, #0
	bl ov96_02207774
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02207CC8: .word 0x000003FF
	thumb_func_end ov96_02207C64

