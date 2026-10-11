	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021ED578
	.public ov96_021ED5AC
	.public ov96_021ED5E0
	.public ov96_021ED618
	.public ov96_021ED660
	.public ov96_021ED6A8
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern ov96_021E8A20
	.extern ov96_021ED524
	.extern ov96_021EDF3C
	.extern ov96_021EE97C

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
	thumb_func_start ov96_021ED578
ov96_021ED578: ; 0x021ED578
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	ldr r0, [r0, #0xc]
	bl ov96_021EE97C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl PokeathlonCourse_GetPlayerProfileFromData
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl BufferPlayersName
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	mov r3, #1
	bl ov96_021EDF3C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED578

	thumb_func_start ov96_021ED5AC
ov96_021ED5AC: ; 0x021ED5AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	ldr r0, [r0, #0xc]
	bl ov96_021EE97C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl PokeathlonCourse_GetPlayerProfileFromData
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl BufferPlayersName
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov96_021ED524
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED5AC

	thumb_func_start ov96_021ED5E0
ov96_021ED5E0: ; 0x021ED5E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED5FA
	bl GF_AssertFail
_021ED5FA:
	cmp r6, #0
	bne _021ED602
	bl GF_AssertFail
_021ED602:
	cmp r4, #0
	bne _021ED60A
	bl GF_AssertFail
_021ED60A:
	ldr r0, [r4, #4]
	lsl r0, r0, #5
	lsr r0, r0, #0x14
	bl MATH_CountPopulation
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED5E0

	thumb_func_start ov96_021ED618
ov96_021ED618: ; 0x021ED618
	push {r3, r4, r5, r6, r7, lr}
	lsl r3, r1, #1
	add r1, r1, r3
	add r6, r0, #0
	add r4, r2, r1
	bl PokeathlonCourse_GetDataCopyArea
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	cmp r6, #0
	bne _021ED638
	bl GF_AssertFail
_021ED638:
	cmp r7, #0
	bne _021ED640
	bl GF_AssertFail
_021ED640:
	cmp r5, #0
	bne _021ED648
	bl GF_AssertFail
_021ED648:
	cmp r4, #0xc
	blt _021ED650
	bl GF_AssertFail
_021ED650:
	ldr r0, [r5, #4]
	lsl r0, r0, #5
	lsr r1, r0, #0x14
	mov r0, #1
	lsl r0, r4
	and r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED618

	thumb_func_start ov96_021ED660
ov96_021ED660: ; 0x021ED660
	push {r3, r4, r5, r6, r7, lr}
	lsl r3, r1, #1
	add r1, r1, r3
	add r6, r0, #0
	add r4, r2, r1
	bl PokeathlonCourse_GetDataCopyArea
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	cmp r6, #0
	bne _021ED680
	bl GF_AssertFail
_021ED680:
	cmp r7, #0
	bne _021ED688
	bl GF_AssertFail
_021ED688:
	cmp r5, #0
	bne _021ED690
	bl GF_AssertFail
_021ED690:
	cmp r4, #0xc
	blt _021ED698
	bl GF_AssertFail
_021ED698:
	ldr r0, [r5, #8]
	lsl r0, r0, #4
	lsr r1, r0, #0x14
	mov r0, #1
	lsl r0, r4
	and r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED660

	thumb_func_start ov96_021ED6A8
ov96_021ED6A8: ; 0x021ED6A8
	push {r3, r4, r5, r6, r7, lr}
	lsl r3, r1, #1
	add r1, r1, r3
	add r6, r0, #0
	add r4, r2, r1
	bl PokeathlonCourse_GetDataCopyArea
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	cmp r6, #0
	bne _021ED6C8
	bl GF_AssertFail
_021ED6C8:
	cmp r7, #0
	bne _021ED6D0
	bl GF_AssertFail
_021ED6D0:
	cmp r5, #0
	bne _021ED6D8
	bl GF_AssertFail
_021ED6D8:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x11
	lsr r1, r0, #0x14
	mov r0, #1
	lsl r0, r4
	and r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED6A8

