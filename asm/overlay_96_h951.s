	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220CD84
	.public ov96_0220CE04
	.public ov96_0220CF50
	.extern PokeathlonCourse_GetDataCopyArea
	.extern ov96_021E8228
	.extern ov96_021E8A20
	.extern ov96_0220D014
	.extern ov96_0220D33C

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
	thumb_func_start ov96_0220CD84
ov96_0220CD84: ; 0x0220CD84
	push {r4, r5}
	cmp r1, #1
	beq _0220CD98
	cmp r1, #2
	bne _0220CDDA
	ldr r3, [r0, #0x18]
	ldr r2, _0220CDF0 ; =0xFFFFF800
	and r2, r3
	str r2, [r0, #0x18]
	b _0220CDDA
_0220CD98:
	ldr r2, [r0, #0x14]
	lsl r2, r2, #8
	lsr r5, r2, #0x18
	sub r5, #0xa
	cmp r5, #0x64
	ble _0220CDA8
	mov r5, #0x64
	b _0220CDAE
_0220CDA8:
	cmp r5, #0
	bge _0220CDAE
	mov r5, #0
_0220CDAE:
	ldr r4, [r0, #0x14]
	ldr r3, _0220CDF4 ; =0xFF00FFFF
	add r2, r0, #0
	and r4, r3
	lsl r3, r5, #0x18
	lsr r3, r3, #8
	orr r4, r3
	add r5, r4, #0
	ldr r3, _0220CDF8 ; =0x3FFFFFFF
	lsr r4, r4, #0x1e
	add r4, r4, #1
	and r5, r3
	lsl r4, r4, #0x1e
	orr r4, r5
	str r4, [r0, #0x14]
	lsr r4, r4, #0x1e
	add r2, #0x14
	cmp r4, #3
	blo _0220CDDA
	ldr r4, [r2]
	and r3, r4
	str r3, [r2]
_0220CDDA:
	ldr r3, [r0, #0x14]
	ldr r2, _0220CDFC ; =0xC0FFFFFF
	lsl r1, r1, #0x1a
	and r2, r3
	lsr r1, r1, #2
	orr r2, r1
	ldr r1, _0220CE00 ; =0xFFFF00FF
	and r1, r2
	str r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
	.balign 4, 0
_0220CDF0: .word 0xFFFFF800
_0220CDF4: .word 0xFF00FFFF
_0220CDF8: .word 0x3FFFFFFF
_0220CDFC: .word 0xC0FFFFFF
_0220CE00: .word 0xFFFF00FF
	thumb_func_end ov96_0220CD84

	thumb_func_start ov96_0220CE04
ov96_0220CE04: ; 0x0220CE04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #4]
	ldr r6, _0220CF48 ; =0x00000000
	bne _0220CE14
	bl GF_AssertFail
_0220CE14:
	add r0, r5, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x17
	lsr r7, r0, #0x17
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0220CE34
	add r7, #0xa0
	lsl r0, r7, #0x10
	asr r7, r0, #0x10
_0220CE34:
	add r4, r5, #0
	add r4, #0x10
_0220CE38:
	ldr r0, [r4]
	sub r0, r0, r7
	str r0, [r4]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bgt _0220CE72
	neg r0, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0x64
	str r0, [r5, #0x10]
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x14]
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #3
	bl ov96_021E8228
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _0220CE38
_0220CE72:
	ldr r2, [r5, #0x14]
	mov r1, #0xff
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r1, r1, r6
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x1c]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	bne _0220CEFC
	lsl r0, r1, #0x17
	lsr r0, r0, #0x1f
	beq _0220CEF2
	ldr r2, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x18
	ldr r0, [r2, r0]
	lsr r1, r1, #0x18
	lsl r0, r0, #6
	lsl r1, r1, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	bl ov96_0220D33C
	lsl r0, r0, #0x18
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	lsr r0, r0, #6
	ldr r2, [r2, r1]
	ldr r1, _0220CF4C ; =0xFC03FFFF
	and r1, r2
	add r2, r1, #0
	orr r2, r0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [r1, r0]
	ldr r0, [r1, r0]
	lsl r0, r0, #6
	lsr r0, r0, #0x18
	bne _0220CEF2
	mov r3, #1
	str r3, [sp]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x14]
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021E8228
	add r0, r5, #0
	mov r1, #2
	bl ov96_0220CD84
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0220CEF2:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl ov96_0220D014
_0220CEFC:
	cmp r6, #0
	beq _0220CF1A
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0220CF1A
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #0
	bne _0220CF1A
	add r0, r5, #0
	mov r1, #3
	bl ov96_0220CD84
_0220CF1A:
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #8
	orr r1, r0
	mov r0, #0xff
	bic r1, r0
	str r1, [r5, #0x1c]
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x14]
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1e
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov96_021E8228
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220CF48: .word 0x00000000
_0220CF4C: .word 0xFC03FFFF
	thumb_func_end ov96_0220CE04

	thumb_func_start ov96_0220CF50
ov96_0220CF50: ; 0x0220CF50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl PokeathlonCourse_GetDataCopyArea
	ldr r1, [r5, #0x18]
	add r0, #0x50
	lsr r2, r1, #0x1e
	mov r1, #0x28
	mul r1, r2
	add r0, r0, r1
	bl ov96_021E8A20
	ldr r7, [r5, #0x14]
	mov r6, #0xff
	lsr r1, r7, #0x1e
	lsl r2, r1, #2
	ldr r1, [r0]
	add r3, r5, #4
	bic r1, r6
	lsl r6, r7, #0x18
	lsr r6, r6, #0x18
	lsl r6, r6, #0x18
	lsr r6, r6, #0x18
	orr r6, r1
	str r6, [r0]
	ldr r2, [r3, r2]
	ldr r1, _0220CFFC ; =0xFFFF00FF
	lsl r2, r2, #6
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	and r1, r6
	lsr r2, r2, #0x10
	orr r2, r1
	ldr r1, _0220D000 ; =0xFF00FFFF
	str r2, [r0]
	and r1, r2
	ldr r2, [r5, #0x14]
	lsl r2, r2, #8
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #8
	orr r2, r1
	ldr r1, _0220D004 ; =0xFBFFFFFF
	str r2, [r0]
	and r1, r2
	ldr r2, [r5, #0x1c]
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #5
	orr r2, r1
	ldr r1, _0220D008 ; =0xF7FFFFFF
	and r2, r1
	mov r1, #2
	and r1, r4
	lsl r1, r1, #0x1f
	lsr r1, r1, #4
	orr r2, r1
	ldr r1, _0220D00C ; =0xFCFFFFFF
	str r2, [r0]
	and r2, r1
	ldr r1, [r5, #0x14]
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x1e
	lsr r1, r1, #6
	orr r1, r2
	str r1, [r0]
	ldr r1, [r5, #0x14]
	lsl r1, r1, #2
	lsr r1, r1, #0x1a
	cmp r1, #1
	bne _0220CFE8
	mov r3, #1
	b _0220CFEA
_0220CFE8:
	mov r3, #0
_0220CFEA:
	ldr r2, [r0]
	ldr r1, _0220D010 ; =0xEFFFFFFF
	and r2, r1
	lsl r1, r3, #0x1f
	lsr r1, r1, #3
	orr r1, r2
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220CFFC: .word 0xFFFF00FF
_0220D000: .word 0xFF00FFFF
_0220D004: .word 0xFBFFFFFF
_0220D008: .word 0xF7FFFFFF
_0220D00C: .word 0xFCFFFFFF
_0220D010: .word 0xEFFFFFFF
	thumb_func_end ov96_0220CF50

