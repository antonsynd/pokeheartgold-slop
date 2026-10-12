	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F4E9C
	.public ov96_021F4EF8
	.extern ov96_021EB5B8

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
	thumb_func_start ov96_021F4E9C
ov96_021F4E9C: ; 0x021F4E9C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	cmp r0, #0xf
	bhi _021F4EB8
	ldr r5, [r1]
	ldr r1, [r1, #4]
	sub r1, r1, r5
	mul r0, r1
	mov r1, #0xf
	bl _s32_div_f
	add r5, r5, r0
	b _021F4ED8
_021F4EB8:
	bls _021F4EC2
	cmp r0, #0x3c
	bhi _021F4EC2
	ldr r5, [r1, #4]
	b _021F4ED8
_021F4EC2:
	ldr r5, [r1, #4]
	ldr r1, [r1, #8]
	sub r0, #0x3c
	lsl r0, r0, #0x18
	sub r1, r1, r5
	lsr r0, r0, #0x18
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	add r5, r5, r0
_021F4ED8:
	add r0, r4, #0
	bl ov96_021EB5B8
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [sp]
	lsl r1, r1, #2
	add r1, r5, r1
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov96_021F4E9C

	thumb_func_start ov96_021F4EF8
ov96_021F4EF8: ; 0x021F4EF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, #0xe8
	ldrb r7, [r0]
	add r6, r1, #0
	mov r1, #0x64
	add r0, r7, #0
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
	add r0, r7, #0
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0xa
	mul r1, r4
	sub r0, r0, r1
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
	add r0, r7, #0
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
	mov r7, #4
_021F4F86:
	str r7, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	lsl r2, r4, #2
	add r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x1c
	add r0, #3
	ldrb r0, [r0, r4]
	add r2, r2, #3
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
	add r0, r6, #0
	mov r3, #7
	bl CopyRectToBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F4F86
	add r0, r5, #0
	add r0, #0xe8
	ldrb r0, [r0]
	add r5, #0xe9
	strb r0, [r5]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4EF8

