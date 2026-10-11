	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FFE38
	.public ov96_021FFE5C
	.public ov96_021FFEE8
	.public ov96_021FFF3C
	.public ov96_021FFFE8
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern ov96_021E5F24
	.extern ov96_021E8318
	.extern ov96_021E8A20
	.extern ov96_021FFD80
	.extern ov96_02200BD8
	.extern ov96_02200C40
	.extern ov96_02200DF8

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
	thumb_func_start ov96_021FFE38
ov96_021FFE38: ; 0x021FFE38
	push {r3, lr}
	cmp r0, #0
	blt _021FFE5A
	mov r3, #1
	lsl r3, r3, #8
	cmp r0, r3
	bge _021FFE5A
	cmp r2, #0
	beq _021FFE4E
	mov r2, #3
	b _021FFE50
_021FFE4E:
	mov r2, #4
_021FFE50:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r1, r2, #0
	bl sub_0200606C
_021FFE5A:
	pop {r3, pc}
	thumb_func_end ov96_021FFE38

	thumb_func_start ov96_021FFE5C
ov96_021FFE5C: ; 0x021FFE5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _021FFEE4 ; =0x00000644
	add r7, r2, #0
	add r3, r0, r1
	mov r1, #0xd4
	mul r1, r5
	add r2, r0, r1
	add r1, r2, #0
	add r1, #0xbb
	ldrb r6, [r1]
	mov r1, #0x1c
	mov r4, #0
	mul r1, r6
	add r6, r2, #0
	add r6, #0xcd
	add r1, r2, r1
	add r1, #0x60
	ldrb r6, [r6]
	ldrb r1, [r1]
	cmp r6, #0
	beq _021FFE8C
	mov r4, #3
	b _021FFEA6
_021FFE8C:
	add r2, #0xd9
	ldrb r2, [r2]
	cmp r2, #0
	beq _021FFE98
	mov r4, #3
	b _021FFEA6
_021FFE98:
	cmp r1, #2
	bne _021FFEA0
	mov r4, #3
	b _021FFEA6
_021FFEA0:
	cmp r1, #1
	bne _021FFEA6
	mov r4, #1
_021FFEA6:
	cmp r7, #0
	bne _021FFEAE
	strb r4, [r3, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FFEAE:
	mov r1, #0xc
	mul r1, r5
	add r2, r0, r1
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021FFED8
	cmp r4, #1
	bhi _021FFEC8
	mov r0, #2
	strb r0, [r3, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FFEC8:
	cmp r4, #3
	bne _021FFED2
	mov r0, #4
	strb r0, [r3, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FFED2:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021FFED8:
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _021FFEE2
	strb r4, [r3, r5]
_021FFEE2:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FFEE4: .word 0x00000644
	thumb_func_end ov96_021FFE5C

	thumb_func_start ov96_021FFEE8
ov96_021FFEE8: ; 0x021FFEE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	add r0, r6, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r7, r0, #0
	add r0, r6, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, r0
	ldrb r2, [r1, #0x10]
	mov r1, #0x7f
	lsl r0, r0, #1
	and r1, r2
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	ldrh r4, [r4, r0]
	cmp r5, #0x3c
	bls _021FFF20
	mov r5, #0x3c
_021FFF20:
	lsl r1, r5, #0xa
	add r1, r4, r1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ov96_021E8318
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov96_021FFD80
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FFEE8

	thumb_func_start ov96_021FFF3C
ov96_021FFF3C: ; 0x021FFF3C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x1a
	lsl r1, r1, #4
	add r6, r0, #0
	str r2, [sp]
	bl Heap_Alloc
	mov r2, #0x1a
	add r7, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	str r6, [r7]
	ldr r0, [sp]
	str r4, [r7, #8]
	str r0, [r7, #4]
	add r0, r7, #0
	bl ov96_02200DF8
	ldr r2, _021FFFE4 ; =0x00000135
	mov r0, #1
	mov r1, #0x1b
	add r3, r6, #0
	bl NewMsgDataFromNarc
	str r0, [r7, #0x2c]
	add r0, r6, #0
	bl MessageFormat_New
	str r0, [r7, #0x30]
	mov r4, #0
	add r5, r7, #0
_021FFF80:
	mov r0, #0xb
	add r1, r6, #0
	bl String_New
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021FFF80
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetParticipantUnk04
	add r4, r0, #0
	mov r6, #0
	add r5, r7, #0
_021FFFAA:
	mov r0, #0x17
	lsl r0, r0, #4
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x12
	bl CopyU16ArrayToString
	add r6, r6, #1
	add r4, #0x28
	add r5, r5, #4
	cmp r6, #3
	blt _021FFFAA
	add r0, r7, #0
	mov r1, #1
	bl ov96_02200BD8
	add r0, r7, #0
	bl ov96_02200C40
	mov r0, #0x16
	mov r1, #1
	lsl r0, r0, #4
	strh r1, [r7, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r7, r0]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FFFE4: .word 0x00000135
	thumb_func_end ov96_021FFF3C

	thumb_func_start ov96_021FFFE8
ov96_021FFFE8: ; 0x021FFFE8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x4a
	lsl r7, r7, #2
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	add r6, r7, #4
_021FFFF6:
	ldr r0, [r5, r7]
	bl Heap_Free
	ldr r0, [r5, r6]
	bl Heap_Free
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _021FFFF6
	ldr r4, [sp]
	mov r5, #0
_0220000E:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl Heap_Free
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0xc
	blt _0220000E
	ldr r0, [sp]
	ldr r0, [r0, #0x34]
	bl Heap_Free
	mov r6, #0x17
	ldr r4, [sp]
	mov r5, #0
	lsl r6, r6, #4
_02200030:
	ldr r0, [r4, r6]
	bl String_Delete
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02200030
	ldr r0, [sp]
	ldr r0, [r0, #0x30]
	bl MessageFormat_Delete
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl DestroyMsgData
	ldr r0, [sp]
	add r0, #0xc
	bl RemoveWindow
	ldr r0, [sp]
	add r0, #0x1c
	bl RemoveWindow
	ldr r0, [sp]
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FFFE8

