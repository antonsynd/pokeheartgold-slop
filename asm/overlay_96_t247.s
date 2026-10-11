	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EE75C
	.extern ov96_021EE9D8

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
	thumb_func_start ov96_021EE75C
ov96_021EE75C: ; 0x021EE75C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r0, _021EE7F4 ; =0x00000004
	bne _021EE774
	ldr r0, [sp, #0x18]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
_021EE774:
	mov r1, #0
	str r4, [r5]
	mvn r1, r1
	str r1, [r5, #0x2c]
	ldr r2, [r5, #0x34]
	ldr r1, _021EE7F8 ; =0xF8FFFFFF
	lsl r0, r0, #0x18
	and r2, r1
	lsl r1, r6, #0x1d
	lsr r1, r1, #5
	orr r1, r2
	str r1, [r5, #0x34]
	str r7, [r5, #0x28]
	ldr r2, [r5, #0x34]
	ldr r1, _021EE7FC ; =0xFF00FFFF
	lsr r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x34]
	ldr r2, _021EE800 ; =0x00000135
	ldr r3, [r5, #0x14]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	str r0, [r5, #8]
	ldr r2, _021EE804 ; =0x00000137
	ldr r3, [r5, #0x14]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	bl MessageFormat_New
	str r0, [r5, #4]
	bl ResetAllTextPrinters
	ldr r1, [r5, #0x34]
	ldr r0, [r5]
	lsl r1, r1, #5
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x18
	ldr r2, [r5, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EE9D8
	mov r1, #0x1e
	ldr r2, [r5, #0x14]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	mov r2, #0
	str r2, [sp]
	ldr r1, [r5, #0x34]
	ldr r0, [r5]
	lsl r1, r1, #5
	lsr r1, r1, #0x1d
	mov r3, #1
	bl BG_FillCharDataRange
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE7F4: .word 0x00000004
_021EE7F8: .word 0xF8FFFFFF
_021EE7FC: .word 0xFF00FFFF
_021EE800: .word 0x00000135
_021EE804: .word 0x00000137
	thumb_func_end ov96_021EE75C

