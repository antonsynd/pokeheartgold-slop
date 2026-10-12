	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F440C
	.public ov96_021F4484
	.public ov96_021F4504
	.public ov96_021F4558
	.extern ov96_021E6168
	.extern ov96_021EB5EC
	.extern ov96_0221BFF4
	.extern ov96_0221C028

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
	thumb_func_start ov96_021F440C
ov96_021F440C: ; 0x021F440C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, _021F4480 ; =ov96_0221BFF4
	add r6, r1, #0
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r4, #0
_021F4420:
	lsl r5, r4, #2
	add r0, sp, #0x10
	ldr r7, [r0, r5]
	ldr r0, [sp]
	add r1, r7, #0
	mov r2, #0
	bl ov96_021EB5EC
	ldr r0, [r0]
	add r1, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r2, #1
	bl ov96_021EB5EC
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl SpriteTransfer_GetCharProxy
	add r7, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl SpriteTransfer_GetPaletteProxy
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #2
	bl NNS_G2dGetImageLocation
	add r1, r6, r5
	add r1, #0x88
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r1, r6, r5
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021F4420
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4480: .word ov96_0221BFF4
	thumb_func_end ov96_021F440C

	thumb_func_start ov96_021F4484
ov96_021F4484: ; 0x021F4484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, sp, #0x10
_021F4490:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	ldr r0, [r6, #4]
	ldr r1, [sp, #0xc]
	add r3, sp, #0x10
	bl ov96_021E6168
	ldrb r0, [r7, #6]
	mov r3, #2
	str r0, [sp]
	ldrh r0, [r7, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldrh r1, [r7]
	ldrb r2, [r7, #7]
	add r0, sp, #0x20
	bl GetMonSpriteCharAndPlttNarcIdsEx
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrh r0, [r7]
	str r0, [sp, #8]
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	ldr r2, [r6]
	ldr r3, [sp, #0x1c]
	bl sub_0201457C
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x14]
	ldr r2, [r6]
	bl sub_02014450
	add r1, r5, #0
	add r1, #0x9c
	add r4, r4, #1
	add r5, #8
	str r0, [r1]
	cmp r4, #0xc
	blt _021F4490
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F4484

	thumb_func_start ov96_021F4504
ov96_021F4504: ; 0x021F4504
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	cmp r6, #2
	blo _021F4514
	bl GF_AssertFail
_021F4514:
	cmp r4, #0xc
	blo _021F451C
	bl GF_AssertFail
_021F451C:
	add r7, r5, #0
	lsl r4, r4, #3
	add r7, #0x30
	mov r1, #0x32
	ldr r0, [r7, r4]
	lsl r1, r1, #6
	bl DC_FlushRange
	lsl r6, r6, #2
	add r1, r5, r6
	mov r2, #0x32
	ldr r0, [r7, r4]
	ldr r1, [r1, #0x20]
	lsl r2, r2, #6
	bl GXS_LoadOBJ
	add r7, r5, #0
	add r7, #0x34
	ldr r0, [r7, r4]
	mov r1, #0x20
	bl DC_FlushRange
	add r1, r5, r6
	ldr r0, [r7, r4]
	ldr r1, [r1, #0x28]
	mov r2, #0x20
	bl GXS_LoadOBJPltt
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4504

	thumb_func_start ov96_021F4558
ov96_021F4558: ; 0x021F4558
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	ldr r7, _021F4598 ; =ov96_0221C028
	mov r4, #0
	add r6, #0xc
_021F4564:
	lsl r1, r4, #4
	lsl r2, r4, #3
	ldr r0, [r5, #8]
	add r1, r6, r1
	add r2, r7, r2
	bl AddWindow
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F4564
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #8]
	mov r1, #4
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r5]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4598: .word ov96_0221C028
	thumb_func_end ov96_021F4558

