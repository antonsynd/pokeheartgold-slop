	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F81CC
	.extern ov96_021F8128
	.extern ov96_021F8160
	.extern ov96_021F8180
	.extern ov96_021F81C0
	.extern ov96_021F82E4
	.extern ov96_021F8334
	.extern ov96_021F8354
	.extern ov96_021F8360
	.extern ov96_021F8378
	.extern ov96_021F83BC
	.extern ov96_021F83D0
	.extern ov96_021F8978

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
	thumb_func_start ov96_021F81CC
ov96_021F81CC: ; 0x021F81CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r1, r4, #0
	add r1, #0x58
	ldrb r1, [r1]
	add r5, r4, #0
	add r5, #0x58
	cmp r1, #3
	bhi _021F82DA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F81EC: ; jump table
	.short _021F81F4 - _021F81EC - 2 ; case 0
	.short _021F824C - _021F81EC - 2 ; case 1
	.short _021F8296 - _021F81EC - 2 ; case 2
	.short _021F82BE - _021F81EC - 2 ; case 3
_021F81F4:
	mov r1, #0x4f
	add r0, #0x44
	mvn r1, r1
	mov r2, #0
	bl ov96_021F8128
	add r0, r4, #0
	add r0, #0x44
	mov r1, #0
	bl ov96_021F8180
	cmp r0, #0
	beq _021F82DA
	ldr r1, [r4, #0x48]
	add r0, r4, #0
	mov r2, #0
	bl ov96_021F82E4
	add r0, r4, #0
	add r0, #0x44
	bl ov96_021F8354
	add r0, r4, #0
	bl ov96_021F8360
	cmp r0, #0
	beq _021F8242
	mov r2, #1
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #8
	mov r3, #0x28
	bl ov96_021F8378
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ov96_021F8334
_021F8242:
	add r0, r4, #0
	mov r1, #0xa
	bl ov96_021F81C0
	b _021F82DA
_021F824C:
	mov r1, #0x4f
	mvn r1, r1
	mov r2, #0
	bl ov96_021F8160
	mov r6, #0
	add r5, r4, #4
	mov r7, #1
_021F825C:
	add r0, r5, #0
	mov r1, #0
	bl ov96_021F8180
	cmp r0, #0
	beq _021F8288
	ldr r0, [r4, #0x60]
	cmp r0, #0
	bne _021F8280
	ldr r0, [r5, #4]
	bl ov96_021F8978
	cmp r0, #0
	bne _021F8280
	ldr r0, _021F82E0 ; =0x000004B9
	bl PlayFanfare
	str r7, [r4, #0x60]
_021F8280:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _021F825C
_021F8288:
	cmp r6, #4
	bne _021F82DA
	add r0, r4, #0
	mov r1, #0xa
	bl ov96_021F81C0
	b _021F82DA
_021F8296:
	mov r1, #0
	mov r2, #8
	bl ov96_021F8160
	add r0, r4, #0
	bl ov96_021F83D0
	mov r1, #1
	add r6, r0, #0
	bl ov96_021F8180
	cmp r0, #0
	beq _021F82DA
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021F83BC
	mov r0, #0
	strb r0, [r5]
	b _021F82DA
_021F82BE:
	ldr r2, [r4, #0x54]
	sub r1, r2, #1
	str r1, [r4, #0x54]
	cmp r2, #0
	bgt _021F82DA
	bl ov96_021F8360
	cmp r0, #0
	beq _021F82D6
	mov r0, #2
	strb r0, [r5]
	b _021F82DA
_021F82D6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F82DA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F82E0: .word 0x000004B9
	thumb_func_end ov96_021F81CC

