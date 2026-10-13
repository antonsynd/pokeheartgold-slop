	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220AD64
	.extern ov96_0220AED4
	.extern ov96_0220AF64
	.extern ov96_0220B164

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
	thumb_func_start ov96_0220AD64
ov96_0220AD64: ; 0x0220AD64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #0xa
	blo _0220ADAC
	add r7, r0, #0
	mov r6, #0
	add r4, r5, #0
	sub r7, #0x2c
_0220AD7E:
	ldr r0, [r4, r7]
	bl ov96_0220B164
	cmp r0, #1
	beq _0220AD90
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0xa
	blt _0220AD7E
_0220AD90:
	cmp r6, #0xa
	bne _0220AE06
	ldr r0, _0220AE1C ; =0x000008BD
	bl PlaySE
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0xf
	bic r2, r0
	mov r0, #2
	orr r0, r2
	str r0, [r5, r1]
	b _0220AE06
_0220ADAC:
	sub r1, r0, #4
	ldr r1, [r5, r1]
	sub r3, r0, #4
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r1, r3, #0
	add r6, r2, #1
	lsl r6, r6, #0x10
	ldr r1, [r5, r1]
	ldr r4, _0220AE20 ; =0xFFFF0000
	lsr r6, r6, #0x10
	and r1, r4
	orr r6, r1
	add r1, r3, #0
	str r6, [r5, r1]
	cmp r2, #2
	blo _0220AE06
	ldr r1, [r5, r3]
	and r1, r4
	str r1, [r5, r3]
	ldr r1, [r5, r0]
	sub r0, #0x2c
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	bl ov96_0220AED4
	ldr r0, _0220AE24 ; =0x000008C1
	bl PlaySE
	mov r2, #6
	lsl r2, r2, #6
	ldr r3, [r5, r2]
	mov r1, #0xf0
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x18
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r5, r2]
_0220AE06:
	mov r6, #0x55
	mov r4, #0
	lsl r6, r6, #2
_0220AE0C:
	ldr r0, [r5, r6]
	bl ov96_0220AF64
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa
	blt _0220AE0C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220AE1C: .word 0x000008BD
_0220AE20: .word 0xFFFF0000
_0220AE24: .word 0x000008C1
	thumb_func_end ov96_0220AD64

