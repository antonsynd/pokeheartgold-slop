	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220C7FC
	.public ov96_0220C844
	.public ov96_0220C8B8
	.public ov96_0220C90C
	.public ov96_0220C93C
	.extern PokeathlonCourse_GetParticipantCount
	.extern ov96_021EAA04
	.extern ov96_021EAB38
	.extern ov96_021EAB74
	.extern ov96_021EABA8
	.extern ov96_021EAC0C
	.extern ov96_021EAF94
	.extern ov96_0220C9F4

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
	thumb_func_start ov96_0220C7FC
ov96_0220C7FC: ; 0x0220C7FC
	push {r4, lr}
	ldr r2, [r0, #0x44]
	ldr r1, _0220C83C ; =0xFFFFFEFF
	ldr r3, _0220C840 ; =0xFC03FFFF
	and r2, r1
	str r2, [r0, #0x44]
	ldr r2, [r0, #0x40]
	lsr r1, r1, #0xb
	and r1, r2
	str r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	mov r1, #0xff
	bic r2, r1
	str r2, [r0, #0x44]
	ldr r1, [r0, #0x40]
	add r2, r0, #0
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1e
	add r2, #0x34
	lsl r1, r1, #2
	ldr r4, [r2, r1]
	and r4, r3
	mov r3, #0xa
	lsl r3, r3, #0x12
	orr r3, r4
	str r3, [r2, r1]
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	nop
_0220C83C: .word 0xFFFFFEFF
_0220C840: .word 0xFC03FFFF
	thumb_func_end ov96_0220C7FC

	thumb_func_start ov96_0220C844
ov96_0220C844: ; 0x0220C844
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r5, #0
	str r0, [sp]
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r7, #0x48
_0220C852:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	cmp r1, r0
	beq _0220C8A8
	mov r6, #0
_0220C85C:
	add r1, r6, r5
	lsl r1, r1, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r4, r0, #0
	mov r1, #0x20
	bl ov96_021EABA8
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x30
	bl ov96_021EAF94
	add r0, r4, #0
	mov r1, #2
	bl ov96_021EAC0C
	cmp r6, #0
	bne _0220C88A
	mov r1, #1
	b _0220C88C
_0220C88A:
	mov r1, #0
_0220C88C:
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_021EAB38
	add r0, r4, #0
	mov r1, #0
	bl ov96_021EAB74
	add r6, r6, #1
	cmp r6, #3
	blt _0220C85C
	add r5, r5, #3
	add r7, #0x40
_0220C8A8:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _0220C852
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220C844

	thumb_func_start ov96_0220C8B8
ov96_0220C8B8: ; 0x0220C8B8
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	mov r2, #0
	sub r1, #0x32
	beq _0220C8CE
	lsl r0, r1, #0xc
	mov r1, #0xa
	bl _s32_div_f
	add r2, r0, #0
_0220C8CE:
	ldr r0, _0220C908 ; =0x0000099A
	cmp r2, r0
	bge _0220C8D6
	add r2, r0, #0
_0220C8D6:
	add r0, r5, #0
	add r1, r2, #0
	bl ManagedSprite_SetAnimSpeed
	add r0, r5, #0
	mov r1, #0x11
	bl ManagedSprite_SetAnimNoRestart
	cmp r4, #0
	beq _0220C8FC
	add r0, r5, #0
	bl ManagedSprite_GetDrawFlag
	cmp r0, #0
	bne _0220C8FC
	mov r0, #0x23
	lsl r0, r0, #6
	bl PlaySE
_0220C8FC:
	add r0, r5, #0
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	nop
_0220C908: .word 0x0000099A
	thumb_func_end ov96_0220C8B8

	thumb_func_start ov96_0220C90C
ov96_0220C90C: ; 0x0220C90C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r6, r1, #2
	add r0, r5, r6
	add r7, r2, #0
	add r4, r3, #0
	mov r3, #1
	ldr r0, [r0, #0x10]
	add r1, r7, #0
	add r2, r4, #0
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add r0, r5, r6
	sub r4, #0x18
	lsl r2, r4, #0x10
	mov r3, #1
	ldr r0, [r0, #0x18]
	add r1, r7, #0
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0220C90C

	thumb_func_start ov96_0220C93C
ov96_0220C93C: ; 0x0220C93C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	str r0, [sp]
	bl PokeathlonCourse_GetParticipantCount
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x78
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x78
	add r6, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	str r4, [r6]
	str r0, [r6, #4]
	mov r0, #4
	sub r0, r0, r5
	str r0, [r6, #0x74]
	cmp r0, #3
	bls _0220C96E
	bl GF_AssertFail
_0220C96E:
	ldr r0, [r6, #0x74]
	mov r7, #0
	cmp r0, #0
	bls _0220C992
	add r4, r6, #0
	add r4, #8
_0220C97A:
	lsl r1, r5, #0x18
	ldr r2, [sp]
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_0220C9F4
	ldr r0, [r6, #0x74]
	add r7, r7, #1
	add r5, r5, #1
	add r4, #0x24
	cmp r7, r0
	blo _0220C97A
_0220C992:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_0220C93C

