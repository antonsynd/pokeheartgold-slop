	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F61C8
	.extern ov96_0221C0E8
	.extern ov96_0221DC10
	.extern ov96_0221E5A0

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
	thumb_func_start ov96_021F61C8
ov96_021F61C8: ; 0x021F61C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r5, _021F6358 ; =ov96_0221C0E8
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x40
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F635C ; =0x00310081
	add r1, sp, #0x3c
	str r0, [sp, #0x3c]
	mov r0, #0x29
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	mov r0, #0xbf
	str r0, [sp, #0x38]
	mov r0, #0x20
	add r1, sp, #0x38
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	mov r0, #3
	str r0, [sp, #0x34]
	mov r0, #0x40
	add r1, sp, #0x34
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6360 ; =ov96_0221E5A0
	mov r2, #0
	str r2, [r0]
	ldr r0, _021F6364 ; =ov96_0221DC10
	mov r1, #0xa
	str r1, [r0, #4]
	mov r1, #0x14
	str r1, [r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	str r2, [sp, #0x30]
	mov r0, #0x23
	add r1, sp, #0x2c
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6368 ; =0xE800E000
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0x23
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	add r5, r4, #4
	ldr r4, _021F6364 ; =ov96_0221DC10
	mov r6, #1
_021F624E:
	add r0, r6, #0
	bl _fflt
	bl _f2d
	ldr r3, _021F636C ; =0x40500000
	mov r2, #0
	bl _dsub
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021F6370 ; =0x40100000
	mov r0, #0
	bl _dmul
	ldr r3, _021F6374 ; =0x40600000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r7, r0, #0
	ldr r0, _021F6378 ; =0x45800000
	add r1, r7, #0
	bl _fmul
	bl _ffix
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #0x23
	add r1, sp, #0x1c
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6378 ; =0x45800000
	add r1, r7, #0
	bl _fmul
	bl _ffix
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x3a
	lsl r0, r0, #0x1a
	orr r0, r1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0x23
	add r1, sp, #0x14
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r1, _021F6360 ; =ov96_0221E5A0
	ldr r0, [r4]
	ldr r2, [r1]
	ldr r1, [r4, #4]
	lsl r0, r0, #0xa
	lsl r1, r1, #5
	orr r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x20
	add r1, sp, #0x10
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6360 ; =ov96_0221E5A0
	mov r1, #0x1f
	ldr r0, [r0]
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _021F6360 ; =ov96_0221E5A0
	str r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #0x1f
	add r0, r0, #1
	bl _s32_div_f
	str r1, [r4, #4]
	ldr r0, [r4]
	mov r1, #0x1f
	add r0, r0, #1
	bl _s32_div_f
	add r6, r6, #1
	add r5, r5, #4
	str r1, [r4]
	cmp r6, #0x80
	ble _021F624E
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x23
	add r1, sp, #8
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6368 ; =0xE800E000
	add r1, sp, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x23
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r0, #0x41
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021F6358: .word ov96_0221C0E8
_021F635C: .word 0x00310081
_021F6360: .word ov96_0221E5A0
_021F6364: .word ov96_0221DC10
_021F6368: .word 0xE800E000
_021F636C: .word 0x40500000
_021F6370: .word 0x40100000
_021F6374: .word 0x40600000
_021F6378: .word 0x45800000
	thumb_func_end ov96_021F61C8

