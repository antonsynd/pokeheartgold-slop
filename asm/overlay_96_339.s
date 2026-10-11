	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F4AE0
	.extern ov96_021F4724
	.extern ov96_021F4E9C
	.extern ov96_0221C01C

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
	thumb_func_start ov96_021F4AE0
ov96_021F4AE0: ; 0x021F4AE0
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x68
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x46
	bls _021F4AFA
	add r0, r4, #0
	bl ov96_021F4724
	pop {r4, pc}
_021F4AFA:
	add r2, r4, #0
	add r2, #0x90
	lsl r0, r0, #0x18
	ldr r1, _021F4B28 ; =ov96_0221C01C
	ldr r2, [r2]
	lsr r0, r0, #0x18
	bl ov96_021F4E9C
	add r0, r4, #0
	add r0, #0xea
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xea
	add r1, #0x20
	add r4, #0xea
	strb r1, [r0]
	ldrb r0, [r4]
	lsl r1, r0, #0x10
	ldr r0, _021F4B2C ; =0x01FF0000
	and r1, r0
	ldr r0, _021F4B30 ; =0x04001018
	str r1, [r0]
	pop {r4, pc}
	.balign 4, 0
_021F4B28: .word ov96_0221C01C
_021F4B2C: .word 0x01FF0000
_021F4B30: .word 0x04001018
	thumb_func_end ov96_021F4AE0

