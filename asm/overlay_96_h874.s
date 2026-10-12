	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02209DE4
	.public ov96_02209E70
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern ov96_021E5F24
	.extern ov96_02209F40
	.extern ov96_0220B7B4
	.extern ov96_0221CC60

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
	thumb_func_start ov96_02209DE4
ov96_02209DE4: ; 0x02209DE4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	ldr r2, _02209E68 ; =0x00000135
	ldr r3, [r6]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [r6]
	bl MessageFormat_New
	mov r1, #0x97
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0x44
	ldr r4, _02209E6C ; =ov96_0221CC60
	mov r7, #0
	add r5, r6, r1
_02209E14:
	ldr r0, [r6, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	bl ClearWindowTilemap
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #4
	blt _02209E14
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetParticipantUnk04
	add r5, r0, #0
	mov r7, #0
	add r4, r6, #0
_02209E4A:
	ldr r1, [r6]
	mov r0, #0xb
	bl String_New
	add r1, r5, #0
	add r1, #0x12
	str r0, [r4, #0x18]
	bl CopyU16ArrayToString
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x28
	cmp r7, #3
	blt _02209E4A
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02209E68: .word 0x00000135
_02209E6C: .word ov96_0221CC60
	thumb_func_end ov96_02209DE4

	thumb_func_start ov96_02209E70
ov96_02209E70: ; 0x02209E70
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bne _02209E7C
	bl GF_AssertFail
_02209E7C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _02209E86
	bl GF_AssertFail
_02209E86:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x1e
	bl _s32_div_f
	cmp r0, #0
	bge _02209E98
	mov r0, #0
_02209E98:
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, #0x38]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, #0x3c]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #0x4c]
	bl ov96_0220B7B4
	add r0, r0, #1
	mov r1, #3
	bl _s32_div_f
	lsl r2, r1, #0x18
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	mov r0, #0x97
	lsr r2, r2, #0x16
	str r3, [sp, #4]
	lsl r0, r0, #2
	add r2, r5, r2
	ldr r0, [r5, r0]
	ldr r2, [r2, #0x18]
	mov r1, #0
	bl BufferString
	mov r2, #0x92
	ldr r0, [r5]
	lsl r2, r2, #2
	add r1, r2, #0
	str r0, [sp]
	add r0, r5, r2
	add r1, #0x14
	add r2, #0x10
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	mov r3, #0x9a
	bl ov96_02209F40
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_02209E70

