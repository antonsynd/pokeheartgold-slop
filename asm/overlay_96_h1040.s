	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02210980
	.public ov96_022109D8
	.public ov96_02210AE0
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_0220E6DC
	.extern ov96_0220E70C
	.extern ov96_0220E74C
	.extern ov96_0220E770
	.extern ov96_0220E7BC
	.extern ov96_0220E818
	.extern ov96_0220E834
	.extern ov96_0221090C
	.extern ov96_02210BD0
	.extern ov96_0221D1B8

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
	thumb_func_start ov96_02210980
ov96_02210980: ; 0x02210980
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x18
	str r6, [r5]
	ldr r2, [r5, #0xc]
	mov r1, #0x18
	bic r2, r1
	lsl r1, r4, #0x1e
	lsr r1, r1, #0x1b
	orr r2, r1
	mov r1, #0x60
	lsr r0, r0, #0x18
	bic r2, r1
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x19
	orr r1, r2
	lsl r2, r4, #1
	lsl r0, r0, #3
	add r0, r2, r0
	ldr r2, _022109D4 ; =0xFFF807FF
	and r2, r1
	lsl r1, r0, #0x18
	lsr r1, r1, #0xd
	orr r1, r2
	str r1, [r5, #0xc]
	strb r0, [r5, #0x10]
	add r0, r5, #0
	bl ov96_0221090C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022109D4: .word 0xFFF807FF
	thumb_func_end ov96_02210980

	thumb_func_start ov96_022109D8
ov96_022109D8: ; 0x022109D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6]
	bl PokeathlonCourse_GetHeapAllocPtr4
	ldr r1, [r6, #0xc]
	add r7, r0, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x18
	ldr r0, [r6]
	lsr r1, r1, #0x18
	bl ov96_0220E7BC
	ldr r0, [r6, #0xc]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1c
	beq _02210A04
	cmp r1, #1
	beq _02210A68
	b _02210ABA
_02210A04:
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02210A0E
	bl GF_AssertFail
_02210A0E:
	mov r0, #8
	ldrsh r0, [r6, r0]
	add r4, r6, #0
	mov r5, #0
	strh r0, [r6, #4]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	add r4, #0xc
	str r0, [sp]
_02210A22:
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ov96_0220E74C
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _02210A60
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x38
	bl ov96_02210BD0
	cmp r0, #0
	beq _02210A60
	ldr r0, [r4]
	ldr r1, [sp, #4]
	bic r0, r1
	lsl r1, r5, #0x1e
	lsr r1, r1, #0x1d
	orr r1, r0
	ldr r0, [sp]
	bic r1, r0
	mov r0, #1
	orr r1, r0
	ldr r0, _02210ADC ; =0xFFFFF87F
	and r1, r0
	mov r0, #0x80
	orr r0, r1
	str r0, [r4]
_02210A60:
	add r5, r5, #1
	cmp r5, #2
	blt _02210A22
	b _02210ABE
_02210A68:
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _02210A74
	bl GF_AssertFail
_02210A74:
	ldr r1, [r6, #0xc]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _02210ABE
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ov96_0220E74C
	add r1, r0, #0
	ldr r0, [r1, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _02210AAC
	mov r0, #6
	ldrsh r2, [r6, r0]
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r2, r0
	lsl r0, r0, #0x10
	ldrb r1, [r1, #9]
	asr r0, r0, #0x10
	bl ov96_0220E6DC
	strh r0, [r6, #4]
	b _02210ABE
_02210AAC:
	ldr r1, [r6, #0xc]
	mov r0, #1
	bic r1, r0
	ldr r0, _02210ADC ; =0xFFFFF87F
	and r0, r1
	str r0, [r6, #0xc]
	b _02210ABE
_02210ABA:
	bl GF_AssertFail
_02210ABE:
	ldr r3, [r6, #0xc]
	add r0, r7, #0
	lsl r2, r3, #0x1b
	lsl r3, r3, #0x19
	lsr r2, r2, #0x1e
	lsr r3, r3, #0x1e
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov96_0220E818
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02210ADC: .word 0xFFFFF87F
	thumb_func_end ov96_022109D8

	thumb_func_start ov96_02210AE0
ov96_02210AE0: ; 0x02210AE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	ldr r2, [r5, #0xc]
	str r0, [sp, #4]
	lsl r1, r2, #0x1b
	lsl r2, r2, #0x19
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_0220E70C
	cmp r0, #0
	beq _02210BC4
	ldrb r0, [r5, #0x10]
	sub r0, r0, #1
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _02210B22
	add r0, r5, #0
	bl ov96_0221090C
	mov r0, #0x5a
	strb r0, [r5, #0x10]
_02210B22:
	ldr r1, [r5, #0xc]
	ldr r0, _02210BC8 ; =0xFFF807FF
	and r0, r1
	lsl r1, r1, #0xd
	lsr r1, r1, #0x18
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0xd
	orr r0, r1
	str r0, [r5, #0xc]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x18
	bne _02210B50
	add r0, r5, #0
	bl ov96_022109D8
	ldr r1, [r5, #0xc]
	ldr r0, _02210BC8 ; =0xFFF807FF
	and r1, r0
	mov r0, #0xa
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r5, #0xc]
_02210B50:
	ldr r1, [r5, #0xc]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _02210BC4
	lsl r1, r1, #0x1d
	add r0, r5, #0
	lsr r1, r1, #0x1e
	mov r2, #0x10
	bl ov96_02210BD0
	cmp r0, #0
	beq _02210BC4
	bl MTRandom
	mov r1, #0x64
	bl _u32_div_f
	add r0, sp, #8
	str r0, [sp]
	ldr r2, [r5, #0xc]
	add r7, r1, #0
	lsl r1, r2, #0x1b
	lsl r2, r2, #0x19
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #0xc
	bl ov96_0220E770
	add r4, #0x14
	cmp r4, r6
	bge _02210B9C
	mov r0, #0
	b _02210BA8
_02210B9C:
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	lsl r1, r0, #2
	ldr r0, _02210BCC ; =ov96_0221D1B8
	ldr r0, [r0, r1]
_02210BA8:
	cmp r7, r0
	bge _02210BC4
	ldr r2, [r5, #0xc]
	ldr r0, [sp, #4]
	lsl r1, r2, #0x1b
	lsl r2, r2, #0x19
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_0220E834
_02210BC4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02210BC8: .word 0xFFF807FF
_02210BCC: .word ov96_0221D1B8
	thumb_func_end ov96_02210AE0

