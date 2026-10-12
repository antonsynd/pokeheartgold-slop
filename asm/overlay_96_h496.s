	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F4BB4
	.public ov96_021F4CAC
	.public ov96_021F4DAC
	.extern ov96_021EB52C
	.extern ov96_021EB5B8
	.extern ov96_021F4504
	.extern ov96_021F4724
	.extern ov96_0221C050
	.extern ov96_0221C080

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
	thumb_func_start ov96_021F4BB4
ov96_021F4BB4: ; 0x021F4BB4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x68
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x50
	bls _021F4BD4
	add r0, r4, #0
	bl ov96_021F4724
	add sp, #0x20
	pop {r3, r4, r5, pc}
_021F4BD4:
	cmp r0, #0x29
	bne _021F4BE8
	add r0, r4, #0
	add r0, #0xc4
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	b _021F4BFA
_021F4BE8:
	cmp r0, #0x3d
	bne _021F4BFA
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_021F4BFA:
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x28
	bhi _021F4C38
	bl _ffltu
	ldr r1, _021F4CA0 ; =0x42200000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _021F4CA4 ; =0x45800000
	bl _fmul
	bl _ffix
	mov r1, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #7
	add r2, sp, #0x10
	mov r3, #0x80
	bl SetBgAffine
	add sp, #0x20
	pop {r3, r4, r5, pc}
_021F4C38:
	bls _021F4C6E
	cmp r0, #0x3c
	bhi _021F4C6E
	mov r1, #0
	str r1, [sp, #0xc]
	sub r0, #0x28
	mov r1, #0x90
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x14
	bl _s32_div_f
	add r0, #0x38
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x29
	lsl r0, r0, #0x10
	add r4, #0xc4
	str r0, [sp, #8]
	ldr r0, [r4]
	bl ov96_021EB5B8
	add r1, sp, #4
	bl Sprite_SetMatrix
	add sp, #0x20
	pop {r3, r4, r5, pc}
_021F4C6E:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldrh r0, [r4, #0x1a]
	mov r1, #0x14
	sub r0, #0x3c
	lsl r0, r0, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r3, #0x10
	ldr r0, _021F4CA8 ; =0x04001050
	mov r1, #8
	mov r2, #0x24
	sub r3, r3, r4
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F4CA0: .word 0x42200000
_021F4CA4: .word 0x45800000
_021F4CA8: .word 0x04001050
	thumb_func_end ov96_021F4BB4

	thumb_func_start ov96_021F4CAC
ov96_021F4CAC: ; 0x021F4CAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r5, r2, r1
	mov r4, #0
_021F4CC4:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r6, r2, r1
	cmp r5, r6
	bne _021F4CE2
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021F4CC4
_021F4CE2:
	cmp r4, #0xa
	bne _021F4CF4
	add r0, r5, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r6, r2, r1
_021F4CF4:
	bl LCRandom
	mov r1, #3
	bl _s32_div_f
	lsl r0, r5, #1
	add r0, r5, r0
	add r5, r0, r1
	bl LCRandom
	mov r1, #3
	bl _s32_div_f
	lsl r0, r6, #1
	add r0, r6, r0
	add r4, r0, r1
	lsl r2, r5, #0x18
	add r0, r7, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl ov96_021F4504
	lsl r2, r4, #0x18
	add r0, r7, #0
	mov r1, #1
	lsr r2, r2, #0x18
	bl ov96_021F4504
	add r0, r7, #0
	add r0, #0x90
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r4, sp, #0
	ldr r5, _021F4DA4 ; =ov96_0221C050
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r3, #0
	add r1, r2, #0
	bl Sprite_SetMatrix
	add r0, r7, #0
	add r0, #0x94
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r4, sp, #0
	ldr r5, _021F4DA8 ; =ov96_0221C080
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r3, #0
	add r1, r2, #0
	bl Sprite_SetMatrix
	add r0, r7, #0
	add r0, #0x90
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r7, #0x94
	mov r1, #1
	ldr r0, [r7]
	add r2, r1, #0
	bl ov96_021EB52C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F4DA4: .word ov96_0221C050
_021F4DA8: .word ov96_0221C080
	thumb_func_end ov96_021F4CAC

	thumb_func_start ov96_021F4DAC
ov96_021F4DAC: ; 0x021F4DAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r5, #5
	bhi _021F4DE0
	ldr r7, [r4]
	ldr r0, [r4, #0xc]
	ldr r6, [r4, #4]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x10]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r4, r6, r0
	b _021F4E3C
_021F4DE0:
	bls _021F4E12
	cmp r5, #0x2d
	bhi _021F4E12
	sub r0, r5, #5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r7, [r4, #0xc]
	ldr r0, [r4, #0x18]
	ldr r6, [r4, #0x10]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x28
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x1c]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x28
	bl _s32_div_f
	add r4, r6, r0
	b _021F4E3C
_021F4E12:
	sub r5, #0x2d
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	ldr r7, [r4, #0x18]
	ldr r0, [r4, #0x24]
	ldr r6, [r4, #0x1c]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x28]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r4, r6, r0
_021F4E3C:
	ldr r0, [sp]
	bl ov96_021EB5B8
	mov r1, #2
	lsl r1, r1, #0x14
	add r1, r4, r1
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	add r1, sp, #4
	str r7, [sp, #4]
	bl Sprite_SetMatrix
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4DAC

