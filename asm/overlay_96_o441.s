	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F21EC
	.extern _0221DCA0
	.extern ov96_021F218C

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
	thumb_func_start ov96_021F21EC
ov96_021F21EC: ; 0x021F21EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
_021F21F6:
	ldr r0, [sp, #8]
	mov r1, #0xc0
	ldr r2, _021F22F8 ; =_0221DCA0
	mul r1, r0
	add r5, r2, r1
	mov r1, #3
	mov r4, #0
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #3
	bl _s32_div_f
	ldr r0, [sp]
	add r2, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021F22F8 ; =_0221DCA0
	lsl r0, r0, #4
	add r7, r1, r0
_021F2236:
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021F2248
	lsl r1, r4, #4
	mov r0, #0
	add r2, r5, r1
	str r0, [r5, r1]
	str r0, [r2, #8]
	b _021F22DC
_021F2248:
	cmp r4, r0
	blo _021F22DC
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r6, #0
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #1
	bne _021F227E
	ldr r0, [r6, #0x18]
	cmp r0, #1
	beq _021F229A
_021F227E:
	lsl r2, r4, #4
	mov r0, #0
	str r0, [r5, r2]
	add r1, r5, r2
	mov r0, #0xc0
	add r3, r4, #0
	mul r3, r0
	mov r2, #0
	str r2, [r7, r3]
	str r2, [r1, #8]
	add r0, r7, r3
	add r1, r2, #0
	str r1, [r0, #8]
	b _021F22DC
_021F229A:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl ov96_021F218C
	cmp r0, #0
	beq _021F22C2
	lsl r1, r4, #4
	mov r0, #1
	str r0, [r5, r1]
	add r2, r5, r1
	mov r0, #0xc0
	add r1, r4, #0
	mul r1, r0
	mov r0, #1
	str r0, [r7, r1]
	ldr r0, [sp, #4]
	add r3, r7, r1
	str r6, [r2, #8]
	str r0, [r3, #8]
	b _021F22DC
_021F22C2:
	lsl r2, r4, #4
	mov r0, #0
	str r0, [r5, r2]
	add r1, r5, r2
	mov r0, #0xc0
	add r3, r4, #0
	mul r3, r0
	mov r2, #0
	str r2, [r7, r3]
	str r2, [r1, #8]
	add r0, r7, r3
	add r1, r2, #0
	str r1, [r0, #8]
_021F22DC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F2236
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #0xc
	blo _021F21F6
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F22F8: .word _0221DCA0
	thumb_func_end ov96_021F21EC

