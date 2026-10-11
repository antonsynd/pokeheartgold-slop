	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EF19C
	.public ov96_021EF23C
	.public ov96_021EF260
	.public ov96_021EF280
	.extern PokeathlonCourse_FreePtr4HeapAlloc
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021EE5E0
	.extern ov96_0221BA18
	.extern ov96_0221BAC0

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

	thumb_func_start ov96_021EF23C
ov96_021EF23C: ; 0x021EF23C
	push {r4, lr}
	add r4, r0, #0
	bl SpriteSystem_TransferOam
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021EF258 ; =0x027E0000
	ldr r1, _021EF25C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021EF258: .word 0x027E0000
_021EF25C: .word 0x00003FF8
	thumb_func_end ov96_021EF23C

	thumb_func_start ov96_021EF260
ov96_021EF260: ; 0x021EF260
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021EF27C ; =ov96_0221BAC0
	add r3, sp, #0
	mov r2, #5
_021EF26A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EF26A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021EF27C: .word ov96_0221BAC0
	thumb_func_end ov96_021EF260

	thumb_func_start ov96_021EF280
ov96_021EF280: ; 0x021EF280
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GF_GetCurrentPlayingBGM
	add r1, r5, #0
	add r2, sp, #0
	bl sub_02005B78
	add r1, sp, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	cmp r1, r4
	blt _021EF29E
	mov r0, #1
_021EF29E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EF280

