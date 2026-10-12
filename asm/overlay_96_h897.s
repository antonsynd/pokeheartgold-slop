	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220AF64
	.extern ov96_0220B068

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
	thumb_func_start ov96_0220AF64
ov96_0220AF64: ; 0x0220AF64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0xc
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _0220AFEE
	lsl r0, r1, #5
	lsr r0, r0, #0x19
	lsl r2, r0, #2
	mov r0, #0xa8
	sub r4, r0, r2
	ldr r0, _0220AFF0 ; =0xFFFFF00F
	and r0, r1
	lsl r1, r1, #0x14
	lsr r1, r1, #0x18
	add r1, #0x14
	lsl r1, r1, #0x18
	lsr r1, r1, #0x14
	add r2, r0, #0
	orr r2, r1
	str r2, [r5, #0x10]
	lsl r2, r2, #0x14
	ldr r0, [r5]
	mov r1, #0
	lsr r2, r2, #0x18
	bl ManagedSprite_OffsetPositionXY
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #4]
	lsl r2, r2, #0x14
	mov r1, #0
	lsr r2, r2, #0x18
	bl ManagedSprite_OffsetPositionXY
	add r1, sp, #0
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	ldr r0, [r5]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r3, sp, #0
	mov r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, r4
	blo _0220AFEE
	strh r4, [r3]
	mov r1, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5]
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	bl ov96_0220B068
	ldr r1, [r5, #0x10]
	ldr r0, _0220AFF4 ; =0xFFF00FFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r5, #0x10]
_0220AFEE:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0220AFF0: .word 0xFFFFF00F
_0220AFF4: .word 0xFFF00FFF
	thumb_func_end ov96_0220AF64

