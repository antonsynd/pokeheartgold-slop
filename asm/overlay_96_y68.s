	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E811C
	.public ov96_021E81D8
	.public ov96_021E8228
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E8340
	.extern ov96_021EAEC8
	.extern ov96_021EB120
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

	thumb_func_start ov96_021E81D8
ov96_021E81D8: ; 0x021E81D8
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov96_021EAEC8
	ldr r0, [r4, #8]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, sp, #8
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	bl Sprite_SetMatrix
	ldr r0, [r4, #4]
	bl ov96_021EB120
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _021E821E
	mov r1, #1
	bl Sprite_SetDrawFlag
	add sp, #0x14
	pop {r3, r4, pc}
_021E821E:
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov96_021E81D8

	thumb_func_start ov96_021E8228
ov96_021E8228: ; 0x021E8228
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x18]
	add r1, r3, #0
	bne _021E825E
	bl ov96_021E5F24
	cmp r4, r0
	beq _021E8244
	bl GF_AssertFail
_021E8244:
	cmp r6, #1
	beq _021E824C
	bl GF_AssertFail
_021E824C:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	ldr r1, _021E830C ; =0x0000270F
	cmp r2, r1
	bhs _021E830A
	add r1, r2, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E825E:
	cmp r7, #3
	blo _021E8266
	bl GF_AssertFail
_021E8266:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _021E829A
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	beq _021E8280
	bl GF_AssertFail
_021E8280:
	ldr r2, _021E8310 ; =0x0000072C
	lsl r1, r6, #0x18
	add r3, r5, r2
	mov r2, #0x60
	mul r2, r4
	add r3, r3, r2
	lsl r2, r7, #5
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r3, r2
	bl ov96_021E8340
	pop {r3, r4, r5, r6, r7, pc}
_021E829A:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E82EA
	add r0, r5, #0
	bl PokeathlonCourse_GetParticipantCount
	cmp r4, r0
	blo _021E82C8
	ldr r2, _021E8310 ; =0x0000072C
	lsl r1, r6, #0x18
	add r3, r5, r2
	mov r2, #0x60
	mul r2, r4
	add r3, r3, r2
	lsl r2, r7, #5
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r3, r2
	bl ov96_021E8340
	pop {r3, r4, r5, r6, r7, pc}
_021E82C8:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r4, r0
	beq _021E82D6
	bl GF_AssertFail
_021E82D6:
	ldr r2, _021E8314 ; =0x00000B44
	lsl r1, r6, #0x18
	add r3, r5, r2
	lsl r2, r7, #5
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r3, r2
	bl ov96_021E8340
	pop {r3, r4, r5, r6, r7, pc}
_021E82EA:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r4, r0
	beq _021E82F8
	bl GF_AssertFail
_021E82F8:
	ldr r2, _021E8314 ; =0x00000B44
	lsl r1, r6, #0x18
	add r3, r5, r2
	lsl r2, r7, #5
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r3, r2
	bl ov96_021E8340
_021E830A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E830C: .word 0x0000270F
_021E8310: .word 0x0000072C
_021E8314: .word 0x00000B44
	thumb_func_end ov96_021E8228

