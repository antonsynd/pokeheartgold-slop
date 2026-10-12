	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220C7FC
	.public ov96_0220C844
	.extern ov96_021EAA04
	.extern ov96_021EAB38
	.extern ov96_021EAB74
	.extern ov96_021EABA8
	.extern ov96_021EAC0C
	.extern ov96_021EAF94

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

