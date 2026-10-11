	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E8340
	.public ov96_021E839C
	.extern PokeathlonCourse_GetField3D8_ForCurrentParticipant
	.extern _0221A7D8

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
	thumb_func_start ov96_021E8340
ov96_021E8340: ; 0x021E8340
	push {r3, lr}
	cmp r0, #8
	bhi _021E8382
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8352: ; jump table
	.short _021E8382 - _021E8352 - 2 ; case 0
	.short _021E8364 - _021E8352 - 2 ; case 1
	.short _021E8366 - _021E8352 - 2 ; case 2
	.short _021E836A - _021E8352 - 2 ; case 3
	.short _021E836E - _021E8352 - 2 ; case 4
	.short _021E8372 - _021E8352 - 2 ; case 5
	.short _021E8376 - _021E8352 - 2 ; case 6
	.short _021E837A - _021E8352 - 2 ; case 7
	.short _021E837E - _021E8352 - 2 ; case 8
_021E8364:
	b _021E8388
_021E8366:
	add r2, r2, #4
	b _021E8388
_021E836A:
	add r2, #8
	b _021E8388
_021E836E:
	add r2, #0xc
	b _021E8388
_021E8372:
	add r2, #0x10
	b _021E8388
_021E8376:
	add r2, #0x14
	b _021E8388
_021E837A:
	add r2, #0x18
	b _021E8388
_021E837E:
	add r2, #0x1c
	b _021E8388
_021E8382:
	bl GF_AssertFail
	pop {r3, pc}
_021E8388:
	ldr r0, [r2]
	add r1, r0, r1
	ldr r0, _021E8398 ; =0x0000270F
	str r1, [r2]
	cmp r1, r0
	bls _021E8396
	str r0, [r2]
_021E8396:
	pop {r3, pc}
	.balign 4, 0
_021E8398: .word 0x0000270F
	thumb_func_end ov96_021E8340

	thumb_func_start ov96_021E839C
ov96_021E839C: ; 0x021E839C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	add r6, r0, #0
	ldr r0, _021E8418 ; =0x00000D2A
	ldrh r1, [r5, r0]
	ldr r0, _021E841C ; =0x0000FFFF
	cmp r1, r0
	bne _021E83C0
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E83C0:
	add r0, r5, #0
	bl PokeathlonCourse_GetField3D8_ForCurrentParticipant
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E83DE
	add r0, r6, #0
	bl PokeathlonSave_GetRecordsLink2
	mov r1, #0xa4
	b _021E83E6
_021E83DE:
	add r0, r6, #0
	bl PokeathlonSave_GetRecordsSolo2
	mov r1, #0x2c
_021E83E6:
	mul r1, r4
	add r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _021E841C ; =0x0000FFFF
	cmp r0, r1
	bne _021E83F6
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E83F6:
	ldr r1, _021E8420 ; =_0221A7D8
	ldrb r1, [r1, r4]
	cmp r1, #0
	ldr r1, _021E8418 ; =0x00000D2A
	bne _021E840A
	ldrh r1, [r5, r1]
	cmp r0, r1
	bhs _021E8414
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E840A:
	ldrh r1, [r5, r1]
	cmp r0, r1
	bls _021E8414
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E8414:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E8418: .word 0x00000D2A
_021E841C: .word 0x0000FFFF
_021E8420: .word _0221A7D8
	thumb_func_end ov96_021E839C

