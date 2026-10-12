	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02200A64
	.public ov96_02200B04
	.extern ov96_021EB5B8
	.extern ov96_021EB630

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
	thumb_func_start ov96_02200A64
ov96_02200A64: ; 0x02200A64
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x64
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	mov r1, #0x3c
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0x3c
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	mov r0, #0x62
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_02200A64

	thumb_func_start ov96_02200B04
ov96_02200B04: ; 0x02200B04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
	add r4, r5, #0
_02200B10:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl Sprite_SetDrawPriority
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _02200B10
	mov r6, #0
	add r4, r5, #0
_02200B28:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov96_021EB5B8
	mov r1, #2
	bl Sprite_SetDrawPriority
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _02200B28
	mov r0, #1
	mov r2, #0
	add r1, sp, #4
_02200B46:
	cmp r2, r7
	bne _02200B4C
	strb r2, [r1]
_02200B4C:
	add r2, r2, #1
	cmp r2, #4
	blt _02200B46
	mov r2, #0
	add r4, sp, #4
	add r3, sp, #4
_02200B58:
	ldrb r1, [r3]
	cmp r1, r2
	beq _02200B68
	add r1, r0, #0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strb r2, [r4, r1]
_02200B68:
	add r2, r2, #1
	cmp r2, #4
	blt _02200B58
	mov r0, #4
	mov r7, #0
	mov r6, #3
	add r4, sp, #4
	str r0, [sp]
_02200B78:
	ldrb r0, [r4]
	add r1, r6, #0
	lsl r0, r0, #5
	add r0, r5, r0
	ldr r0, [r0, #0x4c]
	bl ov96_021EB630
	ldrb r0, [r4]
	add r1, r6, #0
	lsl r0, r0, #5
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	bl ov96_021EB630
	ldrb r0, [r4]
	ldr r1, [sp]
	lsl r0, r0, #5
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	bl ov96_021EB630
	ldrb r0, [r4]
	add r1, r7, #0
	add r1, #0xb
	lsl r0, r0, #5
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl ov96_021EB630
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #2
	add r6, r6, #2
	add r4, r4, #1
	str r0, [sp]
	cmp r7, #4
	blt _02200B78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02200B04

