	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_022180CC
	.extern ov96_021E6104
	.extern ov96_022158D4
	.extern ov96_022158EC
	.extern ov96_02217E7C
	.extern ov96_02217FD0
	.extern ov96_0221862C
	.extern ov96_022186B8
	.extern ov96_02218B1C
	.extern ov96_0221910C

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
	thumb_func_start ov96_022180CC
ov96_022180CC: ; 0x022180CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	mov r0, #0
	mov r7, #0x3f
	ldr r5, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	lsl r7, r7, #0x18
_022180DE:
	mov r1, #0
	add r0, sp, #0x18
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0xc
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r1, #0
	add r6, r5, #0
	add r4, r5, #0
	ldrsh r0, [r5, r0]
	add r6, #8
	add r4, #0xc
	cmp r0, #0
	ble _02218110
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	b _0221811C
_02218110:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r7, #0
	bl _fsub
_0221811C:
	bl _ffix
	str r0, [sp, #0x18]
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0221813A
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	b _02218146
_0221813A:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r7, #0
	bl _fsub
_02218146:
	bl _ffix
	str r0, [sp, #0x1c]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02218164
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	b _02218170
_02218164:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r7, #0
	bl _fsub
_02218170:
	bl _ffix
	str r0, [sp, #0xc]
	mov r0, #6
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0221818E
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	b _0221819A
_0221818E:
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r7, #0
	bl _fsub
_0221819A:
	bl _ffix
	str r0, [sp, #0x10]
	ldr r1, [r6]
	lsl r0, r1, #0x11
	lsr r0, r0, #0x1f
	beq _02218226
	mov r0, #0
	mov r1, #2
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	bl ov96_022158D4
	cmp r0, #0
	beq _022181CC
	add r0, r4, #0
	bl ov96_0221862C
	cmp r0, #0
	bne _022181C4
	b _022182FC
_022181C4:
	add r0, r4, #0
	bl ov96_0221910C
	b _022182FC
_022181CC:
	bl ov96_021E6104
	cmp r0, #0
	ble _022181E8
	bl ov96_021E6104
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	b _022181F8
_022181E8:
	bl ov96_021E6104
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r7, #0
	bl _fsub
_022181F8:
	bl _ffix
	add r2, r0, #0
	ldr r0, [r4, #0x60]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	bne _022182FC
	ldr r0, [r4, #0x14]
	cmp r0, #3
	beq _022182FC
	add r4, #0x2c
	add r0, r4, #0
	add r1, sp, #0x18
	bl ov96_022158EC
	cmp r0, #0
	beq _022182FC
	mov r0, #2
	ldr r1, [r6]
	lsl r0, r0, #0x1c
	orr r0, r1
	str r0, [r6]
	b _022182FC
_02218226:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	beq _02218274
	lsl r0, r1, #2
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022182FC
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #4
	asr r3, r0, #0x10
	ldr r0, [r4, #0x30]
	lsl r0, r0, #4
	asr r2, r0, #0x10
	ldr r0, [r4, #0x14]
	cmp r0, #3
	bne _0221824E
	ldr r0, _02218328 ; =0xDFFFFFFF
	and r0, r1
	str r0, [r6]
	b _022182FC
_0221824E:
	mov r0, #0
	ldrsh r0, [r5, r0]
	sub r0, r0, r3
	bpl _02218258
	neg r0, r0
_02218258:
	cmp r0, #1
	bgt _0221826A
	mov r0, #2
	ldrsh r0, [r5, r0]
	sub r0, r0, r2
	bpl _02218266
	neg r0, r0
_02218266:
	cmp r0, #1
	ble _022182FC
_0221826A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_022186B8
	b _022182FC
_02218274:
	lsl r0, r1, #3
	lsr r0, r0, #0x13
	beq _022182FC
	lsl r0, r1, #2
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022182F4
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _0221828C
	cmp r0, #4
	bne _022182F4
_0221828C:
	ldr r0, [r4, #0x60]
	lsl r1, r0, #3
	lsr r1, r1, #0x1f
	bne _022182F4
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	bne _022182F4
	mov r2, #1
	add r0, sp, #0xc
	add r1, sp, #0x18
	lsl r2, r2, #0xe
	bl ov96_022158EC
	cmp r0, #0
	beq _022182C4
	ldr r0, [r6]
	lsl r0, r0, #3
	lsr r0, r0, #0x13
	cmp r0, #7
	bhi _022182F4
	ldr r1, [r4, #0x60]
	ldr r0, _0221832C ; =0xBFFFFFFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x1c
	orr r0, r1
	str r0, [r4, #0x60]
	b _022182F4
_022182C4:
	mov r2, #3
	add r0, sp, #0xc
	add r1, sp, #0x18
	lsl r2, r2, #0xe
	bl ov96_022158EC
	cmp r0, #0
	bne _022182F4
	ldr r0, [r6]
	lsl r0, r0, #3
	lsr r0, r0, #0x13
	cmp r0, #7
	bhi _022182F4
	mov r0, #1
	ldr r1, [r4, #0x60]
	lsl r0, r0, #0x1e
	orr r1, r0
	ldr r0, _02218328 ; =0xDFFFFFFF
	and r0, r1
	str r0, [r4, #0x60]
	ldrh r0, [r5]
	strh r0, [r4, #0x1c]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x1e]
_022182F4:
	ldr r1, [r6]
	ldr r0, _02218328 ; =0xDFFFFFFF
	and r0, r1
	str r0, [r6]
_022182FC:
	add r0, r5, #0
	ldr r1, [sp, #4]
	add r0, #0xc
	bl ov96_02218B1C
	ldr r0, [sp, #8]
	add r5, #0xa8
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	bge _02218314
	b _022180DE
_02218314:
	ldr r0, [sp, #4]
	bl ov96_02217E7C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov96_02217FD0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02218328: .word 0xDFFFFFFF
_0221832C: .word 0xBFFFFFFF
	thumb_func_end ov96_022180CC

