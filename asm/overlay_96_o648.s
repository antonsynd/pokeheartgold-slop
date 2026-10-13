	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F9240
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_021E637C
	.extern ov96_021E667C
	.extern ov96_021E8318
	.extern ov96_021E8A20
	.extern ov96_021FA6D0
	.extern ov96_021FAF1C
	.extern ov96_021FB60C
	.extern ov96_021FB630
	.extern ov96_021FB808
	.extern ov96_021FBDBC

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
	thumb_func_start ov96_021F9240
ov96_021F9240: ; 0x021F9240
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r7, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	ldrb r1, [r6]
	add r4, r0, #0
	cmp r1, #4
	bls _021F9256
	b _021F9370
_021F9256:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F9262: ; jump table
	.short _021F926C - _021F9262 - 2 ; case 0
	.short _021F9284 - _021F9262 - 2 ; case 1
	.short _021F92D2 - _021F9262 - 2 ; case 2
	.short _021F9306 - _021F9262 - 2 ; case 3
	.short _021F9340 - _021F9262 - 2 ; case 4
_021F926C:
	add r0, r7, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _021F9370
	ldr r0, _021F937C ; =0x000003C7
	mov r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	b _021F9370
_021F9284:
	bl ov96_021FBDBC
	add r0, r7, #0
	add r1, r4, #0
	bl ov96_021FA6D0
	add r5, r0, #0
	add r0, r7, #0
	bl ov96_021FB630
	cmp r5, #0
	beq _021F9370
	mov r5, #0
	add r0, r5, #0
	mov r1, #0x6c
_021F92A2:
	add r2, r0, #0
	mul r2, r1
	add r2, r4, r2
	add r2, #0xe2
	ldrh r2, [r2]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r5, r5, r2
	cmp r0, #3
	blo _021F92A2
	lsl r1, r5, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl ov96_021E8318
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021FB808
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	b _021F9370
_021F92D2:
	add r0, r7, #0
	bl ov96_021E667C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	bl ov96_021FB60C
	cmp r0, #0
	beq _021F92F0
	cmp r5, #0
	beq _021F92F0
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
_021F92F0:
	add r0, r4, #0
	bl ov96_021FBDBC
	add r0, r7, #0
	add r1, r4, #0
	bl ov96_021FA6D0
	add r0, r7, #0
	bl ov96_021FB630
	b _021F9370
_021F9306:
	bl ov96_021FBDBC
	add r0, r7, #0
	bl ov96_021FB630
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	bl ov96_021E8A20
	mov r1, #1
	strb r1, [r0, #9]
	add r0, r7, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r0, #0xf0
	bl ov96_021E8A20
	ldr r0, [r0]
	cmp r0, #0
	beq _021F9370
	ldrb r0, [r6]
	mov r1, #0
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #0x8d
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021F9370
_021F9340:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x5a
	bls _021F9370
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r7, #0
	mov r1, #2
	bl PokeathlonCourse_SetStateField07
_021F9370:
	add r0, r7, #0
	bl ov96_021FAF1C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F937C: .word 0x000003C7
	thumb_func_end ov96_021F9240

