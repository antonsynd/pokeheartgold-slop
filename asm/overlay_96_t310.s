	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F30F8
	.public ov96_021F3180
	.public ov96_021F31F0
	.extern ov96_021EB52C
	.extern ov96_021EB5B8
	.extern ov96_021F32FC
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
	thumb_func_start ov96_021F30F8
ov96_021F30F8: ; 0x021F30F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r5, #0xf
	bne _021F3104
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F3104:
	cmp r5, #1
	bhs _021F310C
	mov r0, #0
	b _021F311E
_021F310C:
	cmp r5, #6
	bhs _021F3114
	mov r0, #1
	b _021F311E
_021F3114:
	cmp r5, #0xa
	bhs _021F311C
	mov r0, #2
	b _021F311E
_021F311C:
	mov r0, #3
_021F311E:
	cmp r1, #1
	bne _021F3128
	mov r4, #1
	mov r6, #5
	b _021F3136
_021F3128:
	cmp r1, #2
	bne _021F3132
	mov r4, #6
	mov r6, #4
	b _021F3136
_021F3132:
	mov r4, #0xa
	mov r6, #5
_021F3136:
	cmp r1, r0
	bne _021F316C
	cmp r5, r4
	bhs _021F3142
	bl GF_AssertFail
_021F3142:
	bl LCRandom
	sub r1, r6, #1
	bl _s32_div_f
	sub r0, r5, r4
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
_021F316C:
	bl LCRandom
	add r1, r6, #0
	bl _s32_div_f
	add r0, r4, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F30F8

	thumb_func_start ov96_021F3180
ov96_021F3180: ; 0x021F3180
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	cmp r0, #0xf
	bne _021F3194
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F3194:
	mov r5, #0
	str r5, [sp, #0xc]
	lsl r4, r0, #2
_021F319A:
	ldr r0, _021F31E8 ; =ov96_0221DBC8
	ldr r1, [r0, r4]
	lsl r0, r5, #3
	add r3, r1, r0
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021F31E2
	lsl r1, r0, #2
	ldr r0, _021F31EC ; =ov96_0221DBB8
	add r0, r0, r1
	sub r0, r0, #4
	ldr r0, [r0]
	add r1, r7, #0
	str r0, [sp, #8]
	ldrh r0, [r0]
	str r0, [sp]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	add r0, r6, #0
	bl ov96_021F32FC
	cmp r0, #0
	beq _021F31D8
	ldr r0, [sp, #8]
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	strb r5, [r0]
	b _021F31E2
_021F31D8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021F319A
_021F31E2:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F31E8: .word ov96_0221DBC8
_021F31EC: .word ov96_0221DBB8
	thumb_func_end ov96_021F3180

	thumb_func_start ov96_021F31F0
ov96_021F31F0: ; 0x021F31F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r5, r0, #0
	ldr r0, [sp]
	mov r7, #0
	lsl r1, r0, #2
	ldr r0, _021F3294 ; =ov96_0221DBC8
	ldr r4, [r0, r1]
_021F3202:
	ldr r0, [r4]
	cmp r0, #0
	beq _021F3288
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	lsl r0, r0, #4
	add r6, r5, r0
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021F321C
	bl GF_AssertFail
_021F321C:
	mov r0, #1
	str r0, [r6]
	ldr r0, [sp]
	str r0, [r6, #8]
	add r0, r5, #0
	str r4, [r6, #4]
	add r0, #0x80
	ldr r0, [r0]
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl ov96_021EB5B8
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, [r4]
	add r0, r6, #0
	sub r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r0, [r4, #4]
	add r1, sp, #4
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldrh r0, [r4, #6]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r6, #0
	bl Sprite_SetMatrix
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0x80
	str r1, [r0]
_021F3288:
	add r7, r7, #1
	add r4, #8
	cmp r7, #4
	blt _021F3202
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3294: .word ov96_0221DBC8
	thumb_func_end ov96_021F31F0

