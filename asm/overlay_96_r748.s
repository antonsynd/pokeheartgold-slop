	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02216AA4
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021E5F24
	.extern ov96_021E8A20
	.extern ov96_02216770
	.extern ov96_02216934
	.extern ov96_02216A54
	.extern ov96_0221996C

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
	thumb_func_start ov96_02216AA4
ov96_02216AA4: ; 0x02216AA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r3, #0
	add r7, r1, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r4, [sp, #0x40]
	bl PokeathlonCourse_GetDataCopyArea
	add r6, r0, #0
	ldrb r1, [r5]
	add r0, sp, #0x24
	strh r1, [r0]
	ldrb r1, [r5, #1]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x10]
	bl PokeathlonCourse_GetParticipantCount
	cmp r0, r4
	bhi _02216AE6
	mov r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0x28
	add r6, #0x50
	mul r0, r4
	add r0, r6, r0
	bl ov96_021E8A20
	str r0, [sp, #0x20]
	b _02216AF2
_02216AE6:
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl ov96_021E8A20
	str r0, [sp, #0x20]
_02216AF2:
	ldr r0, [sp, #0x10]
	bl ov96_021E5F24
	cmp r0, #0
	bne _02216B00
	mov r0, #1
	b _02216B02
_02216B00:
	mov r0, #0
_02216B02:
	cmp r0, #0
	beq _02216B12
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02216B12
	mov r0, #1
	str r0, [sp, #0x14]
	b _02216B16
_02216B12:
	mov r0, #0
	str r0, [sp, #0x14]
_02216B16:
	ldr r0, [sp, #0x10]
	bl ov96_021E5F24
	cmp r4, r0
	bne _02216B24
	mov r6, #1
	b _02216B26
_02216B24:
	mov r6, #0
_02216B26:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	add r3, r0, #0
	ldrb r0, [r5, #5]
	add r1, #0xe4
	ldr r1, [r1]
	lsl r0, r0, #0x19
	lsl r1, r1, #0x12
	lsr r0, r0, #0x1e
	lsr r1, r1, #0x1e
	orr r3, r6
	cmp r0, r1
	beq _02216B70
	add r0, r7, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _02216BF8 ; =0xFFFFF0FF
	and r1, r0
	add r0, r7, #0
	add r0, #0xe4
	str r1, [r0]
	add r0, r7, #0
	add r0, #0xe4
	ldr r1, [r0]
	ldr r0, _02216BFC ; =0xFFFFCFFF
	and r0, r1
	ldrb r1, [r5, #5]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x12
	orr r1, r0
	add r0, r7, #0
	add r0, #0xe4
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #0x18]
_02216B70:
	add r0, r7, #0
	add r0, #0xe4
	ldr r0, [r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1e
	beq _02216BD0
	cmp r0, #1
	beq _02216B88
	cmp r0, #2
	beq _02216BB8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02216B88:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02216B9E
	ldrb r2, [r5, #4]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	mov r3, #1
	bl ov96_0221996C
_02216B9E:
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r1, sp, #0x24
	str r0, [sp, #4]
	add r0, r7, #0
	add r3, r4, #0
	str r6, [sp, #8]
	bl ov96_02216770
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02216BB8:
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	str r3, [sp, #4]
	add r0, r7, #0
	add r1, sp, #0x24
	add r3, r4, #0
	str r6, [sp, #8]
	bl ov96_02216934
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02216BD0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02216BF2
	ldr r2, [sp, #0x20]
	str r6, [sp]
	add r0, r7, #0
	add r1, sp, #0x24
	bl ov96_02216A54
	ldrb r2, [r5, #4]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	mov r3, #0
	bl ov96_0221996C
_02216BF2:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02216BF8: .word 0xFFFFF0FF
_02216BFC: .word 0xFFFFCFFF
	thumb_func_end ov96_02216AA4

