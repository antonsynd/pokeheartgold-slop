	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220B0A4
	.extern ov96_0221CDA0
	.extern ov96_0221DC68

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
	thumb_func_start ov96_0220B0A4
ov96_0220B0A4: ; 0x0220B0A4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0
	add r1, sp, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	cmp r5, #3
	blt _0220B0D0
	bl GF_AssertFail
_0220B0D0:
	ldr r0, _0220B140 ; =ov96_0221DC68
	lsl r1, r5, #2
	ldr r4, [r0, r1]
	ldr r0, _0220B144 ; =ov96_0221CDA0
	add r1, sp, #0
	ldrb r0, [r0, r5]
	add r1, #2
	add r2, sp, #0
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r6, #4]
	bl ManagedSprite_GetPositionXY
	mov r0, #0
	cmp r5, #0
	ble _0220B11E
	add r6, sp, #0
	mov r3, #2
	ldrsh r2, [r6, r0]
	ldrsh r3, [r6, r3]
	add r1, sp, #4
_0220B0FC:
	ldrb r6, [r4]
	add r0, r0, #1
	add r6, r2, r6
	strb r6, [r1]
	ldrb r6, [r4, #1]
	add r6, r2, r6
	strb r6, [r1, #1]
	ldrb r6, [r4, #2]
	add r6, r3, r6
	strb r6, [r1, #2]
	ldrb r6, [r4, #3]
	add r4, r4, #4
	add r6, r3, r6
	strb r6, [r1, #3]
	add r1, r1, #4
	cmp r0, r5
	blt _0220B0FC
_0220B11E:
	mov r2, #0xff
	lsl r1, r5, #2
	add r0, sp, #4
	strb r2, [r0, r1]
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0220B138
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0220B138:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0220B140: .word ov96_0221DC68
_0220B144: .word ov96_0221CDA0
	thumb_func_end ov96_0220B0A4

