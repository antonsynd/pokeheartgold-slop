	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E62AC
	.extern ov96_021EA6E4

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
	thumb_func_start ov96_021E62AC
ov96_021E62AC: ; 0x021E62AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, _021E6340 ; =0x00000728
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r2, [sp, #8]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	str r3, [sp, #0xc]
	strb r0, [r7, r1]
	ldr r0, [sp, #0x34]
	mov r4, #0
	cmp r0, #0
	bls _021E631E
_021E62D2:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	lsl r6, r4, #2
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x30]
	mov r3, #0
	add r5, r7, r6
	bl ov96_021EA6E4
	ldr r1, _021E6344 ; =0x0000071C
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x38]
	ldrh r1, [r1, r6]
	add r0, r0, r6
	lsl r1, r1, #0xc
	str r1, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldr r0, [sp, #4]
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, _021E6344 ; =0x0000071C
	add r1, sp, #0x10
	ldr r0, [r5, r0]
	bl Sprite_SetMatrix
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x34]
	cmp r4, r0
	blo _021E62D2
_021E631E:
	cmp r4, #3
	bhs _021E6336
	ldr r0, _021E6344 ; =0x0000071C
	mov r2, #0
_021E6326:
	lsl r1, r4, #2
	add r1, r7, r1
	str r2, [r1, r0]
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #3
	blo _021E6326
_021E6336:
	ldr r0, _021E6348 ; =0x00000729
	mov r1, #0
	strb r1, [r7, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6340: .word 0x00000728
_021E6344: .word 0x0000071C
_021E6348: .word 0x00000729
	thumb_func_end ov96_021E62AC

