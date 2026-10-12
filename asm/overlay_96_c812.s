	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02208FF0
	.public ov96_022090A8
	.public ov96_022090D8
	.public ov96_02209130
	.public ov96_022091B4
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_021E5F24
	.extern ov96_021E62AC
	.extern ov96_021E637C
	.extern ov96_021E6454
	.extern ov96_021E8228
	.extern ov96_021E8A20
	.extern ov96_021EB144
	.extern ov96_02209BB0
	.extern ov96_02209BF8
	.extern ov96_02209E70
	.extern ov96_0220A298
	.extern ov96_0220A5DC
	.extern ov96_0220A704
	.extern ov96_0220A840
	.extern ov96_0220A87C
	.extern ov96_0220A8CC
	.extern ov96_0220A910
	.extern ov96_0220AAEC
	.extern ov96_0220AD34
	.extern ov96_0220AD4C
	.extern ov96_0220B528
	.extern ov96_0220B634
	.extern ov96_0220B708
	.extern ov96_0220B758
	.extern ov96_0220B774
	.extern ov96_0220B7B4
	.extern ov96_0220B7CC
	.extern ov96_0220B8D8
	.extern ov96_0220B8F0
	.extern ov96_0220C9A0
	.extern ov96_0221CC00

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
	thumb_func_start ov96_02208FF0
ov96_02208FF0: ; 0x02208FF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x54
	mov ip, r0
	add r0, sp, #0x10
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r7, r1, #0
_02209008:
	add r2, r0, #1
	mov r1, #0xc
	mul r1, r2
	add r2, sp, #4
	lsl r4, r0, #2
	mov r3, ip
	ldr r3, [r3, r4]
	add r2, r2, r1
	str r3, [r2, #8]
	mov r3, #0
	str r3, [r2, #4]
	add r4, r3, #0
	add r3, sp, #4
	str r4, [r3, r1]
	add r1, r4, #0
	cmp r0, #0
	bls _02209054
	ldr r5, [r2, #8]
	mov r4, #0x10
	ldrsh r4, [r5, r4]
	mov r6, #0x10
_02209032:
	ldr r3, [r3, #4]
	ldr r5, [r3, #8]
	ldrsh r5, [r5, r6]
	cmp r5, r4
	bge _0220904A
	ldr r4, [r3]
	str r2, [r4, #4]
	ldr r4, [r3]
	str r4, [r2]
	str r3, [r2, #4]
	str r2, [r3]
	b _02209054
_0220904A:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	blo _02209032
_02209054:
	cmp r1, r0
	bne _0220905C
	str r2, [r3, #4]
	str r3, [r2]
_0220905C:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x30
	blo _02209008
	ldr r0, [sp, #8]
	mov r3, #0
	ldr r1, [r0, #8]
	mov r0, #0x10
	ldrsh r2, [r1, r0]
	add r1, sp, #4
_02209072:
	ldr r1, [r1, #4]
	lsl r5, r3, #2
	ldr r4, [r1, #8]
	str r4, [r7, r5]
	ldr r4, [r7, r5]
	ldrsh r4, [r4, r0]
	cmp r2, r4
	bne _0220908C
	ldr r4, [sp]
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp]
_0220908C:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #0x30
	blo _02209072
	ldr r0, [sp]
	cmp r0, #0
	bne _022090A0
	bl GF_AssertFail
_022090A0:
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x54
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_02208FF0

	thumb_func_start ov96_022090A8
ov96_022090A8: ; 0x022090A8
	push {r4, r5}
	ldr r5, [r0, #8]
	ldr r3, [r0, #0xc]
	add r4, r5, #0
	add r0, r3, #0
	sub r5, #0x10
	add r4, #0x10
	sub r0, #0x10
	add r3, #0x10
	cmp r5, r1
	bgt _022090D0
	cmp r1, r4
	bge _022090D0
	cmp r0, r2
	bgt _022090D0
	cmp r2, r3
	bge _022090D0
	mov r0, #1
	pop {r4, r5}
	bx lr
_022090D0:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_022090A8

	thumb_func_start ov96_022090D8
ov96_022090D8: ; 0x022090D8
	ldr r2, [r0, #0xc]
	cmp r2, #0x68
	bge _022090E2
	mov r0, #0
	bx lr
_022090E2:
	mov r1, #0x62
	lsl r1, r1, #2
	cmp r2, r1
	ldr r1, [r0, #8]
	bgt _0220910C
	cmp r1, #0x90
	blt _022090F4
	mov r2, #1
	b _022090F6
_022090F4:
	mov r2, #0
_022090F6:
	mov r0, #0x17
	lsl r0, r0, #4
	cmp r1, r0
	bgt _02209102
	mov r0, #1
	b _02209104
_02209102:
	mov r0, #0
_02209104:
	tst r0, r2
	beq _0220912C
	mov r0, #1
	bx lr
_0220910C:
	cmp r1, #0xd0
	blt _02209114
	mov r2, #1
	b _02209116
_02209114:
	mov r2, #0
_02209116:
	mov r0, #0x13
	lsl r0, r0, #4
	cmp r1, r0
	bgt _02209122
	mov r0, #1
	b _02209124
_02209122:
	mov r0, #0
_02209124:
	tst r0, r2
	beq _0220912C
	mov r0, #1
	bx lr
_0220912C:
	mov r0, #0
	bx lr
	thumb_func_end ov96_022090D8

	thumb_func_start ov96_02209130
ov96_02209130: ; 0x02209130
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0220914A
	cmp r0, #1
	beq _0220918A
	b _022091A6
_0220914A:
	ldr r0, [r4, #0x40]
	bl ov96_0220A840
	ldr r0, [r4, #0x40]
	bl ov96_0220AD34
	cmp r0, #2
	bne _022091AA
	ldr r1, _022091B0 ; =ov96_0221CC00
	add r0, sp, #0xc
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r0, [r4, #0xc]
	bl SpriteManager_GetSpriteList
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	ldr r2, [r4, #0x14]
	add r0, r6, #0
	mov r1, #0
	bl ov96_021E62AC
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _022091AA
_0220918A:
	add r0, r6, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _022091AA
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ov96_021EB144
	add r0, r6, #0
	mov r1, #1
	bl PokeathlonCourse_SetStateField07
	b _022091AA
_022091A6:
	bl GF_AssertFail
_022091AA:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022091B0: .word ov96_0221CC00
	thumb_func_end ov96_02209130

	thumb_func_start ov96_022091B4
ov96_022091B4: ; 0x022091B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0220920C
	ldr r0, [r4, #0x40]
	bl ov96_0220AD4C
	add r1, r0, #0
	add r0, r5, #0
	bl ov96_0220A5DC
	add r0, r4, #0
	bl ov96_02209BF8
	ldr r0, [r4, #0x4c]
	mov r1, #0
	bl ov96_0220B708
	ldr r0, [r4, #0x44]
	bl ov96_0220B8F0
	ldr r0, [r4, #0x40]
	bl ov96_0220A87C
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov96_021EB144
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0220920C:
	bl System_GetTouchNew
	cmp r0, #0
	beq _0220922E
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_0220922E:
	add r0, r4, #0
	bl ov96_02209E70
	ldr r0, [r4, #0x40]
	bl ov96_0220A840
	ldr r0, [r4, #0x40]
	bl ov96_0220AD34
	add r6, r0, #0
	cmp r6, #1
	bne _0220924A
	mov r1, #1
	b _0220924C
_0220924A:
	mov r1, #0
_0220924C:
	ldr r0, [r4, #0x4c]
	bl ov96_0220B528
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _02209262
	ldr r0, [r4, #0x48]
	bl ov96_0220C9A0
_02209262:
	ldr r0, [r4, #0x44]
	bl ov96_0220B8D8
	ldr r0, [r4, #0x40]
	bl ov96_0220A910
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov96_0220A298
	ldr r0, [r4, #0x4c]
	bl ov96_0220B7CC
	cmp r0, #0
	beq _02209312
	cmp r6, #2
	bne _02209312
	cmp r7, #0
	beq _02209312
	ldr r0, [r4, #0x4c]
	bl ov96_0220B758
	add r6, r0, #0
	ldr r0, [r4, #0x4c]
	bl ov96_0220B774
	ldr r1, [r6]
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	lsr r1, r1, #0x1a
	bl ov96_0220A8CC
	add r7, r0, #0
	ldr r0, [r4, #0x4c]
	bl ov96_0220B7B4
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r3, r7, #0
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r2, [r6]
	ldr r0, [r4, #0x40]
	lsl r2, r2, #0x17
	lsr r2, r2, #0x17
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov96_0220AAEC
	add r2, r0, #0
	ldr r0, [r4, #0x4c]
	add r1, r7, #0
	bl ov96_0220B634
	add r0, r4, #0
	bl ov96_02209BB0
	cmp r7, #0
	beq _022092EC
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #2
	bl ov96_0220A704
	b _02209312
_022092EC:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022092FE
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov96_0220A704
	b _02209312
_022092FE:
	ldr r0, [r4, #0x4c]
	bl ov96_0220B774
	cmp r0, #0
	beq _02209312
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov96_0220A704
_02209312:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _02209320
	sub r1, r1, #1
	str r1, [r4, r0]
_02209320:
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov96_021E6454
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02209356
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _02209356
	add r0, r5, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0x28
	bl ov96_021E8A20
	mov r1, #1
	ldr r2, [r0, #0x10]
	lsl r1, r1, #0x10
	orr r1, r2
	str r1, [r0, #0x10]
_02209356:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_022091B4

