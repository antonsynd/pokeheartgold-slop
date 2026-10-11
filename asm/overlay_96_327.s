	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F45F4
	.extern ov96_021F43EC
	.extern ov96_021F46BC
	.extern ov96_021F47F0
	.extern ov96_021F480C
	.extern ov96_021F48A8
	.extern ov96_021F4A60

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
	thumb_func_start ov96_021F45F4
ov96_021F45F4: ; 0x021F45F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x68
	add r6, r1, #0
	add r0, r4, #0
	add r1, r2, #0
	bl ov96_021F46BC
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r6, #0
	bne _021F461A
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F461A
	add r0, r5, #0
	bl ov96_021F43EC
_021F461A:
	ldr r0, [r4]
	cmp r0, #0
	beq _021F4668
	cmp r6, #0
	beq _021F4646
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F4670
	mov r1, #1
	add r0, r4, #0
	str r1, [r4, #4]
	bl ov96_021F47F0
	cmp r0, #1
	beq _021F463C
	bl GF_AssertFail
_021F463C:
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl ov96_021F480C
	b _021F4670
_021F4646:
	cmp r7, #0xc
	beq _021F4670
	add r0, r4, #0
	mov r1, #2
	bl ov96_021F47F0
	cmp r0, #0
	beq _021F4670
	ldr r0, _021F4684 ; =0x0000089E
	bl PlaySE
	ldr r1, [r5, #8]
	add r0, r4, #0
	add r2, r7, #0
	bl ov96_021F48A8
	b _021F4670
_021F4668:
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl ov96_021F4A60
_021F4670:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021F467C
	add r0, r5, #0
	blx r1
	pop {r3, r4, r5, r6, r7, pc}
_021F467C:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4684: .word 0x0000089E
	thumb_func_end ov96_021F45F4

