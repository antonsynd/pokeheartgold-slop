	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F6798
	.extern ov96_021E5F24
	.extern ov96_021E8228
	.extern ov96_021F64A0
	.extern ov96_021F6B28
	.extern ov96_021F6BE4
	.extern ov96_021F7130
	.extern ov96_0221DC18

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
	thumb_func_start ov96_021F6798
ov96_021F6798: ; 0x021F6798
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	add r6, r1, #0
	ldr r1, _021F6A5C ; =0x00000FAC
	add r5, r2, #0
	add r2, r6, r1
	mov r1, #0x1c
	mul r1, r5
	add r4, r2, r1
	ldr r1, [r4, #0x14]
	str r0, [sp, #4]
	cmp r1, #0
	bne _021F67B6
	b _021F6B20
_021F67B6:
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0xfa
	lsl r0, r0, #4
	ldr r7, [r1, r0]
	cmp r5, #0
	beq _021F67D8
	cmp r5, #1
	beq _021F67DC
	cmp r5, #2
	beq _021F67E0
	b _021F67E4
_021F67D8:
	mov r1, #6
	b _021F67EE
_021F67DC:
	mov r1, #5
	b _021F67EE
_021F67E0:
	mov r1, #3
	b _021F67EE
_021F67E4:
	bl GF_AssertFail
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
_021F67EE:
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r6, r0
	add r2, sp, #0x1c
	bl ov96_021F64A0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _021F6804
	b _021F6908
_021F6804:
	cmp r0, #0
	bgt _021F683C
	bl GF_AssertFail
	mov r3, #0
	str r3, [r4, #0x10]
	lsl r1, r7, #2
	add r0, sp, #0x1c
	ldr r0, [r0, r1]
	mov r1, #0x38
	str r0, [r4, #8]
	str r3, [r4, #0x18]
	mul r1, r5
	str r3, [r4, #0x14]
	add r1, r6, r1
	lsl r2, r7, #0x18
	str r3, [r4]
	mov r0, #1
	add r1, #0xb8
	strb r0, [r1]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F6BE4
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
_021F683C:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r0, r1, r0
	str r0, [r4, #8]
	mov r0, #0x38
	mul r0, r5
	str r0, [sp, #8]
	add r0, r6, r0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021F6862
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x90
	add r0, r1, r0
	add r1, r4, #0
	bl ov96_021F6B28
_021F6862:
	add r3, sp, #0x1c
	lsl r2, r7, #2
	ldr r1, [r3, r2]
	ldr r0, [r4, #8]
	cmp r0, r1
	ble _021F6890
	ldr r0, [r4]
	bl _dflt
	ldr r3, _021F6A60 ; =0x40600000
	mov r2, #0
	bl _dsub
	bl _dfix
	str r0, [r4]
	ldr r1, [r4, #0x18]
	neg r0, r0
	cmp r0, r1
	ble _021F6894
	neg r0, r1
	str r0, [r4]
	b _021F6AD6
_021F6890:
	cmp r0, r1
	ble _021F6896
_021F6894:
	b _021F6AD6
_021F6896:
	ldr r0, [r4]
	cmp r0, #0
	bne _021F68BA
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r3, r2]
	lsl r2, r7, #0x18
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov96_021F6BE4
	b _021F6AD6
_021F68BA:
	bge _021F68E8
	mov r0, #0
	str r0, [r4, #0x10]
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x90
	add r0, r1, r0
	bl ov96_021F7130
	ldr r0, [r4]
	bl _dflt
	ldr r3, _021F6A64 ; =0xC0600000
	mov r2, #0
	bl _dgr
	bls _021F68E2
	mov r0, #0x7f
	mvn r0, r0
	str r0, [r4]
_021F68E2:
	ldr r0, [r4]
	str r0, [r4, #0x18]
	b _021F6AD6
_021F68E8:
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r3, r2]
	lsl r2, r7, #0x18
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	str r0, [r4]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov96_021F6BE4
	b _021F6AD6
_021F6908:
	cmp r0, #0
	ble _021F6910
	bl GF_AssertFail
_021F6910:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r0, r1, r0
	str r0, [r4, #8]
	bl _dflt
	ldr r3, _021F6A68 ; =0xC0B80000
	mov r2, #0
	bl _dls
	bhs _021F692E
	ldr r0, _021F6A6C ; =0xFFFFE800
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4]
_021F692E:
	lsl r0, r7, #2
	add r1, sp, #0x1c
	str r0, [sp, #0x10]
	ldr r1, [r1, r0]
	ldr r0, [r4, #8]
	cmp r0, r1
	blt _021F6A28
	lsl r2, r7, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov96_021F6BE4
	mov r0, #0x38
	add r1, r6, #0
	mul r0, r5
	str r1, [sp, #0x18]
	add r1, #0xb8
	str r0, [sp, #0x14]
	ldrb r0, [r1, r0]
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _021F6972
	ldr r0, [sp, #0x14]
	ldr r1, [r4]
	add r0, r6, r0
	add r0, #0xbc
	ldr r0, [r0]
	mul r0, r1
	mov r1, #0xc
	bl _s32_div_f
	str r0, [r4]
_021F6972:
	ldr r1, [r4]
	ldr r0, _021F6A70 ; =0x00000898
	cmp r1, r0
	ble _021F697C
	str r0, [r4]
_021F697C:
	ldr r1, [r4]
	lsl r0, r1, #3
	add r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r4]
	cmp r0, #0
	bne _021F69C0
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021F69A2
	ldr r1, _021F6A74 ; =ov96_0221DC18
	ldr r0, _021F6A78 ; =0x000005F3
	ldrb r1, [r1, #3]
	bl sub_0200606C
_021F69A2:
	mov r3, #0
	ldr r0, [sp, #0x10]
	str r3, [r4, #0x10]
	add r1, sp, #0x1c
	ldr r0, [r1, r0]
	lsl r2, r7, #0x18
	str r0, [r4, #8]
	str r3, [r4, #0x18]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	str r3, [r4, #0x14]
	bl ov96_021F6BE4
	b _021F6AD6
_021F69C0:
	bgt _021F69C4
	b _021F6AD6
_021F69C4:
	bl _dflt
	ldr r3, _021F6A7C ; =0x40960000
	mov r2, #0
	bl _dleq
	bhi _021F69FC
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021F69FC
	mov r3, #0
	ldr r0, [sp, #0x10]
	str r3, [r4, #0x10]
	add r1, sp, #0x1c
	ldr r0, [r1, r0]
	lsl r2, r7, #0x18
	str r0, [r4, #8]
	str r3, [r4, #0x18]
	str r3, [r4]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	str r3, [r4, #0x14]
	bl ov96_021F6BE4
	b _021F6AD6
_021F69FC:
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x14]
	mov r2, #0
	strb r2, [r1, r0]
	ldr r1, _021F6A74 ; =ov96_0221DC18
	ldr r0, _021F6A80 ; =0x00000656
	ldrb r1, [r1, #3]
	bl sub_0200606C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r2, r5, #0
	mov r3, #2
	bl ov96_021E8228
	b _021F6AD6
_021F6A28:
	cmp r0, r1
	bge _021F6AD6
	ldr r0, [r4]
	cmp r0, #0
	bge _021F6A4E
	bl _dflt
	ldr r2, _021F6A84 ; =0x9999999A
	ldr r3, _021F6A88 ; =0x40899999
	bl _dadd
	bl _dfix
	str r0, [r4]
	cmp r0, #0
	blt _021F6AD6
	mov r0, #0
	str r0, [r4]
	b _021F6AD6
_021F6A4E:
	blt _021F6AD6
	bl _dflt
	ldr r2, _021F6A8C ; =0x55555555
	ldr r3, _021F6A90 ; =0x40755555
	b _021F6A94
	nop
_021F6A5C: .word 0x00000FAC
_021F6A60: .word 0x40600000
_021F6A64: .word 0xC0600000
_021F6A68: .word 0xC0B80000
_021F6A6C: .word 0xFFFFE800
_021F6A70: .word 0x00000898
_021F6A74: .word ov96_0221DC18
_021F6A78: .word 0x000005F3
_021F6A7C: .word 0x40960000
_021F6A80: .word 0x00000656
_021F6A84: .word 0x9999999A
_021F6A88: .word 0x40899999
_021F6A8C: .word 0x55555555
_021F6A90: .word 0x40755555
_021F6A94:
	bl _dadd
	bl _dfix
	str r0, [r4]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	blt _021F6ACC
	bl GF_AssertFail
	mov r3, #0
	lsl r2, r7, #0x18
	ldr r0, [sp, #0x10]
	str r3, [r4, #0x10]
	add r1, sp, #0x1c
	ldr r0, [r1, r0]
	add r1, r5, #0
	str r0, [r4, #8]
	str r3, [r4, #0x18]
	str r3, [r4, #0x14]
	add r0, r6, #0
	lsr r2, r2, #0x18
	str r3, [r4]
	bl ov96_021F6BE4
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
_021F6ACC:
	neg r1, r0
	ldr r0, [r4]
	cmp r0, r1
	ble _021F6AD6
	str r1, [r4]
_021F6AD6:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021F6AE8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F6AE8
	ldr r0, [r4]
	cmp r0, #0
	bne _021F6AF4
_021F6AE8:
	mov r1, #0x38
	mul r1, r5
	add r1, r6, r1
	mov r0, #0
	add r1, #0xb4
	strh r0, [r1]
_021F6AF4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021F6B0E
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F6B0E
	lsl r2, r7, #0x18
	ldr r3, [r4, #8]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F6BE4
_021F6B0E:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021F6B20
	mov r0, #0x38
	mul r0, r5
	add r0, r6, r0
	mov r1, #1
	add r0, #0xb8
	strb r1, [r0]
_021F6B20:
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6798

