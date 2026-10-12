	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F6524

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
	thumb_func_start ov96_021F6524
ov96_021F6524: ; 0x021F6524
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r3, sp, #0x20
	ldrb r4, [r3, #0xc]
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0xe
	lsl r1, r1, #8
	ldrb r3, [r3, #8]
	lsl r5, r4, #2
	add r1, r2, r1
	lsl r4, r3, #2
	add r7, r1, r5
	ldr r3, [r1, r4]
	ldr r5, [r1, r5]
	cmp r3, r5
	bgt _021F6550
	add r6, r1, r4
	add r5, sp, #0x28
	add r1, sp, #0x2c
	b _021F6558
_021F6550:
	add r6, r7, #0
	add r7, r1, r4
	add r5, sp, #0x2c
	add r1, sp, #0x28
_021F6558:
	lsl r0, r0, #9
	add r3, r2, r0
	mov ip, r1
	mov r1, #0
	mov r0, #2
	str r3, [sp]
	add r4, r1, #0
	lsl r0, r0, #0xa
_021F6568:
	add r1, r1, #1
	str r4, [r3, r0]
	add r3, r3, #4
	cmp r1, #0x80
	blt _021F6568
	ldrb r1, [r5]
	ldr r0, [r6]
	lsl r1, r1, #9
	add r3, r2, r1
	lsl r1, r0, #2
	add r3, r3, r1
	mov r1, #2
	lsl r1, r1, #8
	ldr r5, [r3, r1]
	mov r3, ip
	ldrb r3, [r3]
	ldr r1, [r7]
	lsl r3, r3, #9
	add r3, r2, r3
	lsl r2, r1, #2
	add r3, r3, r2
	mov r2, #2
	lsl r2, r2, #8
	ldr r2, [r3, r2]
	sub r0, r1, r0
	str r0, [sp, #4]
	sub r0, r0, #1
	sub r7, r2, r5
	str r0, [sp, #8]
	cmp r0, #0
	ble _021F65C8
_021F65A6:
	add r0, r4, #1
	ldr r1, [sp, #4]
	mul r0, r7
	bl _s32_div_f
	ldr r1, [r6]
	add r0, r5, r0
	add r1, r1, r4
	lsl r2, r1, #2
	ldr r1, [sp]
	add r4, r4, #1
	add r2, r1, r2
	ldr r1, _021F65D4 ; =0x00000804
	str r0, [r2, r1]
	ldr r0, [sp, #8]
	cmp r4, r0
	blt _021F65A6
_021F65C8:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021F65D4: .word 0x00000804
	thumb_func_end ov96_021F6524

