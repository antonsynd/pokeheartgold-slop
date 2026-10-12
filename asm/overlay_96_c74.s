	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E811C
	.extern ov96_0221A934
	.extern ov96_0221A95C

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
	thumb_func_start ov96_021E811C
ov96_021E811C: ; 0x021E811C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r1, #0xa
	strb r1, [r5]
	ldrb r6, [r0, #0xc]
	ldr r0, [r0, #4]
	mov r7, #0
	cmp r0, #1
	bne _021E8160
	cmp r6, #0xa
	bhi _021E815A
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8140: ; jump table
	.short _021E815A - _021E8140 - 2 ; case 0
	.short _021E815A - _021E8140 - 2 ; case 1
	.short _021E815A - _021E8140 - 2 ; case 2
	.short _021E815A - _021E8140 - 2 ; case 3
	.short _021E815A - _021E8140 - 2 ; case 4
	.short _021E8156 - _021E8140 - 2 ; case 5
	.short _021E8156 - _021E8140 - 2 ; case 6
	.short _021E8156 - _021E8140 - 2 ; case 7
	.short _021E8156 - _021E8140 - 2 ; case 8
	.short _021E8156 - _021E8140 - 2 ; case 9
	.short _021E8156 - _021E8140 - 2 ; case 10
_021E8156:
	mov r7, #1
	b _021E8182
_021E815A:
	bl GF_AssertFail
	b _021E8182
_021E8160:
	cmp r6, #4
	bhi _021E817E
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8170: ; jump table
	.short _021E817A - _021E8170 - 2 ; case 0
	.short _021E817A - _021E8170 - 2 ; case 1
	.short _021E817A - _021E8170 - 2 ; case 2
	.short _021E817A - _021E8170 - 2 ; case 3
	.short _021E817A - _021E8170 - 2 ; case 4
_021E817A:
	mov r7, #1
	b _021E8182
_021E817E:
	bl GF_AssertFail
_021E8182:
	cmp r7, #0
	beq _021E81CE
	cmp r6, #0xa
	bne _021E81B4
	bl LCRandom
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	cmp r4, #0
	bls _021E81CE
	ldr r1, _021E81D0 ; =ov96_0221A95C
	lsl r0, r0, #2
	add r1, r1, r0
_021E81A4:
	ldrb r0, [r1, r2]
	strb r0, [r5, r2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r4
	blo _021E81A4
	pop {r3, r4, r5, r6, r7, pc}
_021E81B4:
	mov r2, #0
	cmp r4, #0
	bls _021E81CE
	ldr r1, _021E81D4 ; =ov96_0221A934
	lsl r0, r6, #2
	add r1, r1, r0
_021E81C0:
	ldrb r0, [r1, r2]
	strb r0, [r5, r2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r4
	blo _021E81C0
_021E81CE:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E81D0: .word ov96_0221A95C
_021E81D4: .word ov96_0221A934
	thumb_func_end ov96_021E811C

