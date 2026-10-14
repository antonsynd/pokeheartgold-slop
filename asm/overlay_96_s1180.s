	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02214044

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
	thumb_func_start ov96_02214044
ov96_02214044: ; 0x02214044
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0x10]
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	add r4, r5, #0
	add r4, #0x18
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	add r6, r2, #0
	bl FillWindowPixelBuffer
	cmp r6, #0
	beq _022140A2
	cmp r6, #2
	bne _0221406C
	ldr r0, _022140E0 ; =0x000007B8
	ldr r2, [r5, r0]
	b _0221408A
_0221406C:
	cmp r6, #1
	bne _02214076
	ldr r0, _022140E4 ; =0x000007BC
	ldr r2, [r5, r0]
	b _0221408A
_02214076:
	cmp r6, #3
	bne _02214082
	mov r0, #0x1f
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	b _0221408A
_02214082:
	bl GF_AssertFail
	ldr r0, _022140E0 ; =0x000007B8
	ldr r2, [r5, r0]
_0221408A:
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022140E8 ; =0x00010200
	mov r1, #4
	str r0, [sp, #8]
	add r0, r4, r7
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	b _022140D4
_022140A2:
	ldr r0, [sp, #0x10]
	add r1, r5, r0
	ldr r0, _022140EC ; =0x00000818
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022140B4
	mov r1, #0xc1
	lsl r1, r1, #0xa
	b _022140B6
_022140B4:
	ldr r1, _022140E8 ; =0x00010200
_022140B6:
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, r7
	lsl r2, r2, #2
	add r5, r5, r2
	ldr r2, _022140F0 ; =0x000007C4
	mov r1, #4
	ldr r2, [r5, r2]
	bl AddTextPrinterParameterizedWithColor
_022140D4:
	add r0, r4, r7
	bl CopyWindowToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022140E0: .word 0x000007B8
_022140E4: .word 0x000007BC
_022140E8: .word 0x00010200
_022140EC: .word 0x00000818
_022140F0: .word 0x000007C4
	thumb_func_end ov96_02214044

