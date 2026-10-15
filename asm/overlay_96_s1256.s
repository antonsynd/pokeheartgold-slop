	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02215FC8
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E8A20
	.extern ov96_022158D4
	.extern ov96_0221768C
	.extern ov96_022180CC
	.extern ov96_02218330
	.extern ov96_02218578
	.extern ov96_02218A68
	.extern ov96_02219398
	.extern ov96_02219460
	.extern ov96_02219FE4

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
	thumb_func_start ov96_02215FC8
ov96_02215FC8: ; 0x02215FC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #4]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #8]
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	beq _02215FF0
	b _022161C4
_02215FF0:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x20]
	lsr r0, r0, #0x1f
	beq _0221600A
	mov r1, #0x62
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r1, [sp]
	bl ov96_02218330
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0221600A:
	ldr r1, _022161D4 ; =0x00000438
	ldr r0, [sp, #0xc]
	ldr r0, [r0, r1]
	cmp r0, #0
	ble _02216032
	sub r2, r0, #1
	ldr r0, [sp, #0xc]
	str r2, [r0, r1]
	ldr r0, [sp, #8]
	ldr r2, [r0, #0x20]
	ldr r0, _022161D8 ; =0xFFF80007
	and r2, r0
	ldr r0, [sp, #0xc]
	ldr r0, [r0, r1]
	add r1, r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	orr r1, r0
	ldr r0, [sp, #8]
	str r1, [r0, #0x20]
_02216032:
	ldr r0, [sp, #4]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_02216046:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02216046
	ldr r0, [r3]
	mov r1, #0x66
	str r0, [r4]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	add r0, #0x50
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r6, r0, r1
_02216064:
	ldr r0, [sp, #4]
	bl ov96_021E8A20
	add r7, r0, #0
	ldr r0, [r7]
	add r4, r6, #0
	add r5, r6, #0
	lsl r0, r0, #0xf
	add r4, #8
	add r5, #0xc
	lsr r0, r0, #0x1f
	beq _022160E0
	ldr r0, [r4]
	lsl r1, r0, #0x11
	lsr r1, r1, #0x1f
	beq _02216092
	lsl r2, r0, #0x10
	lsr r2, r2, #0x1f
	beq _02216092
	ldr r1, _022161DC ; =0xFFFFBFFF
	and r0, r1
	str r0, [r4]
	b _022160BA
_02216092:
	cmp r1, #0
	bne _022160BA
	ldr r1, [r4]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	bne _022160BA
	mov r0, #1
	lsl r0, r0, #0xe
	orr r1, r0
	lsl r0, r0, #1
	orr r0, r1
	str r0, [r4]
	ldr r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r6, #4]
	ldr r0, [r7]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	strh r0, [r6, #6]
_022160BA:
	ldr r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r6]
	ldr r0, [r7]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	strh r0, [r6, #2]
	ldr r1, [r4]
	ldr r0, _022161E0 ; =0xFFFFC000
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x12
	add r2, r1, #1
	ldr r1, _022161E4 ; =0x00003FFF
	and r1, r2
	orr r0, r1
	str r0, [r4]
	b _02216104
_022160E0:
	ldr r1, [r4]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	beq _02216104
	ldr r0, _022161E8 ; =0xE000FFFF
	and r0, r1
	lsl r1, r1, #0x12
	lsr r1, r1, #0x12
	lsl r1, r1, #0x13
	lsr r1, r1, #3
	orr r1, r0
	ldr r0, _022161E0 ; =0xFFFFC000
	and r1, r0
	sub r0, r0, #1
	and r1, r0
	ldr r0, _022161EC ; =0xFFFF7FFF
	and r0, r1
	str r0, [r4]
_02216104:
	mov r0, #0
	mov r1, #2
	ldrsh r0, [r6, r0]
	ldrsh r1, [r6, r1]
	bl ov96_022158D4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_02219460
	ldr r0, [r5, #0x60]
	lsl r1, r0, #5
	lsr r1, r1, #0x1f
	beq _02216172
	lsl r0, r0, #6
	lsr r1, r0, #0x1e
	cmp r1, #1
	bne _02216150
	ldr r0, [r7]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _02216150
	add r0, r5, #0
	bl ov96_02219398
	add r0, r5, #0
	bl ov96_02218A68
	ldr r1, [r5, #0x60]
	ldr r0, _022161F0 ; =0xFCFFFFFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x18
	orr r0, r1
	str r0, [r5, #0x60]
	b _02216172
_02216150:
	cmp r1, #2
	bne _02216172
	ldr r0, [r7]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1e
	cmp r0, #2
	bne _02216172
	ldr r1, [r5, #0x60]
	ldr r0, _022161F4 ; =0xFBFFFFFF
	and r1, r0
	ldr r0, _022161F0 ; =0xFCFFFFFF
	and r0, r1
	str r0, [r5, #0x60]
	add r0, r5, #0
	mov r1, #4
	bl ov96_02218578
_02216172:
	ldr r0, [sp, #4]
	add r6, #0xa8
	add r0, #0x28
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	bge _02216186
	b _02216064
_02216186:
	mov r1, #0x61
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl ov96_02219FE4
	mov r1, #0x66
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r1, [sp]
	bl ov96_022180CC
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x20]
	lsl r0, r1, #0xd
	lsr r0, r0, #0x10
	bne _022161B6
	ldr r0, _022161F8 ; =0x7FFFFFFF
	and r1, r0
	add r0, r0, #1
	orr r1, r0
	ldr r0, [sp, #8]
	str r1, [r0, #0x20]
_022161B6:
	mov r1, #0x62
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r1, [sp]
	bl ov96_02218330
_022161C4:
	ldr r1, _022161FC ; =0x0000043C
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	ldr r1, [sp]
	bl ov96_0221768C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022161D4: .word 0x00000438
_022161D8: .word 0xFFF80007
_022161DC: .word 0xFFFFBFFF
_022161E0: .word 0xFFFFC000
_022161E4: .word 0x00003FFF
_022161E8: .word 0xE000FFFF
_022161EC: .word 0xFFFF7FFF
_022161F0: .word 0xFCFFFFFF
_022161F4: .word 0xFBFFFFFF
_022161F8: .word 0x7FFFFFFF
_022161FC: .word 0x0000043C
	thumb_func_end ov96_02215FC8

