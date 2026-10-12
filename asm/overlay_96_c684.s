	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021FFE5C

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

