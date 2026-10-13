	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220A298
	.extern ov96_0220B6EC
	.extern ov96_0220B730
	.extern ov96_0220B744
	.extern ov96_0220B788
	.extern ov96_0221CC04

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
	thumb_func_start ov96_0220A298
ov96_0220A298: ; 0x0220A298
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	add r6, r1, #0
	bl ov96_0220B730
	mov r4, #0x99
	lsl r4, r4, #2
	bl System_GetTouchNew
	cmp r0, #0
	beq _0220A322
	add r0, sp, #0xc
	add r1, sp, #8
	bl System_GetTouchNewCoords
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r1, #0
	add r3, r1, #0
	cmp r0, #0x60
	blo _0220A2CC
	cmp r0, #0xb0
	bhi _0220A2CC
	mov r3, #1
_0220A2CC:
	cmp r3, #0
	beq _0220A2D8
	ldr r0, [sp, #8]
	cmp r0, #0x48
	blo _0220A2D8
	mov r2, #1
_0220A2D8:
	cmp r2, #0
	beq _0220A2E4
	ldr r0, [sp, #8]
	cmp r0, #0x98
	bhi _0220A2E4
	mov r1, #1
_0220A2E4:
	cmp r6, #0
	bne _0220A2EC
	cmp r1, #0
	beq _0220A3A2
_0220A2EC:
	ldr r1, [r5, r4]
	ldr r0, _0220A40C ; =0xFFFF00FF
	and r1, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r5, r4]
	ldr r1, [r5, r4]
	ldr r0, _0220A410 ; =0xFF00FFFF
	and r1, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	orr r0, r1
	str r0, [r5, r4]
	ldr r1, [r5, r4]
	mov r0, #0xff
	bic r1, r0
	mov r0, #1
	orr r1, r0
	str r1, [r5, r4]
	ldr r1, [r5, r4]
	lsl r0, r0, #0x18
	orr r0, r1
	str r0, [r5, r4]
	b _0220A3A2
_0220A322:
	ldr r0, [r5, r4]
	lsl r0, r0, #7
	lsr r0, r0, #0x1f
	beq _0220A35C
	bl System_GetTouchHeld
	cmp r0, #0
	bne _0220A35C
	ldr r0, [r5, r4]
	lsl r1, r0, #0x10
	lsl r0, r0, #8
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	sub r0, r1, r0
	cmp r0, #0x20
	blt _0220A352
	ldr r0, [r5, #0x4c]
	bl ov96_0220B744
	cmp r0, #0
	beq _0220A352
	ldr r0, [r5, #0x4c]
	bl ov96_0220B6EC
_0220A352:
	ldr r1, [r5, r4]
	ldr r0, _0220A414 ; =0xFEFFFFFF
	and r0, r1
	str r0, [r5, r4]
	b _0220A3A2
_0220A35C:
	ldr r0, [r5, r4]
	lsl r0, r0, #7
	lsr r0, r0, #0x1f
	beq _0220A3A2
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	ldr r1, [r5, r4]
	ldr r0, _0220A410 ; =0xFF00FFFF
	and r1, r0
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	orr r0, r1
	str r0, [r5, r4]
	ldr r2, [r5, r4]
	mov r1, #0xff
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r5, r4]
	ldr r1, [r5, r4]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xa
	blo _0220A3A2
	ldr r0, _0220A414 ; =0xFEFFFFFF
	and r0, r1
	str r0, [r5, r4]
_0220A3A2:
	bl System_GetTouchNew
	cmp r0, #0
	bne _0220A3B2
	bl System_GetTouchHeld
	cmp r0, #0
	bgt _0220A408
_0220A3B2:
	ldr r0, _0220A418 ; =ov96_0221CC04
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	ldr r0, [r5, #0x4c]
	beq _0220A3E4
	bl ov96_0220B744
	cmp r0, #0
	beq _0220A3DA
	ldr r0, _0220A41C ; =0x0000089B
	mov r4, #0x14
	bl PlaySE
	ldr r0, [r5, #0x4c]
	bl ov96_0220B6EC
	b _0220A400
_0220A3DA:
	ldr r0, _0220A420 ; =0x0000089C
	mov r4, #0x16
	bl PlaySE
	b _0220A400
_0220A3E4:
	bl ov96_0220B744
	cmp r0, #0
	bne _0220A3F0
	mov r4, #0x15
	b _0220A400
_0220A3F0:
	ldr r0, [r5, #0x4c]
	bl ov96_0220B788
	cmp r0, #0
	beq _0220A3FE
	mov r4, #0x17
	b _0220A400
_0220A3FE:
	mov r4, #0x13
_0220A400:
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	bl ManagedSprite_SetAnimNoRestart
_0220A408:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220A40C: .word 0xFFFF00FF
_0220A410: .word 0xFF00FFFF
_0220A414: .word 0xFEFFFFFF
_0220A418: .word ov96_0221CC04
_0220A41C: .word 0x0000089B
_0220A420: .word 0x0000089C
	thumb_func_end ov96_0220A298

