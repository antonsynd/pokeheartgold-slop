	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221918C
	.public ov96_0221935C
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
	thumb_func_start ov96_0221918C
ov96_0221918C: ; 0x0221918C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp]
	mov r0, #0
	add r3, sp, #0xc
	add r1, r0, #0
	mov r2, #7
_0221919A:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221919A
	stmia r3!, {r0, r1}
	add r0, sp, #0xc
	mov r1, #0xaa
	mov r2, #9
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp, #4]
_022191B2:
	ldr r0, [sp, #4]
	mov r6, #0x3f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r7, #0
	lsl r6, r6, #0x18
	str r0, [sp, #8]
_022191C0:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl ov96_021E60D8
	add r4, r0, #0
	lsl r2, r7, #0x18
	ldr r0, [sp]
	ldr r1, [sp, #8]
	lsr r2, r2, #0x18
	bl ov96_0221935C
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	blo _022191E4
	bl GF_AssertFail
_022191E4:
	ldrb r0, [r4, #3]
	cmp r0, #5
	blo _022191EE
	bl GF_AssertFail
_022191EE:
	ldrb r0, [r4, #1]
	cmp r0, #5
	blo _022191F8
	bl GF_AssertFail
_022191F8:
	ldrb r0, [r4, #2]
	cmp r0, #5
	blo _02219202
	bl GF_AssertFail
_02219202:
	ldrb r0, [r4]
	lsl r1, r0, #2
	add r0, sp, #0xc
	ldr r0, [r0, r1]
	cmp r0, #0
	ble _0221921E
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _0221922A
_0221921E:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_0221922A:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r5]
	ldrb r0, [r4]
	lsl r1, r0, #2
	add r0, sp, #0xc
	add r0, r0, r1
	ldr r0, [r0, #0x14]
	cmp r0, #0
	ble _02219254
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _02219260
_02219254:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_02219260:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r5, #4]
	ldrb r0, [r4, #3]
	lsl r1, r0, #2
	add r0, sp, #0xc
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	cmp r0, #0
	ble _0221928A
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _02219296
_0221928A:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_02219296:
	bl _ffix
	str r0, [r5, #8]
	ldrb r0, [r4, #1]
	lsl r1, r0, #2
	add r0, sp, #0xc
	add r0, r0, r1
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	ble _022192BA
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _022192C6
_022192BA:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_022192C6:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r5, #0xc]
	ldrb r0, [r4, #2]
	lsl r1, r0, #2
	add r0, sp, #0xc
	add r0, r0, r1
	ldr r0, [r0, #0x64]
	cmp r0, #0
	ble _022192F0
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _022192FC
_022192F0:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_022192FC:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r5, #0x10]
	ldrb r0, [r4, #2]
	lsl r1, r0, #2
	add r0, sp, #0xc
	add r0, r0, r1
	ldr r0, [r0, #0x64]
	cmp r0, #0
	ble _02219326
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	b _02219332
_02219326:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r6, #0
	bl _fsub
_02219332:
	bl _ffix
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r5, #0x14]
	ldrb r0, [r4, #2]
	add r7, r7, #1
	cmp r7, #3
	strb r0, [r5, #0x18]
	bge _0221934A
	b _022191C0
_0221934A:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	bge _02219356
	b _022191B2
_02219356:
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0221918C

	thumb_func_start ov96_0221935C
ov96_0221935C: ; 0x0221935C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	bne _0221936E
	bl GF_AssertFail
_0221936E:
	cmp r5, #4
	blo _02219376
	bl GF_AssertFail
_02219376:
	cmp r6, #3
	blo _0221937E
	bl GF_AssertFail
_0221937E:
	lsl r0, r5, #1
	add r0, r5, r0
	add r1, r6, r0
	mov r0, #0x1c
	add r4, #0x30
	mul r0, r1
	add r4, r4, r0
	bne _02219392
	bl GF_AssertFail
_02219392:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_0221935C

