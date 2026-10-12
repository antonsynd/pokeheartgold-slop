	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F333C
	.public ov96_021F3390
	.public ov96_021F33E0
	.extern ov96_0221DBB8
	.extern ov96_0221DBC8

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
	thumb_func_start ov96_021F333C
ov96_021F333C: ; 0x021F333C
	push {r4, r5, r6, r7}
	mov r4, #0
	add r3, r4, #0
	add r5, r4, #0
	lsl r2, r0, #2
_021F3346:
	ldr r0, _021F3388 ; =ov96_0221DBC8
	ldr r6, [r0, r2]
	add r0, r6, r5
	ldr r6, [r6, r5]
	cmp r6, #0
	bne _021F335C
	mov r0, #0
	str r0, [r1]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	b _021F3378
_021F335C:
	lsl r7, r6, #2
	ldr r6, _021F338C ; =ov96_0221DBB8
	add r6, r6, r7
	sub r6, r6, #4
	ldr r6, [r6]
	ldrh r6, [r6]
	str r6, [r1]
	ldrh r6, [r0, #4]
	strh r6, [r1, #4]
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021F3378:
	add r3, r3, #1
	add r5, #8
	add r1, #8
	cmp r3, #4
	blt _021F3346
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_021F3388: .word ov96_0221DBC8
_021F338C: .word ov96_0221DBB8
	thumb_func_end ov96_021F333C

	thumb_func_start ov96_021F3390
ov96_021F3390: ; 0x021F3390
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021F33D4 ; =0x000004EC
	add r6, r2, #0
	bl Heap_Alloc
	ldr r2, _021F33D4 ; =0x000004EC
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, _021F33D8 ; =0x000004E4
	mov r1, #4
	sub r2, r1, r5
	strb r5, [r4, r0]
	add r1, r0, #6
	strb r2, [r4, r1]
	ldrb r2, [r4, r1]
	add r1, r0, #5
	cmp r6, #0
	strb r2, [r4, r1]
	bne _021F33C0
	mov r1, #0x14
	b _021F33C2
_021F33C0:
	mov r1, #0xa
_021F33C2:
	add r0, r0, #3
	strb r1, [r4, r0]
	ldr r0, _021F33DC ; =0x000004E7
	ldrb r1, [r4, r0]
	sub r0, r0, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021F33D4: .word 0x000004EC
_021F33D8: .word 0x000004E4
_021F33DC: .word 0x000004E7
	thumb_func_end ov96_021F3390

	thumb_func_start ov96_021F33E0
ov96_021F33E0: ; 0x021F33E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #5
	add r0, r5, r4
	str r2, [r0, #4]
	ldr r2, [sp, #0x10]
	str r3, [r0, #8]
	str r2, [r0, #0xc]
	ldr r2, [sp, #0x14]
	str r2, [r0, #0x10]
	mov r2, #0
	mvn r2, r2
	str r2, [r5, r4]
	ldr r2, [sp, #0x1c]
	str r1, [r0, #0x14]
	str r2, [r0, #0x1c]
	add r0, r1, #0
	mov r1, #3
	bl _s32_div_f
	ldr r1, _021F3420 ; =0x000004E9
	ldrb r1, [r5, r1]
	cmp r0, r1
	blt _021F3418
	ldr r1, [sp, #0x18]
	add r0, r5, r4
	str r1, [r0, #0x18]
	pop {r3, r4, r5, pc}
_021F3418:
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x18]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F3420: .word 0x000004E9
	thumb_func_end ov96_021F33E0

