	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ECF48

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
	thumb_func_start ov96_021ECF48
ov96_021ECF48: ; 0x021ECF48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, _021ECFEC ; =0x00000000
	bne _021ECF54
	bl GF_AssertFail
_021ECF54:
	ldr r0, [r5, #0x14]
	ldr r6, [r5, #4]
	lsl r1, r0, #0x10
	lsl r0, r0, #0xc
	lsr r1, r1, #0x10
	lsr r0, r0, #0x1c
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	mov r3, #0x83
	ldr r2, [r5, #0xc]
	orr r1, r0
	add r0, r2, r1
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r3, r3, #0xe
	add r2, r1, r0
	str r2, [r5, #0x10]
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
	ldr r0, [r5, #0x10]
	asr r0, r0, #0xc
	cmp r0, #0xe0
	ble _021ECFCA
	ldr r1, [r5, #0x14]
	lsl r0, r1, #0xa
	lsr r0, r0, #0x1f
	beq _021ECFC0
	ldr r0, _021ECFF0 ; =0xFFEFFFFF
	and r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5]
	bl Sprite_DeleteAndFreeResources
	add r0, r6, #0
	str r0, [r5]
	b _021ECFCA
_021ECFC0:
	mov r0, #2
	lsl r0, r0, #0x14
	orr r0, r1
	str r0, [r5, #0x14]
	mov r4, #1
_021ECFCA:
	bl MTRandom
	ldr r2, [r5, #0x14]
	ldr r1, _021ECFF4 ; =0xFFFF0000
	and r1, r2
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #1
	and r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r5, #0x14]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021ECFEC: .word 0x00000000
_021ECFF0: .word 0xFFEFFFFF
_021ECFF4: .word 0xFFFF0000
	thumb_func_end ov96_021ECF48

