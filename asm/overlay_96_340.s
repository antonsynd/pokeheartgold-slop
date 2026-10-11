	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F4B34
	.extern ov96_021F4724
	.extern ov96_021F4DAC
	.extern ov96_0221C050
	.extern ov96_0221C080

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
	thumb_func_start ov96_021F4B34
ov96_021F4B34: ; 0x021F4B34
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r4, #0x68
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x32
	bls _021F4B4E
	add r0, r4, #0
	bl ov96_021F4724
	pop {r3, r4, r5, pc}
_021F4B4E:
	cmp r0, #5
	bne _021F4B5C
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	b _021F4B82
_021F4B5C:
	cmp r0, #0xf
	bls _021F4B82
	sub r0, #0xf
	cmp r0, #4
	bgt _021F4B82
	lsl r1, r0, #4
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	lsl r0, r0, #0xe
	lsr r5, r0, #0x10
	mov r3, #0x10
	ldr r0, _021F4BA8 ; =0x04001050
	mov r1, #8
	mov r2, #0x34
	sub r3, r3, r5
	str r5, [sp]
	bl G2x_SetBlendAlpha_
_021F4B82:
	ldrh r0, [r4, #0x1a]
	add r2, r4, #0
	add r2, #0x90
	lsl r0, r0, #0x18
	ldr r1, _021F4BAC ; =ov96_0221C050
	ldr r2, [r2]
	lsr r0, r0, #0x18
	bl ov96_021F4DAC
	ldrh r0, [r4, #0x1a]
	add r4, #0x94
	ldr r1, _021F4BB0 ; =ov96_0221C080
	lsl r0, r0, #0x18
	ldr r2, [r4]
	lsr r0, r0, #0x18
	bl ov96_021F4DAC
	pop {r3, r4, r5, pc}
	nop
_021F4BA8: .word 0x04001050
_021F4BAC: .word ov96_0221C050
_021F4BB0: .word ov96_0221C080
	thumb_func_end ov96_021F4B34

