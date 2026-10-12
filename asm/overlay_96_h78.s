	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E8228
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E8340

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

