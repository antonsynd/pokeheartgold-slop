	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02219794
	.public ov96_02219940
	.public ov96_0221996C
	.public ov96_022199A8
	.public ov96_02219A08
	.public ov96_02219A5C
	.extern ov96_021E5F24
	.extern ov96_02219DA8
	.extern ov96_02219DD0
	.extern ov96_02219EE0
	.extern ov96_02219F20
	.extern ov96_02219F50
	.extern ov96_0221D8F8
	.extern ov96_0221D910

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
	thumb_func_start ov96_02219794
ov96_02219794: ; 0x02219794
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #1
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	beq _022197C8
	cmp r0, #1
	beq _02219856
	cmp r0, #2
	bne _022197C6
	b _0221992A
_022197C6:
	b _02219936
_022197C8:
	add r0, r5, #0
	add r0, #0x9c
	add r1, sp, #8
	mov r3, #0x1e
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r0, sp, #4
	mov r1, #4
	ldrsh r1, [r0, r1]
	cmp r1, #0xd8
	bge _0221981C
	mov r0, #0x11
	lsl r0, r0, #4
	sub r0, r0, r1
	bpl _022197F0
	neg r0, r0
_022197F0:
	add r2, sp, #4
	mov r1, #4
	lsl r0, r0, #0xe
	ldrsh r3, [r2, r1]
	asr r0, r0, #0x10
	add r0, r3, r0
	strh r0, [r2, #4]
	ldrsh r0, [r2, r1]
	cmp r0, #0xd8
	ble _02219808
	mov r0, #0xd8
	strh r0, [r2, #4]
_02219808:
	add r4, sp, #4
	mov r2, #6
	mov r3, #4
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #0xf
	bl ov96_02219F20
	b _0221993A
_0221981C:
	mov r2, #0x28
	add r3, r2, #0
	strh r2, [r0, #6]
	sub r3, #0x50
	strh r3, [r0, #4]
	add r0, r5, #0
	mov r1, #0xf
	bl ov96_02219F20
	str r4, [sp]
	add r2, r5, #0
	add r2, #0x9c
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r2]
	add r3, r7, #0
	bl ov96_02219DA8
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_02219EE0
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	add r5, #0xc0
	add r0, r0, #1
	strb r0, [r5]
	b _0221993A
_02219856:
	add r0, r5, #0
	add r0, #0x98
	add r1, sp, #4
	mov r3, #0x1e
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #4
	lsl r3, r3, #0x10
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r1, sp, #4
	mov r0, #0
	ldrsh r0, [r1, r0]
	mov r1, #0x88
	sub r2, r1, r0
	bpl _02219878
	neg r2, r2
_02219878:
	lsl r1, r2, #1
	add r2, r2, r1
	asr r1, r2, #1
	lsr r1, r1, #0x1e
	add r1, r2, r1
	lsl r1, r1, #0xe
	asr r4, r1, #0x10
	cmp r0, #0x88
	bgt _022198D4
	cmp r4, #0
	bne _02219890
	mov r4, #1
_02219890:
	add r6, sp, #4
	mov r3, #0
	ldrsh r0, [r6, r3]
	mov r2, #2
	mov r1, #0xe
	add r0, r0, r4
	strh r0, [r6]
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	bl ov96_02219F20
	add r0, r5, #0
	add r0, #0x9c
	add r1, sp, #4
	mov r3, #0x1e
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #4
	lsl r3, r3, #0x10
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	mov r3, #0
	ldrsh r0, [r6, r3]
	mov r2, #2
	mov r1, #0xf
	add r0, r0, r4
	strh r0, [r6]
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	bl ov96_02219F20
	b _0221993A
_022198D4:
	add r0, r5, #0
	add r0, #0x98
	ldr r2, [r0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x9c
	str r2, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r2, [r0]
	add r0, r5, #0
	add r0, #0xa4
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	str r2, [r0]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0x28
	mov r3, #0x30
	bl ov96_02219F20
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0x28
	mov r3, #0x88
	bl ov96_02219F20
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	add r5, #0xc0
	add r0, r0, #1
	strb r0, [r5]
	b _0221993A
_0221992A:
	mov r0, #0
	add r5, #0xc0
	strb r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02219936:
	bl GF_AssertFail
_0221993A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_02219794

	thumb_func_start ov96_02219940
ov96_02219940: ; 0x02219940
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _0221994C
	cmp r4, #4
	blo _02219950
_0221994C:
	bl GF_AssertFail
_02219950:
	add r5, #0xbc
	ldrsb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	ldrsb r0, [r5, r4]
	cmp r0, #0xc
	ble _02219966
	mov r0, #0
	strb r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02219966:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_02219940

	thumb_func_start ov96_0221996C
ov96_0221996C: ; 0x0221996C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0221997E
	bl GF_AssertFail
_0221997E:
	cmp r4, #4
	blo _02219986
	bl GF_AssertFail
_02219986:
	cmp r6, #3
	blo _0221998E
	bl GF_AssertFail
_0221998E:
	cmp r7, #0
	bne _0221999C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov96_02219DD0
_0221999C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov96_02219F50
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0221996C

	thumb_func_start ov96_022199A8
ov96_022199A8: ; 0x022199A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _02219A04 ; =ov96_0221D910
	add r7, r2, #0
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	mov r2, #6
_022199BA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022199BA
	ldr r0, [r6]
	cmp r5, #0
	str r0, [r3]
	bne _022199CE
	bl GF_AssertFail
_022199CE:
	cmp r4, #0
	bne _022199D6
	bl GF_AssertFail
_022199D6:
	add r1, sp, #4
	strh r7, [r1]
	ldr r0, [sp]
	mov r3, #0x1e
	strh r0, [r1, #2]
	add r0, sp, #0x40
	ldrh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	strh r2, [r1, #6]
	ldrh r0, [r0, #0x14]
	add r1, r4, #0
	add r2, sp, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	add r4, r0, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02219A04: .word ov96_0221D910
	thumb_func_end ov96_022199A8

	thumb_func_start ov96_02219A08
ov96_02219A08: ; 0x02219A08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _02219A12
	bl GF_AssertFail
_02219A12:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02219A1C
	bl GF_AssertFail
_02219A1C:
	add r6, r5, #0
	ldr r7, _02219A58 ; =ov96_0221D8F8
	mov r4, #0
	add r6, #0x30
_02219A24:
	lsl r1, r4, #4
	lsl r2, r4, #3
	ldr r0, [r5, #0x14]
	add r1, r6, r1
	add r2, r7, r2
	bl AddWindow
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _02219A24
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #5
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r5, #4]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02219A58: .word ov96_0221D8F8
	thumb_func_end ov96_02219A08

	thumb_func_start ov96_02219A5C
ov96_02219A5C: ; 0x02219A5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #3]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0]
	mov r0, #0x64
	mul r0, r4
	sub r0, r6, r0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #4]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #1]
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #5]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #2]
	mov r4, #0
	mov r6, #4
	mov r7, #8
_02219AE6:
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	lsl r2, r4, #2
	add r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x1c
	add r0, #3
	ldrb r0, [r0, r4]
	add r2, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	mov r1, #6
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x14]
	mov r3, #0xb
	bl CopyRectToBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _02219AE6
	ldr r0, [r5, #0x14]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02219A5C

