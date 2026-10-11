	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220D428
	.public ov96_0220D468
	.extern ov96_021EB10C
	.extern ov96_0220D360

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
	thumb_func_start ov96_0220D428
ov96_0220D428: ; 0x0220D428
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	bne _0220D43A
	bl GF_AssertFail
_0220D43A:
	ldr r0, [r5]
	cmp r0, #0
	bne _0220D444
	bl GF_AssertFail
_0220D444:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0220D44E
	bl SysTask_Destroy
_0220D44E:
	mov r0, #0
	str r0, [r5, #0x10]
	strb r4, [r5, #0xc]
	ldr r0, _0220D464 ; =ov96_0220D360
	add r1, r5, #0
	mov r2, #2
	strb r6, [r5, #0xd]
	bl SysTask_CreateOnMainQueue
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220D464: .word ov96_0220D360
	thumb_func_end ov96_0220D428

	thumb_func_start ov96_0220D468
ov96_0220D468: ; 0x0220D468
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _0220D47A
	cmp r0, #1
	beq _0220D4C4
	b _0220D51A
_0220D47A:
	ldrh r0, [r4, #0xc]
	bl _dfltu
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _0220D520 ; =0x33333333
	ldr r1, _0220D524 ; =0x3FD33333
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _0220D528 ; =0x3FF00000
	mov r0, #0
	bl _dsub
	bl _d2f
	str r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	cmp r0, #1
	bls _0220D4B0
	mov r0, #0
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_0220D4B0:
	mov r1, #0xfe
	ldr r0, [r4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0x16
	bl ov96_021EB10C
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0220D4C4:
	ldrh r0, [r4, #0xc]
	bl _dfltu
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _0220D520 ; =0x33333333
	ldr r1, _0220D524 ; =0x3FD33333
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _0220D528 ; =0x3FF00000
	mov r0, #0
	bl _dadd
	bl _d2f
	str r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	cmp r0, #1
	bls _0220D506
	mov r0, #0
	mov r1, #0xfe
	str r0, [r4, #4]
	lsl r1, r1, #0x16
	ldr r0, [r4]
	add r2, r1, #0
	bl ov96_021EB10C
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
_0220D506:
	mov r1, #0xfe
	ldr r0, [r4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0x16
	bl ov96_021EB10C
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0220D51A:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0220D520: .word 0x33333333
_0220D524: .word 0x3FD33333
_0220D528: .word 0x3FF00000
	thumb_func_end ov96_0220D468

