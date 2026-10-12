	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EEC0C
	.extern ov96_021EED64
	.extern ov96_021EED70
	.extern ov96_0221B1AC

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
	thumb_func_start ov96_021EEC0C
ov96_021EEC0C: ; 0x021EEC0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	add r6, r3, #0
	str r2, [sp, #0x14]
	cmp r1, #0
	bne _021EEC28
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021EEC28:
	ldrb r0, [r4, #6]
	mov r3, #2
	str r0, [sp]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldrb r2, [r4, #7]
	add r0, sp, #0x28
	bl GetMonSpriteCharAndPlttNarcIdsEx
	ldr r3, _021EECB4 ; =ov96_0221B1AC
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x32
	ldr r0, [sp, #0x50]
	lsl r1, r1, #6
	bl Heap_AllocAtEnd
	add r7, r0, #0
	str r7, [sp]
	ldr r0, [r4, #0xc]
	add r1, sp, #0x18
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r4]
	ldr r2, [sp, #0x50]
	add r3, sp, #0x18
	str r0, [sp, #0x10]
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	bl sub_02014510
	mov r2, #0x32
	ldr r0, [r5]
	add r1, r7, #0
	lsl r2, r2, #6
	bl ov96_021EED64
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _021EECA0
	ldr r0, [sp, #0x50]
	str r6, [sp]
	str r0, [sp, #4]
	add r2, sp, #0x18
	ldrh r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov96_021EED70
_021EECA0:
	add r0, r5, #0
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r7, #0
	bl Heap_Free
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EECB4: .word ov96_0221B1AC
	thumb_func_end ov96_021EEC0C

