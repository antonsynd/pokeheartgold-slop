	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02219940
	.public ov96_0221996C
	.public ov96_022199A8
	.extern ov96_02219DD0
	.extern ov96_02219F50
	.extern ov96_0221D910

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
	thumb_func_start ov96_02219940
ov96_02219940: ; 0x02219940
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _0221994C
	cmp r4, #4
	blo _02219950
_0221994C:
	bl GF_AssertFail
_02219950:
	add r5, #0xbc
	ldrsb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	ldrsb r0, [r5, r4]
	cmp r0, #0xc
	ble _02219966
	mov r0, #0
	strb r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02219966:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_02219940

	thumb_func_start ov96_0221996C
ov96_0221996C: ; 0x0221996C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0221997E
	bl GF_AssertFail
_0221997E:
	cmp r4, #4
	blo _02219986
	bl GF_AssertFail
_02219986:
	cmp r6, #3
	blo _0221998E
	bl GF_AssertFail
_0221998E:
	cmp r7, #0
	bne _0221999C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov96_02219DD0
_0221999C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov96_02219F50
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0221996C

	thumb_func_start ov96_022199A8
ov96_022199A8: ; 0x022199A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _02219A04 ; =ov96_0221D910
	add r7, r2, #0
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	mov r2, #6
_022199BA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022199BA
	ldr r0, [r6]
	cmp r5, #0
	str r0, [r3]
	bne _022199CE
	bl GF_AssertFail
_022199CE:
	cmp r4, #0
	bne _022199D6
	bl GF_AssertFail
_022199D6:
	add r1, sp, #4
	strh r7, [r1]
	ldr r0, [sp]
	mov r3, #0x1e
	strh r0, [r1, #2]
	add r0, sp, #0x40
	ldrh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	strh r2, [r1, #6]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	add r2, sp, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	add r4, r0, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02219A04: .word ov96_0221D910
	thumb_func_end ov96_022199A8

