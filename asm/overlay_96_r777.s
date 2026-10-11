	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221966C
	.public ov96_022196E4
	.extern ov96_021E5F24
	.extern ov96_02219A5C

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
	thumb_func_start ov96_0221966C
ov96_0221966C: ; 0x0221966C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	add r6, r0, #0
	add r5, r3, #0
	str r2, [sp, #4]
	cmp r6, #0
	bne _02219680
	bl GF_AssertFail
_02219680:
	ldr r0, [sp]
	cmp r0, #4
	blo _0221968A
	bl GF_AssertFail
_0221968A:
	mov r7, #0
	add r4, r7, #0
_0221968E:
	ldrb r0, [r5, #1]
	add r1, r7, #6
	lsl r0, r0, #2
	add r0, r6, r0
	add r0, #0x88
	ldr r0, [r0]
	bl ManagedSprite_SetAnimNoRestart
	cmp r4, #3
	beq _022196AC
	ldrb r1, [r5]
	ldrb r0, [r5, #2]
	cmp r1, r0
	beq _022196AC
	add r7, r4, #1
_022196AC:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0221968E
	ldr r0, [r6]
	bl ov96_021E5F24
	ldr r1, [sp]
	cmp r1, r0
	bne _022196DE
	add r0, r6, #0
	add r0, #0xc2
	ldrh r1, [r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _022196DE
	ldr r1, [sp, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_02219A5C
	ldr r0, [sp, #4]
	add r6, #0xc2
	strh r0, [r6]
_022196DE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0221966C

	thumb_func_start ov96_022196E4
ov96_022196E4: ; 0x022196E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	cmp r4, #0xa
	blt _0221971C
	cmp r4, #0x37
	ble _02219720
_0221971C:
	mov r1, #1
	b _02219722
_02219720:
	mov r1, #0
_02219722:
	add r0, r6, #0
	add r0, #0xc4
	str r1, [r0]
	mov r4, #0
	add r5, r6, #0
	mov r7, #1
_0221972E:
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	bne _0221973C
	add r1, r7, #0
	b _0221973E
_0221973C:
	mov r1, #0
_0221973E:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl ManagedSprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0221972E
	add r0, r6, #0
	add r0, #0xa8
	ldr r1, [sp, #4]
	ldr r0, [r0]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add r6, #0xac
	ldr r1, [sp]
	ldr r0, [r6]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_022196E4

