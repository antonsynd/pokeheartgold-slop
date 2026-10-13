	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FDC7C
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E6454
	.extern ov96_021E8A20
	.extern ov96_021EB570
	.extern ov96_021FE550
	.extern ov96_021FEAEC
	.extern ov96_021FFBD8
	.extern ov96_021FFC34
	.extern ov96_0220050C
	.extern ov96_022005B4
	.extern ov96_02200A64

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
	thumb_func_start ov96_021FDC7C
ov96_021FDC7C: ; 0x021FDC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldr r0, [sp]
	bl PokeathlonCourse_GetDataCopyArea
	str r0, [sp, #8]
	add r0, #0xf0
	bl ov96_021E8A20
	add r7, r0, #0
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r5, #0
	add r6, r7, #0
_021FDCA8:
	mov r0, #0x3e
	lsl r0, r0, #4
	lsl r1, r5, #0x18
	ldrh r2, [r6]
	ldr r0, [r4, r0]
	lsr r1, r1, #0x18
	bl ov96_0220050C
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #4
	blt _021FDCA8
	ldr r0, [sp, #4]
	mov r1, #0
	lsl r5, r0, #1
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	add r2, r1, #0
	bl ScheduleSetBgPosText
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	mov r1, #1
	mov r2, #0
	lsr r3, r3, #1
	bl ScheduleSetBgPosText
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0
	lsl r3, r3, #1
	bl ScheduleSetBgPosText
	add r2, r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	add r2, #0x30
	bl ov96_021FE550
	ldrh r1, [r7, r5]
	add r0, r4, #0
	bl ov96_021FEAEC
	ldr r0, [sp, #4]
	add r0, r7, r0
	ldrb r1, [r0, #0x10]
	mov r0, #0x7f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r7, #0x14]
	asr r1, r0, #0x1a
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	asr r0, r1
	mov r1, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021FDD2E
	mov r2, #0
	b _021FDD30
_021FDD2E:
	ldrh r2, [r7, r5]
_021FDD30:
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl ov96_022005B4
	ldr r0, [r7, #0x14]
	asr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _021FDD54
	add r0, r4, #0
	add r0, #0x20
	add r1, r6, #0
	bl ov96_021FFC34
_021FDD54:
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrh r1, [r7, #0x18]
	ldr r0, [r4, r0]
	bl ov96_02200A64
	ldr r0, [sp, #4]
	add r0, r7, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #4
	bhi _021FDDE6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FDD76: ; jump table
	.short _021FDD80 - _021FDD76 - 2 ; case 0
	.short _021FDDD8 - _021FDD76 - 2 ; case 1
	.short _021FDDA0 - _021FDD76 - 2 ; case 2
	.short _021FDD90 - _021FDD76 - 2 ; case 3
	.short _021FDDBC - _021FDD76 - 2 ; case 4
_021FDD80:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xb
	bl ov96_021EB570
	b _021FDDE6
_021FDD90:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl ov96_021EB570
	b _021FDDE6
_021FDDA0:
	ldr r0, _021FDDFC ; =0x00000642
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _021FDDB2
	mov r1, #1
	strh r1, [r4, r0]
	ldr r0, _021FDE00 ; =0x0000089B
	bl PlaySE
_021FDDB2:
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl ov96_021EB570
	b _021FDDE6
_021FDDBC:
	ldr r0, _021FDDFC ; =0x00000642
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _021FDDCE
	mov r1, #1
	strh r1, [r4, r0]
	ldr r0, _021FDE04 ; =0x0000089C
	bl PlaySE
_021FDDCE:
	ldr r0, [r4, #0x1c]
	mov r1, #0xe
	bl ov96_021EB570
	b _021FDDE6
_021FDDD8:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xf
	bl ov96_021EB570
_021FDDE6:
	ldrh r1, [r7, r5]
	ldr r0, [r4]
	bl ov96_021FFBD8
	ldrh r1, [r7, #0x18]
	ldr r0, [sp]
	bl ov96_021E6454
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021FDDFC: .word 0x00000642
_021FDE00: .word 0x0000089B
_021FDE04: .word 0x0000089C
	thumb_func_end ov96_021FDC7C

