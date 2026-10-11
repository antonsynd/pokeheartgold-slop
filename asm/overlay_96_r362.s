	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F6E68
	.public ov96_021F6F3C
	.public ov96_021F6F80
	.public ov96_021F7050
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern ov96_021E5F24
	.extern ov96_0221C1CC

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
	thumb_func_start ov96_021F6E68
ov96_021F6E68: ; 0x021F6E68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #3]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0]
	mov r0, #0x64
	mul r0, r4
	sub r0, r6, r0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #4]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #1]
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #5]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #2]
	mov r4, #0
	mov r6, #4
	mov r7, #8
_021F6EF2:
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x5c]
	lsl r2, r4, #2
	add r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x1c
	add r0, #3
	ldrb r0, [r0, r4]
	add r2, r2, #1
	lsl r2, r2, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	add r1, r6, #0
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5]
	mov r3, #0
	bl CopyRectToBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F6EF2
	ldr r0, [r5]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6E68

	thumb_func_start ov96_021F6F3C
ov96_021F6F3C: ; 0x021F6F3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x84
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r5, #0x88
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6F3C

	thumb_func_start ov96_021F6F80
ov96_021F6F80: ; 0x021F6F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	mov r4, #0
	str r0, [sp, #0x10]
	add r5, r7, #4
	add r6, r4, #0
_021F6F8E:
	lsl r0, r4, #4
	add r0, r5, r0
	add r1, r6, #0
	bl FillWindowPixelBuffer
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F6F8E
	ldr r0, [sp, #0x10]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl PokeathlonCourse_GetPlayerProfileFromData
	ldr r1, [r7, #0x54]
	bl PlayerProfile_GetPlayerName_NewString
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F704C ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r7, #4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #4
	mov r4, #1
	mov r5, #0
	str r0, [sp, #0x18]
_021F6FE4:
	ldr r0, [sp, #0x14]
	cmp r5, r0
	beq _021F7026
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl PokeathlonCourse_GetPlayerProfileFromData
	ldr r1, [r7, #0x54]
	bl PlayerProfile_GetPlayerName_NewString
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F704C ; =0x000F0E00
	lsl r1, r4, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r0, r0, r1
	mov r1, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021F7026:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021F6FE4
	mov r4, #0
	add r5, r7, #4
_021F7034:
	lsl r0, r4, #4
	add r0, r5, r0
	bl CopyWindowToVram
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F7034
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F704C: .word 0x000F0E00
	thumb_func_end ov96_021F6F80

	thumb_func_start ov96_021F7050
ov96_021F7050: ; 0x021F7050
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _021F70A8 ; =ov96_0221C1CC
	mov r4, #0
	add r6, r5, #4
_021F705A:
	lsl r1, r4, #4
	lsl r2, r4, #3
	ldr r0, [r5]
	add r1, r6, r1
	add r2, r7, r2
	bl AddWindow
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F705A
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5]
	mov r1, #6
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r5, #0x54]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5]
	mov r1, #3
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r5, #0x54]
	mov r0, #0
	lsl r1, r1, #4
	bl LoadFontPal0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F70A8: .word ov96_0221C1CC
	thumb_func_end ov96_021F7050

