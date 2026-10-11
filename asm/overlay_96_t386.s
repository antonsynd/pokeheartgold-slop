	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F7E74
	.extern PokeathlonCourse_GetField3D8_ForCurrentParticipant
	.extern PokeathlonCourse_GetGraphicsSystem
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern ov96_021E94EC
	.extern ov96_021E95D8
	.extern ov96_021EE830
	.extern ov96_021EE8CC
	.extern ov96_021EE944
	.extern ov96_021EE97C
	.extern ov96_021EEA80
	.extern ov96_021F7E64
	.extern ov96_021F81CC
	.extern ov96_021F83DC
	.extern ov96_021F83FC
	.extern ov96_021F85F4
	.extern ov96_021F910C

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
	thumb_func_start ov96_021F7E74
ov96_021F7E74: ; 0x021F7E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r4, #0
	add r6, r0, #0
	add r7, r1, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x18]
	bl IsFanfarePlaying
	add r0, r6, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #1
	bne _021F7E9E
	add r0, r6, #0
	bl ov96_021F85F4
	add r4, r0, #0
_021F7E9E:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl ov96_021EE830
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl ov96_021EEA80
	cmp r0, #0
	bne _021F7EB6
	cmp r4, #0
	beq _021F7EB8
_021F7EB6:
	b _021F8080
_021F7EB8:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl ov96_021EE97C
	str r0, [sp, #0x10]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0xc]
	ldrb r0, [r7]
	cmp r0, #8
	bhi _021F7F0A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F7EDA: ; jump table
	.short _021F7EEC - _021F7EDA - 2 ; case 0
	.short _021F7EFC - _021F7EDA - 2 ; case 1
	.short _021F7F56 - _021F7EDA - 2 ; case 2
	.short _021F7F7E - _021F7EDA - 2 ; case 3
	.short _021F7F94 - _021F7EDA - 2 ; case 4
	.short _021F7FE0 - _021F7EDA - 2 ; case 5
	.short _021F7FF2 - _021F7EDA - 2 ; case 6
	.short _021F800A - _021F7EDA - 2 ; case 7
	.short _021F8048 - _021F7EDA - 2 ; case 8
_021F7EEC:
	add r0, r6, #0
	bl ov96_021F83DC
	str r0, [sp, #0xc]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7EFC:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r0, #0x1c
	bl ov96_021F81CC
	cmp r0, #0
	bne _021F7F0C
_021F7F0A:
	b _021F805C
_021F7F0C:
	mov r4, #0
	add r5, sp, #0x1c
_021F7F10:
	add r0, r6, #0
	bl PokeathlonCourse_GetGraphicsSystem
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl ov96_021E94EC
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021F7F10
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldrb r1, [r2, #9]
	ldrb r0, [r0, #9]
	cmp r1, r0
	bne _021F7F38
	mov r0, #0xfe
	str r0, [sp, #0xc]
	b _021F7F4E
_021F7F38:
	ldr r1, [r2]
	add r0, r6, #0
	bl PokeathlonCourse_GetPlayerProfileFromData
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl BufferPlayersName
	mov r0, #0xfd
	str r0, [sp, #0xc]
_021F7F4E:
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7F56:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x10
	add r1, r0, #0
	sub r1, #0x18
	mov r2, #0
	mov r3, #0x3f
	bl StartBrightnessTransition
	mov r0, #0x3f
	add r1, r0, #0
	bl UpdateMainScreenBrightnessSurface
	ldr r0, _021F8088 ; =0x04000052
	mov r1, #0x10
	strh r1, [r0]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7F7E:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _021F805C
	mov r0, #0xff
	str r0, [sp, #0xc]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7F94:
	mov r5, #0
_021F7F96:
	add r0, r6, #0
	bl PokeathlonCourse_GetField3D8_ForCurrentParticipant
	add r4, r0, #0
	add r0, r6, #0
	bl PokeathlonCourse_GetGraphicsSystem
	add r1, r4, #0
	add r2, r5, #0
	bl ov96_021E95D8
	add r1, r0, #0
	ldr r0, _021F808C ; =0x000003E7
	cmp r1, r0
	ble _021F7FB6
	add r1, r0, #0
_021F7FB6:
	ldr r0, [sp, #0x14]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0x14]
	lsr r2, r2, #0x18
	bl ov96_021F910C
	add r5, r5, #1
	cmp r5, #4
	blt _021F7F96
	mov r0, #2
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	add r2, r0, #0
	mov r3, #0x3f
	bl StartBrightnessTransition
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7FE0:
	mov r0, #2
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _021F805C
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7FF2:
	add r0, r6, #0
	bl ov96_021F83FC
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, #1
	add r0, #0xa8
	str r1, [r0]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F800A:
	add r0, r6, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #0
	beq _021F801E
	add r0, r6, #0
	bl ov96_021F7E64
	cmp r0, #0
	beq _021F805C
_021F801E:
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r3, _021F8090 ; =0x00007FFF
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0
	mov r1, #0xc
	bl GF_SndStartFadeOutBGM
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F8048:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F805C
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl ov96_021EE944
	mov r0, #1
	str r0, [sp, #0x18]
_021F805C:
	mov r1, #0
	ldr r0, [sp, #0xc]
	mvn r1, r1
	cmp r0, r1
	beq _021F8080
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0x18]
	bl ov96_021EE8CC
	ldr r0, [sp, #0x14]
	add r0, #0xa4
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	add r0, #0xa4
	str r0, [sp, #0x14]
	str r1, [r0]
_021F8080:
	ldr r0, [sp, #0x18]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021F8088: .word 0x04000052
_021F808C: .word 0x000003E7
_021F8090: .word 0x00007FFF
	thumb_func_end ov96_021F7E74

