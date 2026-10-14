	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F8830
	.extern PokeathlonCourse_GetParticipantData
	.extern ov96_021E8424
	.extern ov96_021EEA94
	.extern ov96_021EEB84
	.extern ov96_021EEDCC
	.extern ov96_021F8BC0
	.extern ov96_021F8C04
	.extern ov96_021F8C2C
	.extern ov96_021F8C54

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
	thumb_func_start ov96_021F8830
ov96_021F8830: ; 0x021F8830
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x33
	lsl r0, r0, #4
	str r1, [sp]
	ldr r1, [r5, r0]
	str r2, [sp, #4]
	add r2, r5, #0
	mov r0, #0x48
	add r2, #0x14
	mul r0, r1
	add r4, r2, r0
	ldr r0, [r4, #0x30]
	add r6, r3, #0
	cmp r0, #0
	beq _021F8856
	bl GF_AssertFail
_021F8856:
	ldr r0, [r5, #4]
	ldr r1, [r6]
	bl PokeathlonCourse_GetParticipantData
	str r0, [sp, #8]
	ldr r0, [r0]
	cmp r0, #0
	ble _021F886A
	mov r7, #1
	b _021F886C
_021F886A:
	mov r7, #0
_021F886C:
	ldr r0, [sp]
	add r2, r4, #0
	str r0, [r4, #0x38]
	ldr r0, [sp, #4]
	str r0, [r4, #0x3c]
	ldr r0, [r6]
	str r0, [r4, #0x40]
	add r0, r4, #0
	ldrb r1, [r6, #9]
	add r0, #0x44
	strh r1, [r0]
	ldr r1, [r6, #0x10]
	add r0, r5, #0
	bl ov96_021F8C04
	ldr r1, [r6]
	add r0, r5, #0
	add r2, r4, #0
	bl ov96_021F8BC0
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _021F88A2
	mov r1, #1
	b _021F88A4
_021F88A2:
	mov r1, #0
_021F88A4:
	mov r0, #0xcb
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r4, #0x40]
	cmp r0, #4
	blt _021F88B4
	bl GF_AssertFail
_021F88B4:
	cmp r7, #0
	beq _021F88D6
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov96_021E8424
	bl ov96_021EEDCC
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	ldr r3, [r5]
	mov r2, #0xb
	bl ov96_021EEA94
	b _021F88E6
_021F88D6:
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0xc]
	lsl r2, r2, #0x18
	ldr r1, [r5, #4]
	lsr r2, r2, #0x18
	mov r3, #0x1b
	bl ov96_021EEB84
_021F88E6:
	add r0, r4, #0
	bl ov96_021F8C2C
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl ov96_021F8C54
	mov r0, #1
	str r0, [r4, #0x30]
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #5
	add r0, r0, #1
	bl _s32_div_f
	mov r0, #0x33
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8830

