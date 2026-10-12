	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EF99C
	.public ov96_021EFA04
	.extern ov96_0221BA80
	.extern ov96_0221BAE8
	.extern ov96_0221DA80

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
	thumb_func_start ov96_021EF99C
ov96_021EF99C: ; 0x021EF99C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r5, _021EF9FC ; =ov96_0221DA80
	mov r0, #0
	ldr r4, _021EFA00 ; =ov96_0221BA80
	ldr r6, [sp]
	str r0, [sp, #4]
	add r7, r5, #0
_021EF9AE:
	ldr r0, [sp]
	ldr r1, [sp]
	mov r2, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r0, #0x10]
	ldr r1, [r1, #0x14]
	mov r3, #2
	strh r2, [r5]
	mov r2, #2
	ldrsh r2, [r4, r2]
	lsl r3, r3, #0x14
	strh r2, [r5, #2]
	add r2, r7, #0
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	str r0, [r6, #0x38]
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r0, r0, #1
	add r5, #0x34
	add r7, #0x34
	add r6, r6, #4
	str r0, [sp, #4]
	cmp r0, #4
	blt _021EF9AE
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0x40]
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [sp]
	bl ov96_021EFA04
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF9FC: .word ov96_0221DA80
_021EFA00: .word ov96_0221BA80
	thumb_func_end ov96_021EF99C

	thumb_func_start ov96_021EFA04
ov96_021EFA04: ; 0x021EFA04
	push {r4, lr}
	add r2, r0, #0
	add r1, r2, #0
	add r1, #0x20
	ldrb r1, [r1]
	ldr r0, [r2, #0x40]
	add r2, #0x21
	lsl r4, r1, #3
	ldrb r1, [r2]
	ldr r3, _021EFA24 ; =ov96_0221BAE8
	lsl r2, r1, #2
	add r1, r3, r4
	ldr r1, [r2, r1]
	bl ManagedSprite_SetAnim
	pop {r4, pc}
	.balign 4, 0
_021EFA24: .word ov96_0221BAE8
	thumb_func_end ov96_021EFA04

