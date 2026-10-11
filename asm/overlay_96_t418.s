	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F8C88
	.public ov96_021F8CFC
	.public ov96_021F8D98
	.extern ov96_0221C3E0

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
	thumb_func_start ov96_021F8C88
ov96_021F8C88: ; 0x021F8C88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _021F8CF8 ; =ov96_0221C3E0
	add r5, r2, #0
	add r4, r0, #0
	add r3, r1, #0
	add r2, sp, #0
	ldmia r6!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	str r0, [r2]
	ldr r1, [sp, #4]
	lsl r0, r3, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5]
	add r1, r7, #0
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl Sprite_SetMatrix
	add r4, #0x30
	lsl r0, r4, #0xc
	str r0, [sp]
	ldr r0, [r5, #8]
	add r1, r7, #0
	bl Sprite_SetMatrix
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl Sprite_SetMatrix
	ldr r0, [r5, #0x10]
	bl sub_02013728
	ldr r0, [r5, #0x20]
	bl sub_02013728
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F8CF8: .word ov96_0221C3E0
	thumb_func_end ov96_021F8C88

	thumb_func_start ov96_021F8CFC
ov96_021F8CFC: ; 0x021F8CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r7, r1, #0
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #0
	lsl r6, r5, #0xc
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	lsl r5, r7, #0xc
	str r0, [r2]
	ldr r0, [sp]
	mov r1, ip
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r5
	str r0, [sp, #4]
	ldr r0, [r4]
	bl Sprite_SetMatrix
	ldr r0, [r4, #4]
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r7, #0
	str r0, [r2]
	ldr r0, [sp]
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r5
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl Sprite_SetMatrix
	ldr r0, [r4, #0xc]
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, r7, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r7, #0
	str r0, [r2]
	ldr r0, [sp]
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r5
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl Sprite_SetMatrix
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl Sprite_SetMatrix
	ldr r0, [r4, #0x10]
	bl sub_02013728
	ldr r0, [r4, #0x20]
	bl sub_02013728
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8CFC

	thumb_func_start ov96_021F8D98
ov96_021F8D98: ; 0x021F8D98
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	ldr r0, [r5, #8]
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	ldr r1, [r5]
	add r0, r4, #0
	bl sub_02013910
	mov r1, #1
	str r0, [r4, #0x10]
	bl sub_02013948
	str r0, [r4, #0x14]
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8D98

