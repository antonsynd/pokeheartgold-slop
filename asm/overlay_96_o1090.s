	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220F280
	.public ov96_0220F378
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E60D8

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
	thumb_func_start ov96_0220F280
ov96_0220F280: ; 0x0220F280
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r7, r0, #0
	add r0, sp, #8
	mov r1, #0xaa
	mov r2, #7
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp]
_0220F294:
	ldr r0, [sp]
	mov r6, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
_0220F29E:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r6, #0
	bl ov96_021E60D8
	lsl r2, r6, #0x18
	add r4, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	lsr r2, r2, #0x18
	bl ov96_0220F378
	add r5, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #5
	blo _0220F2C2
	bl GF_AssertFail
_0220F2C2:
	ldrb r0, [r4]
	cmp r0, #5
	blo _0220F2CC
	bl GF_AssertFail
_0220F2CC:
	ldrb r0, [r4, #1]
	cmp r0, #5
	blo _0220F2D6
	bl GF_AssertFail
_0220F2D6:
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #2]
	lsl r1, r0, #2
	add r0, sp, #8
	ldr r0, [r0, r1]
	strb r0, [r5]
	ldrb r0, [r4, #2]
	lsl r1, r0, #2
	add r0, sp, #8
	add r0, r0, r1
	ldr r0, [r0, #0x14]
	strb r0, [r5, #1]
	ldrb r0, [r4]
	lsl r1, r0, #2
	add r0, sp, #8
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	cmp r0, #0
	ble _0220F310
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0220F31E
_0220F310:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0220F31E:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r5, #4]
	ldrb r0, [r4, #1]
	lsl r1, r0, #2
	add r0, sp, #8
	add r0, r0, r1
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	ble _0220F34A
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0220F358
_0220F34A:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0220F358:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	add r6, r6, #1
	str r0, [r5, #8]
	cmp r6, #3
	blt _0220F29E
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #4
	blt _0220F294
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220F280

	thumb_func_start ov96_0220F378
ov96_0220F378: ; 0x0220F378
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	bne _0220F38A
	bl GF_AssertFail
_0220F38A:
	cmp r5, #4
	blo _0220F392
	bl GF_AssertFail
_0220F392:
	cmp r6, #3
	blo _0220F39A
	bl GF_AssertFail
_0220F39A:
	lsl r0, r5, #1
	add r0, r5, r0
	add r1, r6, r0
	mov r0, #0xc
	add r4, #0x34
	mul r0, r1
	add r4, r4, r0
	bne _0220F3AE
	bl GF_AssertFail
_0220F3AE:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_0220F378

