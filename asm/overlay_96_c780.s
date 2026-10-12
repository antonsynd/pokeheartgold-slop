	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022079B8
	.public ov96_02207A34
	.extern ov96_021E8228
	.extern ov96_0221CAC8

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
	thumb_func_start ov96_022079B8
ov96_022079B8: ; 0x022079B8
	push {r3, r4, lr}
	sub sp, #0x24
	add r1, sp, #0x18
	mov r4, #1
	bl VEC_Normalize
	add r0, sp, #0x18
	bl VEC_Mag
	cmp r0, #0
	beq _02207A2A
	ldr r4, _02207A30 ; =ov96_0221CAC8
	add r3, sp, #0xc
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, sp, #0
	str r0, [r3]
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r2, #0
	bl CalcAngleBetweenVecs
	mov r2, #2
	lsl r2, r2, #0xc
	cmp r0, r2
	bls _02207A00
	mov r1, #0xe
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _02207A04
_02207A00:
	mov r4, #4
	b _02207A2A
_02207A04:
	cmp r0, r2
	bls _02207A14
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	bhs _02207A14
	mov r4, #2
	b _02207A2A
_02207A14:
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _02207A28
	mov r1, #0xa
	lsl r1, r1, #0xc
	cmp r0, r1
	bhi _02207A28
	mov r4, #3
	b _02207A2A
_02207A28:
	mov r4, #1
_02207A2A:
	add r0, r4, #0
	add sp, #0x24
	pop {r3, r4, pc}
	.balign 4, 0
_02207A30: .word ov96_0221CAC8
	thumb_func_end ov96_022079B8

	thumb_func_start ov96_02207A34
ov96_02207A34: ; 0x02207A34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	add r5, r2, #0
	add r0, #0x64
	bl VEC_Mag
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x64
	bl VEC_Mag
	cmp r6, r0
	ble _02207A58
	add r6, r4, #0
	b _02207A68
_02207A58:
	cmp r6, r0
	bge _02207A62
	add r6, r5, #0
	add r5, r4, #0
	b _02207A68
_02207A62:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02207A68:
	add r0, r6, #0
	add r0, #0xb0
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xb0
	ldrb r0, [r0]
	cmp r1, r0
	beq _02207A7E
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02207A7E:
	add r0, r6, #0
	add r0, #0x64
	bl ov96_022079B8
	add r1, r6, #0
	add r1, #0xb0
	ldrb r1, [r1]
	cmp r1, r0
	beq _02207A96
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02207A96:
	add r0, r6, #0
	add r0, #0xa6
	ldrb r0, [r0]
	cmp r0, #1
	bne _02207AA6
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02207AA6:
	add r0, r5, #0
	add r0, #0xaa
	ldrb r1, [r0]
	cmp r1, #2
	blo _02207ACA
	add r0, r5, #0
	add r0, #0xaa
	ldrb r0, [r0]
	sub r1, r0, #2
	add r0, r5, #0
	add r0, #0xaa
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0xaa
	ldrb r0, [r0]
	add r1, r0, #2
	add r0, r6, #0
	b _02207ADC
_02207ACA:
	add r0, r6, #0
	add r0, #0xaa
	ldrb r0, [r0]
	add r1, r0, r1
	add r0, r6, #0
	add r0, #0xaa
	strb r1, [r0]
	mov r1, #0
	add r0, r5, #0
_02207ADC:
	add r0, #0xaa
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #9
	bls _02207AF2
	add r0, r6, #0
	mov r1, #9
	add r0, #0xaa
	strb r1, [r0]
_02207AF2:
	add r0, r5, #0
	mov r3, #1
	add r0, #0xa6
	strb r3, [r0]
	add r1, r5, #0
	add r2, r5, #0
	str r3, [sp]
	add r1, #0x98
	ldr r1, [r1]
	add r2, #0xb1
	lsl r1, r1, #0x18
	ldrb r2, [r2]
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ov96_021E8228
	add r0, r5, #0
	add r0, #0xb1
	ldrb r4, [r0]
	add r0, r6, #0
	add r0, #0x64
	bl VEC_Mag
	asr r3, r0, #0xb
	lsr r3, r3, #0x14
	add r3, r0, r3
	mov r1, #0x14
	add r2, r4, #0
	mul r2, r1
	add r2, r5, r2
	ldr r2, [r2, #0x18]
	asr r0, r3, #0xc
	add r2, r2, r0
	add r0, r5, #0
	add r0, #0xa2
	strb r2, [r0]
	add r2, sp, #4
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	add r2, r6, #0
	add r2, #0xb1
	ldrb r2, [r2]
	ldr r0, _02207B88 ; =0x45800000
	mul r1, r2
	add r1, r6, r1
	ldr r1, [r1, #0x14]
	bl _fmul
	bl _ffix
	add r1, r6, #0
	add r3, r5, #0
	add r1, #0x64
	add r2, sp, #4
	add r3, #0x64
	bl VEC_MultAdd
	add r2, r6, #0
	add r3, sp, #4
	ldmia r3!, {r0, r1}
	add r2, #0x64
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, #0xa4
	str r0, [r2]
	mov r0, #0x12
	strb r0, [r6]
	mov r0, #6
	add r5, #0xa4
	strb r0, [r5]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02207B88: .word 0x45800000
	thumb_func_end ov96_02207A34

