	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221A57C
	.public ov96_0221A5B8
	.extern ov96_021E94EC
	.extern ov96_0221A730
	.extern ov96_0221D9C8

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
	thumb_func_start ov96_0221A57C
ov96_0221A57C: ; 0x0221A57C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0221A5B4 ; =ov96_0221D9C8
	lsl r1, r1, #2
	ldr r6, [r0, r1]
	cmp r6, #0
	beq _0221A5AC
	mov r5, #0
_0221A58C:
	add r0, r7, #0
	add r1, r5, #0
	bl ov96_021E94EC
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	blx r6
	strh r0, [r4, #0xa]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0221A58C
	pop {r3, r4, r5, r6, r7, pc}
_0221A5AC:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221A5B4: .word ov96_0221D9C8
	thumb_func_end ov96_0221A57C

	thumb_func_start ov96_0221A5B8
ov96_0221A5B8: ; 0x0221A5B8
	push {r3, lr}
	lsl r2, r1, #2
	ldr r1, _0221A5D0 ; =ov96_0221D9C8
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _0221A5CA
	bl ov96_0221A730
	pop {r3, pc}
_0221A5CA:
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
_0221A5D0: .word ov96_0221D9C8
	thumb_func_end ov96_0221A5B8

