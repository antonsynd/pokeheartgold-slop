	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0221007C
	.public ov96_0221013C
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E6454
	.extern ov96_021E8A20
	.extern ov96_0220DC7C
	.extern ov96_0220DEAC
	.extern ov96_0220ECA4
	.extern ov96_0220ED34
	.extern ov96_02210390
	.extern ov96_0221040C

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
	thumb_func_start ov96_0221007C
ov96_0221007C: ; 0x0221007C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	add r7, r1, #0
	str r2, [sp, #0x10]
	str r3, [r0]
	mov r5, #0
	add r4, r0, #0
	mov r6, #5
_0221008E:
	mov r2, #0
	str r6, [sp]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	add r3, r2, #0
	str r6, [sp, #4]
	bl ov96_0220ED34
	str r0, [r4, #0x3c]
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, #0xc
	blt _0221008E
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0x18]
_022100B2:
	ldr r4, [sp, #0x18]
	mov r6, #0
_022100B6:
	cmp r6, #1
	bne _022100BE
	mov r5, #1
	b _022100C0
_022100BE:
	mov r5, #0
_022100C0:
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r2, #0
	ldr r1, [sp, #0x10]
	str r5, [sp, #8]
	add r0, r7, #0
	add r3, r2, #0
	bl ov96_0220ECA4
	str r0, [r4]
	mov r0, #2
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r2, #0
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	add r3, r2, #0
	str r5, [sp, #8]
	bl ov96_0220ECA4
	str r0, [r4, #8]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _022100B6
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r2, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	add r3, r2, #0
	bl ov96_0220ED34
	ldr r1, [sp, #0x18]
	mov r2, #0
	str r0, [r1, #0x10]
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	add r3, r2, #0
	bl ov96_0220ED34
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x14]
	add r0, r1, #0
	add r0, #0x1c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #2
	blt _022100B2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_0221007C

	thumb_func_start ov96_0221013C
ov96_0221013C: ; 0x0221013C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_0220DC7C
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_0220DEAC
	ldr r0, [r4, #0x1c]
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x63
	lsl r0, r0, #2
	add r6, r5, r0
	ldr r0, [r4, #0x20]
	lsl r7, r1, #1
	lsl r0, r0, #0x19
	lsr r2, r0, #0x19
	ldrh r0, [r6, r7]
	cmp r2, r0
	beq _02210194
	lsl r2, r2, #0x10
	ldr r0, [r5]
	lsr r2, r2, #0x10
	bl ov96_02210390
_02210194:
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	strh r0, [r6, r7]
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #2
	lsr r0, r0, #0x1a
	sub r1, r0, #1
	cmp r1, #0
	bgt _022101AA
	mov r1, #0
_022101AA:
	cmp r1, #0
	bgt _022101B0
	mov r1, #0
_022101B0:
	ldr r0, [sp, #4]
	add r0, #0xc4
	str r0, [sp, #4]
	ldr r0, [r0]
	bl ov96_0221040C
	ldr r1, [r4, #0x1c]
	ldr r0, [sp]
	lsl r1, r1, #2
	lsr r2, r1, #0x1a
	mov r1, #0x1e
	mul r1, r2
	bl ov96_021E6454
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_0221013C

