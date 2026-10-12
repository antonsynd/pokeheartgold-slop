	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EF19C
	.extern PokeathlonCourse_FreePtr4HeapAlloc
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021EE5E0
	.extern ov96_0221BA18

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
	thumb_func_start ov96_021EF19C
ov96_021EF19C: ; 0x021EF19C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	ldr r0, [r6, #8]
	bl NARC_Delete
	bl sub_0203A914
	ldr r0, [r6, #0x34]
	bl ov96_021EE5E0
	ldr r0, [r6, #0x30]
	mov r1, #0xc
	bl ov98_0221EB84
	ldr r5, _021EF230 ; =ov96_0221BA18
	mov r4, #0
_021EF1C2:
	ldrb r1, [r5]
	ldr r0, [r6, #4]
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #7
	blt _021EF1C2
	ldr r0, [r6, #4]
	bl Heap_Free
	mov r5, #0
	add r4, r6, #0
	add r7, r5, #0
_021EF1DE:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021EF1EA
	bl Sprite_DeleteAndFreeResources
	str r7, [r4, #0x38]
_021EF1EA:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _021EF1DE
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	bl SpriteSystem_FreeResourcesAndManager
	ldr r0, [r6, #0x10]
	bl SpriteSystem_Free
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	ldr r0, [sp]
	bl PokeathlonCourse_FreePtr4HeapAlloc
	ldr r0, _021EF234 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, _021EF238 ; =FS_OVERLAY_ID(OVY_98)
	bl UnloadOverlayByID
	mov r0, #0x88
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF230: .word ov96_0221BA18
_021EF234: .word gSystem + 0x60
_021EF238: .word FS_OVERLAY_ID(OVY_98)
	thumb_func_end ov96_021EF19C

