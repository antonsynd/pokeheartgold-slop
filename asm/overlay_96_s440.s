	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F0F04

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
	thumb_func_start ov96_021F0F04
ov96_021F0F04: ; 0x021F0F04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	str r0, [sp, #4]
	add r4, r0, #0
	ldr r0, [sp]
	add r5, r1, #0
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
_021F0F1E:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r6, #0
	mul r2, r0
	ldr r0, [sp, #0x10]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r1, [r6, #0x28]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, [r6, #0x2c]
	asr r2, r0, #0xc
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r3, r0, #0xc
	cmp r2, #0
	bge _021F0F5E
	mov r2, #0
	b _021F0F64
_021F0F5E:
	cmp r2, #0xff
	ble _021F0F64
	mov r2, #0xff
_021F0F64:
	cmp r3, #0
	bge _021F0F6C
	mov r3, #0
	b _021F0F72
_021F0F6C:
	cmp r3, #0xff
	ble _021F0F72
	mov r3, #0xff
_021F0F72:
	ldr r0, [r6, #0x18]
	add r7, r5, r4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r6, #0
	add r0, #0x40
	ldrb r0, [r0]
	add r6, #0x44
	strb r2, [r5, r4]
	lsl r2, r4, #1
	sub r0, r0, #1
	strb r3, [r7, #0xc]
	add r3, r0, #0
	lsl r3, r2
	ldr r0, [sp, #0xc]
	lsl r1, r2
	add r0, r0, r3
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #8]
	ldrb r0, [r6]
	add r1, r0, #0
	lsl r1, r4
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F0F1E
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	str r0, [r5, #0x18]
	ldr r0, _021F1078 ; =0x00000726
	mov r7, #0
	ldrb r1, [r1, r0]
	add r3, r0, #0
	add r3, #0xc
	lsl r2, r1, #0x18
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	str r1, [r5, #0x18]
	ldr r1, [sp, #8]
	ldr r2, [sp]
	add r1, r7, r1
	str r1, [r5, #0x1c]
	ldrh r2, [r2, r3]
	add r3, r0, #0
	add r3, #0x25
	lsl r2, r2, #0x18
	add r1, r1, r2
	ldr r2, [sp]
	str r1, [r5, #0x1c]
	ldrb r2, [r2, r3]
	lsl r2, r2, #0x1c
	add r1, r1, r2
	str r1, [r5, #0x1c]
	ldr r1, [sp]
	sub r2, r0, #2
	ldrb r2, [r1, r2]
	lsl r3, r2, #2
	add r3, r1, r3
	add r1, r0, #0
	sub r1, #0x46
	ldr r1, [r3, r1]
	add r3, r2, #1
	lsr r6, r3, #0x1f
	lsl r4, r3, #0x1e
	sub r4, r4, r6
	mov r3, #0x1e
	ror r4, r3
	add r6, r6, r4
	ldr r3, [sp]
	sub r4, r0, #2
	strb r6, [r3, r4]
	ldr r3, [sp, #4]
	add r4, r0, #3
	add r6, r7, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	add r4, r0, #0
	add r4, #0x22
	lsl r3, r3, #0xc
	add r6, r6, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	add r4, r0, #0
	lsl r1, r1, #0x18
	lsl r3, r3, #0xd
	add r6, r6, r3
	lsr r1, r1, #0x18
	ldr r3, [sp]
	str r6, [r5, #0x20]
	add r4, #0x24
	ldrb r3, [r3, r4]
	add r4, r0, #0
	add r4, #0x26
	lsl r3, r3, #0xe
	add r6, r6, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	lsl r1, r1, #0x12
	lsl r3, r3, #0xf
	add r3, r6, r3
	add r3, r3, r1
	lsl r1, r2, #0x1a
	add r1, r3, r1
	ldr r2, [sp]
	str r1, [r5, #0x20]
	add r3, r0, #1
	ldrb r2, [r2, r3]
	mov r3, #0xc
	lsl r2, r2, #0x1c
	add r1, r1, r2
	str r1, [r5, #0x20]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x22
	strb r7, [r1, r2]
	add r2, r0, #0
	add r2, #0x25
	strb r3, [r1, r2]
	add r0, #0x26
	strb r7, [r1, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1078: .word 0x00000726
	thumb_func_end ov96_021F0F04

