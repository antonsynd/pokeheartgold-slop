	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E9104
	.extern ov96_021E9180

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
	thumb_func_start ov96_021E9104
ov96_021E9104: ; 0x021E9104
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	bl GF2DGfxResObj_GetCharDataPtr
	ldrh r1, [r4, #0x18]
	cmp r1, #0
	beq _021E911A
	mov r6, #8
	b _021E911C
_021E911A:
	mov r6, #4
_021E911C:
	mov r1, #0xff
	str r1, [sp, #8]
	ldr r0, [r0, #0x14]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	cmp r6, #0
	ble _021E916E
	add r7, r0, #0
_021E912E:
	mov r4, #0xff
	mov r5, #0
	cmp r6, #0
	ble _021E9150
_021E9136:
	add r1, r5, r7
	ldr r0, [sp]
	lsl r1, r1, #5
	bl ov96_021E9180
	cmp r0, #0xff
	beq _021E914A
	cmp r4, r0
	bls _021E914A
	add r4, r0, #0
_021E914A:
	add r5, r5, #1
	cmp r5, r6
	blt _021E9136
_021E9150:
	cmp r4, #0xff
	beq _021E9162
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	b _021E916E
_021E9162:
	ldr r0, [sp, #4]
	add r7, r7, r6
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, r6
	blt _021E912E
_021E916E:
	ldr r0, [sp, #8]
	cmp r0, #0xff
	bne _021E9178
	bl GF_AssertFail
_021E9178:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9104

