	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02207BE4
	.public ov96_02207C38
	.public ov96_02207C64
	.public ov96_02207CCC
	.public ov96_02207D64
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern ov96_021E5F24
	.extern ov96_021E8318
	.extern ov96_021E8A20
	.extern ov96_02207774
	.extern ov96_022088AC
	.extern ov96_02208A4C

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
	thumb_func_start ov96_02207BE4
ov96_02207BE4: ; 0x02207BE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02207C30 ; =0x00000512
	ldrb r1, [r5, r0]
	cmp r1, #4
	blo _02207C2A
	sub r0, r0, #1
	ldr r1, [r5, #0x1c]
	ldrb r0, [r5, r0]
	ldr r4, [r1, #0x14]
	mov r1, #2
	lsl r6, r0, #0xb
	add r0, r4, r6
	lsl r1, r1, #0xa
	bl DC_FlushRange
	mov r1, #6
	mov r2, #2
	add r0, r4, r6
	lsl r1, r1, #0xa
	lsl r2, r2, #0xa
	bl GX_LoadBG0Char
	ldr r0, _02207C30 ; =0x00000512
	mov r1, #0
	strb r1, [r5, r0]
	sub r0, r0, #1
	ldrb r0, [r5, r0]
	mov r1, #6
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _02207C34 ; =0x00000511
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02207C2A:
	add r1, r1, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02207C30: .word 0x00000512
_02207C34: .word 0x00000511
	thumb_func_end ov96_02207BE4

	thumb_func_start ov96_02207C38
ov96_02207C38: ; 0x02207C38
	push {r4, lr}
	cmp r0, #0
	blt _02207C60
	mov r4, #1
	lsl r4, r4, #8
	cmp r0, r4
	bge _02207C60
	cmp r1, #0
	blt _02207C60
	cmp r1, #0xc0
	bge _02207C60
	cmp r3, #0
	beq _02207C56
	mov r1, #3
	b _02207C58
_02207C56:
	mov r1, #4
_02207C58:
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	bl sub_0200606C
_02207C60:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_02207C38

	thumb_func_start ov96_02207C64
ov96_02207C64: ; 0x02207C64
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	add r0, r4, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r6, r0, #0
	add r0, r4, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r1, #2
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x18]
	ldr r0, [r5, r0]
	ldr r2, _02207CC8 ; =0x000003FF
	lsr r0, r0, #0x12
	asr r3, r1, #0xb
	mov r1, #0x1f
	and r0, r2
	and r1, r3
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r2, #0
	sub r0, #0x18
	cmp r5, r0
	bls _02207CB6
	add r5, r2, #0
	sub r5, #0x18
_02207CB6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021E8318
	add r0, r6, #0
	add r1, r5, #0
	bl ov96_02207774
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02207CC8: .word 0x000003FF
	thumb_func_end ov96_02207C64

	thumb_func_start ov96_02207CCC
ov96_02207CCC: ; 0x02207CCC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x72
	lsl r1, r1, #2
	add r6, r0, #0
	str r2, [sp]
	bl Heap_Alloc
	mov r2, #0x72
	add r7, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	str r6, [r7]
	ldr r0, [sp]
	str r4, [r7, #8]
	str r0, [r7, #4]
	add r0, r7, #0
	bl ov96_02208A4C
	ldr r2, _02207D60 ; =0x00000135
	mov r0, #1
	mov r1, #0x1b
	add r3, r6, #0
	bl NewMsgDataFromNarc
	str r0, [r7, #0x1c]
	add r0, r6, #0
	bl MessageFormat_New
	str r0, [r7, #0x20]
	mov r4, #0
	add r5, r7, #0
_02207D10:
	mov r0, #0xb
	add r1, r6, #0
	bl String_New
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _02207D10
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetParticipantUnk04
	add r4, r0, #0
	mov r6, #0
	add r5, r7, #0
_02207D3A:
	mov r0, #0x6a
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x12
	bl CopyU16ArrayToString
	add r6, r6, #1
	add r4, #0x28
	add r5, r5, #4
	cmp r6, #3
	blt _02207D3A
	add r0, r7, #0
	mov r1, #1
	bl ov96_022088AC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02207D60: .word 0x00000135
	thumb_func_end ov96_02207CCC

	thumb_func_start ov96_02207D64
ov96_02207D64: ; 0x02207D64
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x42
	lsl r7, r7, #2
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	add r6, r7, #4
_02207D72:
	ldr r0, [r5, r7]
	bl Heap_Free
	ldr r0, [r5, r6]
	bl Heap_Free
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _02207D72
	ldr r4, [sp]
	mov r5, #0
_02207D8A:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl Heap_Free
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0xc
	blt _02207D8A
	ldr r0, [sp]
	ldr r0, [r0, #0x24]
	bl Heap_Free
	mov r6, #0x6a
	ldr r4, [sp]
	mov r5, #0
	lsl r6, r6, #2
_02207DAC:
	ldr r0, [r4, r6]
	bl String_Delete
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02207DAC
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	bl MessageFormat_Delete
	ldr r0, [sp]
	ldr r0, [r0, #0x1c]
	bl DestroyMsgData
	ldr r0, [sp]
	add r0, #0xc
	bl RemoveWindow
	ldr r0, [sp]
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02207D64

