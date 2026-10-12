	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220D6CC
	.public ov96_0220D744
	.extern ov96_0220E960
	.extern ov96_0221CF00

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
	thumb_func_start ov96_0220D6CC
ov96_0220D6CC: ; 0x0220D6CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r5, _0220D740 ; =ov96_0221CF00
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0xc
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r1, sp, #0
	str r0, [r4]
	mov r4, #0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r3, #4]
	str r0, [sp]
	ldr r0, [r3]
	str r0, [sp, #8]
	add r0, r2, #0
	str r4, [sp, #4]
	bl CalcAngleBetweenVecs
	mov r2, #2
	lsl r2, r2, #0xc
	cmp r0, r2
	bls _0220D70A
	mov r1, #0xe
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _0220D710
_0220D70A:
	add sp, #0x18
	mov r0, #4
	pop {r3, r4, r5, pc}
_0220D710:
	cmp r0, r2
	bls _0220D722
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	bhs _0220D722
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, pc}
_0220D722:
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _0220D738
	mov r1, #0xa
	lsl r1, r1, #0xc
	cmp r0, r1
	bhi _0220D738
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, pc}
_0220D738:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_0220D740: .word ov96_0221CF00
	thumb_func_end ov96_0220D6CC

	thumb_func_start ov96_0220D744
ov96_0220D744: ; 0x0220D744
	push {r4, r5, r6, lr}
	sub sp, #0x60
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0220D752
	b _0220D8B0
_0220D752:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x1c
	add r2, sp, #0x54
	bl VEC_Subtract
	add r0, sp, #0x54
	bl VEC_Mag
	add r4, r0, #0
	cmp r4, #0
	ble _0220D770
	mov r2, #1
	b _0220D772
_0220D770:
	mov r2, #0
_0220D772:
	ldr r1, [r5, #0x40]
	ldr r0, _0220D8B4 ; =0xEFFFFFFF
	and r1, r0
	lsl r0, r2, #0x1f
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r5, #0x40]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	beq _0220D844
	mov r2, #0
	add r0, sp, #0x24
	str r2, [r0]
	add r1, sp, #0x30
	str r2, [r0, #4]
	str r2, [r1]
	str r2, [r0, #8]
	add r0, r5, #0
	str r2, [r1, #4]
	add r0, #0x34
	str r2, [r1, #8]
	bl VEC_Normalize
	ldr r0, _0220D8B8 ; =0x00000CCD
	add r1, sp, #0x30
	add r2, sp, #0x24
	add r3, sp, #0x18
	bl VEC_MultAdd
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bge _0220D7B4
	neg r0, r0
_0220D7B4:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bge _0220D7BE
	neg r0, r0
_0220D7BE:
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x40]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	beq _0220D806
	ldr r0, [r5, #8]
	mov r1, #0x64
	ldr r0, [r0, #4]
	bl _s32_div_f
	add r6, r0, #0
	add r0, sp, #0x54
	add r1, sp, #0x48
	bl VEC_Normalize
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x28
	add r2, sp, #0x24
	add r3, sp, #0xc
	bl VEC_MultAdd
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bge _0220D7F2
	neg r1, r1
_0220D7F2:
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	cmp r1, #0
	bge _0220D800
	neg r1, r1
_0220D800:
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	str r0, [sp, #0x1c]
_0220D806:
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, #0x34
	bl ov96_0220E960
	add r0, r5, #0
	add r0, #0x1c
	add r1, r5, #0
	add r1, #0x34
	add r2, r0, #0
	bl VEC_Add
	add r3, r5, #0
	add r3, #0x1c
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _0220D8B0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0220D8B0
	ldr r1, [r5, #0x40]
	ldr r0, _0220D8BC ; =0xFBFFFFFF
	and r0, r1
	str r0, [r5, #0x40]
_0220D844:
	ldr r0, [r5, #0x40]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _0220D8B0
	add r0, sp, #0x54
	add r1, sp, #0x48
	bl VEC_Normalize
	ldr r0, [r5, #0x40]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	bne _0220D870
	add r0, sp, #0x48
	bl ov96_0220D6CC
	lsl r0, r0, #0x1c
	ldr r2, [r5, #0x40]
	ldr r1, _0220D8C0 ; =0xFF0FFFFF
	lsr r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x40]
_0220D870:
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	cmp r4, r0
	bgt _0220D886
	add r3, sp, #0x54
	ldmia r3!, {r0, r1}
	add r2, sp, #0x3c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _0220D898
_0220D886:
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	add r1, sp, #0x48
	add r3, sp, #0x3c
	bl VEC_MultAdd
_0220D898:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #0x3c
	add r2, r0, #0
	bl VEC_Add
	add r2, sp, #0x48
	ldmia r2!, {r0, r1}
	add r5, #0x28
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
_0220D8B0:
	add sp, #0x60
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220D8B4: .word 0xEFFFFFFF
_0220D8B8: .word 0x00000CCD
_0220D8BC: .word 0xFBFFFFFF
_0220D8C0: .word 0xFF0FFFFF
	thumb_func_end ov96_0220D744

