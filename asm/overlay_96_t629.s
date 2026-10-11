	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220D554
	.public ov96_0220D5D0
	.public ov96_0220D630
	.extern ov96_021E8228
	.extern ov96_021E8BB0
	.extern ov96_021E90FC
	.extern ov96_021EAA20
	.extern ov96_021EABE0
	.extern ov96_021EABF4
	.extern ov96_021EAF78
	.extern ov96_0220F378
	.extern ov96_0220F3B4

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
	thumb_func_start ov96_0220D554
ov96_0220D554: ; 0x0220D554
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	bl ov96_021EAA20
	add r5, r0, #0
	bl ov96_021E90FC
	add r4, r0, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl ov96_021E8BB0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0220D58A
	add r0, r6, #0
	mov r1, #1
	mov r5, #0x40
	bl ov96_021EABE0
	b _0220D594
_0220D58A:
	add r0, r6, #0
	mov r1, #2
	mov r5, #0x20
	bl ov96_021EABE0
_0220D594:
	cmp r7, #0
	beq _0220D5B2
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	lsl r0, r0, #0xc
	sub r1, r5, r4
	str r0, [sp]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r4, r0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	b _0220D5C2
_0220D5B2:
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	sub r0, r5, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
_0220D5C2:
	add r0, r6, #0
	add r1, sp, #0
	bl ov96_021EABF4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220D554

	thumb_func_start ov96_0220D5D0
ov96_0220D5D0: ; 0x0220D5D0
	push {r3, r4, lr}
	sub sp, #0x34
	add r2, r0, #0
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r4, r1, #0
	ldr r0, [r2, #4]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	add r3, sp, #0x1c
	bl ov96_021EAF78
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	add r3, sp, #0x10
	bl ov96_021EAF78
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	add r2, sp, #0x28
	add r0, r1, r0
	lsl r4, r0, #0xc
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl VEC_Subtract
	add r0, sp, #0x28
	bl VEC_Mag
	cmp r0, r4
	bgt _0220D628
	add sp, #0x34
	mov r0, #1
	pop {r3, r4, pc}
_0220D628:
	mov r0, #0
	add sp, #0x34
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_0220D5D0

	thumb_func_start ov96_0220D630
ov96_0220D630: ; 0x0220D630
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x45
	add r2, #0x46
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov96_0220F378
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0220D67E
	mov r0, #1
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp]
	add r1, #0x45
	add r2, #0x46
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	mov r3, #2
	bl ov96_021E8228
	ldr r0, [r4, #8]
	bl ov96_0220F3B4
	lsl r0, r0, #0x18
	ldr r2, [r4, #0x40]
	mov r1, #0xff
	bic r2, r1
	lsr r0, r0, #0x18
	orr r0, r2
	str r0, [r4, #0x40]
	mov r0, #1
	str r0, [r4, #0xc]
_0220D67E:
	ldr r1, [r4, #0x40]
	ldr r0, _0220D690 ; =0xFFFF00FF
	and r1, r0
	mov r0, #0xa
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0x40]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0220D690: .word 0xFFFF00FF
	thumb_func_end ov96_0220D630

