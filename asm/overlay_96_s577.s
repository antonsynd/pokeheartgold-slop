	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F7194
	.extern ov96_021E5F24
	.extern ov96_021E8228
	.extern ov96_021EAF78
	.extern ov96_021EB0A4
	.extern ov96_021F6060
	.extern ov96_0221DC18

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
	thumb_func_start ov96_021F7194
ov96_021F7194: ; 0x021F7194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r0, [sp, #8]
	mov r0, #0
	add r4, r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, _021F7494 ; =0x00000FAC
	ldr r0, [sp, #0xc]
	add r4, #0x90
	add r0, r0, r1
	str r0, [sp, #0x14]
_021F71AC:
	ldr r1, _021F7494 ; =0x00000FAC
	ldr r0, [sp, #0xc]
	ldr r5, [sp, #0xc]
	add r6, r0, r1
	ldr r0, [sp, #0x10]
	mov r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r0, r4, #0
	str r0, [sp, #0x28]
	add r0, #0x1c
	add r5, #0x90
	str r0, [sp, #0x28]
_021F71C8:
	ldr r0, [sp, #0x10]
	cmp r0, r7
	beq _021F72A0
	ldr r0, [sp, #8]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	str r0, [sp, #0x20]
	ldr r0, [r5]
	str r0, [sp, #0x1c]
	add r0, sp, #0x2c
	str r0, [sp]
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x20]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #8]
	lsl r3, r2, #6
	mov r2, #0x12
	lsl r2, r2, #0x10
	sub r3, r2, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r3, sp, #0x30
	bl ov96_021EB0A4
	add r0, sp, #0x58
	str r0, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x54
	bl ov96_021EAF78
	mov r0, #0
	str r0, [sp, #0x5c]
	add r0, sp, #0x2c
	str r0, [sp]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #0x1c]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [r6, #8]
	lsl r3, r2, #6
	mov r2, #0x12
	lsl r2, r2, #0x10
	sub r3, r2, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r3, sp, #0x30
	bl ov96_021EB0A4
	add r0, sp, #0x4c
	str r0, [sp]
	add r0, sp, #0x34
	str r0, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x48
	bl ov96_021EAF78
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x50]
	add r0, sp, #0x54
	lsl r1, r1, #0xc
	add r2, sp, #0x48
	lsl r3, r3, #0xc
	bl ov96_021F6060
	cmp r0, #0
	bne _021F7294
	add r1, r4, r7
	add r1, #0x29
	mov r0, #0
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	add r1, r0, r5
	add r1, #0x29
	mov r0, #0
	strb r0, [r1]
	b _021F746C
_021F7294:
	ldr r0, [sp, #0x10]
	add r0, r0, r5
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F72A2
_021F72A0:
	b _021F746C
_021F72A2:
	add r1, r4, #0
	add r1, #0x26
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x26
	strb r0, [r1]
	ldr r1, [r4, #0x30]
	mov r0, #0x1e
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	add r1, r4, #0
	add r1, #0x27
	strb r0, [r1]
	ldr r1, [r5, #0x30]
	mov r0, #0x1e
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	add r1, r5, #0
	add r1, #0x27
	strb r0, [r1]
	mov r1, #0
	add r0, sp, #0x3c
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0x48
	add r1, sp, #0x54
	add r2, sp, #0x3c
	bl VEC_Subtract
	add r0, sp, #0x3c
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [sp, #0x38]
	add r1, sp, #0x3c
	lsl r0, r0, #0xc
	add r2, sp, #0x54
	add r3, r1, #0
	bl VEC_MultAdd
	ldr r1, [sp, #0xc]
	ldr r0, _021F7498 ; =0x00000143
	ldrb r1, [r1, r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r1, r0, r2
	mov r0, #0x51
	lsl r0, r0, #2
	add r2, sp, #0x3c
	add r3, r1, r0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	ldr r1, [sp, #0xc]
	str r0, [r3]
	ldr r0, _021F7498 ; =0x00000143
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0xc]
	add r2, r0, r1
	mov r0, #0x5a
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r2, r0]
	ldr r1, [sp, #0xc]
	sub r0, #0x25
	ldrb r0, [r1, r0]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	ldr r2, [sp, #0xc]
	ldr r0, _021F7498 ; =0x00000143
	strb r1, [r2, r0]
	ldr r1, _021F749C ; =ov96_0221DC18
	ldr r0, _021F74A0 ; =0x000008A3
	ldrb r1, [r1, #3]
	bl sub_0200606C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	mov r3, #4
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	lsl r2, r7, #0x18
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	mov r3, #1
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	lsl r2, r7, #0x18
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov96_021E8228
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021F7404
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021F7404
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #8]
	cmp r0, #0
	ble _021F7404
	ldr r0, [r6, #8]
	cmp r0, #0
	ble _021F7404
	add r0, r4, r7
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F746C
	ldr r0, [sp, #0x10]
	add r0, r0, r5
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F746C
	add r1, r4, r7
	add r1, #0x29
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	add r1, r0, r5
	add r1, #0x29
	mov r0, #1
	strb r0, [r1]
	ldr r1, [sp, #0x14]
	ldr r0, [r6]
	ldr r1, [r1]
	str r1, [r6]
	ldr r1, [sp, #0x14]
	str r0, [r1]
	ldr r1, [r5, #0x18]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x14]
	str r1, [r4, #0x18]
	ldr r0, [r0]
	cmp r0, #0
	bge _021F73F8
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r1, [r0]
_021F73F8:
	ldr r0, [r6]
	cmp r0, #0
	bge _021F746C
	mov r0, #0
	str r0, [r6]
	b _021F746C
_021F7404:
	ldr r1, [r4, #0x1c]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	bgt _021F7424
	ldr r0, [sp, #0x28]
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0x10
	sub r1, r1, r0
	ldr r0, [sp, #0x28]
	str r1, [r0]
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0x10
	add r0, r1, r0
	b _021F743A
_021F7424:
	ldr r0, [sp, #0x28]
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0x10
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	str r1, [r0]
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0x10
	sub r0, r1, r0
_021F743A:
	str r0, [r5, #0x1c]
	mov r0, #2
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021F744A
	str r0, [r4, #0x1c]
	b _021F7454
_021F744A:
	mov r0, #0xdf
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021F7454
	str r0, [r4, #0x1c]
_021F7454:
	mov r0, #2
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021F7462
	str r0, [r5, #0x1c]
	b _021F746C
_021F7462:
	mov r0, #0xdf
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021F746C
	str r0, [r5, #0x1c]
_021F746C:
	add r7, r7, #1
	add r5, #0x38
	add r6, #0x1c
	cmp r7, #3
	bge _021F7478
	b _021F71C8
_021F7478:
	ldr r0, [sp, #0x14]
	add r4, #0x38
	add r0, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	bge _021F748C
	b _021F71AC
_021F748C:
	mov r0, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F7494: .word 0x00000FAC
_021F7498: .word 0x00000143
_021F749C: .word ov96_0221DC18
_021F74A0: .word 0x000008A3
	thumb_func_end ov96_021F7194

