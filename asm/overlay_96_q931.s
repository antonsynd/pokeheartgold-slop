	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02208FF0
	.public ov96_022090A8
	.public ov96_022090D8

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
	thumb_func_start ov96_02208FF0
ov96_02208FF0: ; 0x02208FF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x54
	mov ip, r0
	add r0, sp, #0x10
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r7, r1, #0
_02209008:
	add r2, r0, #1
	mov r1, #0xc
	mul r1, r2
	add r2, sp, #4
	lsl r4, r0, #2
	mov r3, ip
	ldr r3, [r3, r4]
	add r2, r2, r1
	str r3, [r2, #8]
	mov r3, #0
	str r3, [r2, #4]
	add r4, r3, #0
	add r3, sp, #4
	str r4, [r3, r1]
	add r1, r4, #0
	cmp r0, #0
	bls _02209054
	ldr r5, [r2, #8]
	mov r4, #0x10
	ldrsh r4, [r5, r4]
	mov r6, #0x10
_02209032:
	ldr r3, [r3, #4]
	ldr r5, [r3, #8]
	ldrsh r5, [r5, r6]
	cmp r5, r4
	bge _0220904A
	ldr r4, [r3]
	str r2, [r4, #4]
	ldr r4, [r3]
	str r4, [r2]
	str r3, [r2, #4]
	str r2, [r3]
	b _02209054
_0220904A:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	blo _02209032
_02209054:
	cmp r1, r0
	bne _0220905C
	str r2, [r3, #4]
	str r3, [r2]
_0220905C:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x30
	blo _02209008
	ldr r0, [sp, #8]
	mov r3, #0
	ldr r1, [r0, #8]
	mov r0, #0x10
	ldrsh r2, [r1, r0]
	add r1, sp, #4
_02209072:
	ldr r1, [r1, #4]
	lsl r5, r3, #2
	ldr r4, [r1, #8]
	str r4, [r7, r5]
	ldr r4, [r7, r5]
	ldrsh r4, [r4, r0]
	cmp r2, r4
	bne _0220908C
	ldr r4, [sp]
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp]
_0220908C:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #0x30
	blo _02209072
	ldr r0, [sp]
	cmp r0, #0
	bne _022090A0
	bl GF_AssertFail
_022090A0:
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x54
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_02208FF0

	thumb_func_start ov96_022090A8
ov96_022090A8: ; 0x022090A8
	push {r4, r5}
	ldr r5, [r0, #8]
	ldr r3, [r0, #0xc]
	add r4, r5, #0
	add r0, r3, #0
	sub r5, #0x10
	add r4, #0x10
	sub r0, #0x10
	add r3, #0x10
	cmp r5, r1
	bgt _022090D0
	cmp r1, r4
	bge _022090D0
	cmp r0, r2
	bgt _022090D0
	cmp r2, r3
	bge _022090D0
	mov r0, #1
	pop {r4, r5}
	bx lr
_022090D0:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_022090A8

	thumb_func_start ov96_022090D8
ov96_022090D8: ; 0x022090D8
	ldr r2, [r0, #0xc]
	cmp r2, #0x68
	bge _022090E2
	mov r0, #0
	bx lr
_022090E2:
	mov r1, #0x62
	lsl r1, r1, #2
	cmp r2, r1
	ldr r1, [r0, #8]
	bgt _0220910C
	cmp r1, #0x90
	blt _022090F4
	mov r2, #1
	b _022090F6
_022090F4:
	mov r2, #0
_022090F6:
	mov r0, #0x17
	lsl r0, r0, #4
	cmp r1, r0
	bgt _02209102
	mov r0, #1
	b _02209104
_02209102:
	mov r0, #0
_02209104:
	tst r0, r2
	beq _0220912C
	mov r0, #1
	bx lr
_0220910C:
	cmp r1, #0xd0
	blt _02209114
	mov r2, #1
	b _02209116
_02209114:
	mov r2, #0
_02209116:
	mov r0, #0x13
	lsl r0, r0, #4
	cmp r1, r0
	bgt _02209122
	mov r0, #1
	b _02209124
_02209122:
	mov r0, #0
_02209124:
	tst r0, r2
	beq _0220912C
	mov r0, #1
	bx lr
_0220912C:
	mov r0, #0
	bx lr
	thumb_func_end ov96_022090D8

