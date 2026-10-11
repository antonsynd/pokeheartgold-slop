	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221A730
	.extern ov96_021E94EC
	.extern ov96_0221D99C

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
	thumb_func_start ov96_0221A730
ov96_0221A730: ; 0x0221A730
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, _0221A7D0 ; =ov96_0221D99C
	str r0, [sp]
	ldrb r2, [r1]
	add r0, sp, #8
	mov r4, #0
	strb r2, [r0]
	ldrb r2, [r1, #1]
	add r6, sp, #0x10
	add r5, r4, #0
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	add r7, sp, #0xc
	strb r2, [r0, #2]
	strb r1, [r0, #3]
_0221A752:
	ldr r0, [sp]
	add r1, r4, #0
	bl ov96_021E94EC
	ldrb r0, [r0, #9]
	strb r0, [r6, r4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	strb r5, [r7, r4]
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0221A752
	add r7, sp, #0x10
	add r6, sp, #0xc
_0221A76E:
	ldr r0, [sp]
	add r1, r5, #0
	ldrb r4, [r7, r5]
	bl ov96_021E94EC
	str r0, [sp, #4]
	mov r0, #0
_0221A77C:
	cmp r5, r0
	beq _0221A78C
	ldrb r1, [r7, r0]
	cmp r4, r1
	bne _0221A78C
	ldrb r1, [r6, r5]
	add r1, r1, #1
	strb r1, [r6, r5]
_0221A78C:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _0221A77C
	ldrb r1, [r6, r5]
	add r0, sp, #8
	add r0, r0, r4
	ldrb r0, [r1, r0]
	ldr r1, [sp, #4]
	ldr r2, [r1, #0xc]
	lsl r1, r2, #2
	add r1, r2, r1
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r4, #0
	bl _dfltu
	ldr r3, _0221A7D4 ; =0x40690000
	mov r2, #0
	bl _dgr
	bls _0221A7BE
	mov r4, #0xc8
_0221A7BE:
	ldr r0, [sp, #4]
	strh r4, [r0, #0xa]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0221A76E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221A7D0: .word ov96_0221D99C
_0221A7D4: .word 0x40690000
	thumb_func_end ov96_0221A730

