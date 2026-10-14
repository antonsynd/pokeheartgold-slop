	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EB730
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_021E8BAC
	.extern ov96_021EAA04
	.extern ov96_021EAA20
	.extern ov96_021EAC0C
	.extern ov96_021EAC5C
	.extern ov96_021EC2E0
	.extern ov96_021ECB38
	.extern ov96_021ED524
	.extern ov96_021ED838
	.extern ov96_021ED86C
	.extern ov96_021ED8A4
	.extern ov96_021EDF3C
	.extern ov96_021EE324
	.extern ov96_021EE54C
	.extern ov96_021EE830
	.extern ov96_021EE8CC
	.extern ov96_021EE908
	.extern ov96_021EE944
	.extern ov96_021EE97C
	.extern ov96_021EEA80
	.extern ov96_0221B088

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
	thumb_func_start ov96_021EB730
ov96_021EB730: ; 0x021EB730
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	mov r5, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #1
	bne _021EB750
	ldr r0, [sp, #0xc]
	bl ov96_021EE324
	add r5, r0, #0
_021EB750:
	ldr r0, [r4, #0xc]
	bl ov96_021EE830
	ldr r0, [r4, #0xc]
	bl ov96_021EEA80
	cmp r0, #0
	bne _021EB764
	cmp r5, #0
	beq _021EB766
_021EB764:
	b _021EB9AE
_021EB766:
	ldr r0, [r4, #0xc]
	bl ov96_021EE97C
	add r1, r4, #0
	add r1, #0xb5
	mov r5, #0
	ldrb r1, [r1]
	add r6, r0, #0
	mvn r5, r5
	cmp r1, #8
	bls _021EB77E
	b _021EB98C
_021EB77E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB78A: ; jump table
	.short _021EB79C - _021EB78A - 2 ; case 0
	.short _021EB7B4 - _021EB78A - 2 ; case 1
	.short _021EB7CA - _021EB78A - 2 ; case 2
	.short _021EB7F6 - _021EB78A - 2 ; case 3
	.short _021EB816 - _021EB78A - 2 ; case 4
	.short _021EB82A - _021EB78A - 2 ; case 5
	.short _021EB882 - _021EB78A - 2 ; case 6
	.short _021EB918 - _021EB78A - 2 ; case 7
	.short _021EB94A - _021EB78A - 2 ; case 8
_021EB79C:
	add r2, r4, #0
	add r2, #0xb1
	ldrb r2, [r2]
	mov r5, #0
	add r1, r5, #0
	bl BufferPokeathlonCourseName
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB7B4:
	lsr r0, r5, #0x11
	bl sub_0200FC20
	ldr r0, _021EBA8C ; =0x000008DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB7CA:
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #4
	bhs _021EB7E4
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	b _021EB990
_021EB7E4:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB7F6:
	mov r0, #0x18
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	lsr r3, r5, #0x11
	bl BeginNormalPaletteFade
	add r0, r4, #0
	mov r1, #4
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB816:
	bl IsPaletteFadeFinished
	cmp r0, #0
	bne _021EB820
	b _021EB990
_021EB820:
	add r0, r4, #0
	mov r1, #5
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB82A:
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_GetParticipantData
	ldr r0, [r0]
	cmp r0, #0
	ble _021EB852
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021ED838
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov96_021EE908
	b _021EB878
_021EB852:
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021ED838
	add r1, r4, #0
	add r1, #0xb2
	add r5, r0, #0
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021ED86C
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #7
	mov r3, #1
	bl ov96_021EDF3C
_021EB878:
	add r0, r4, #0
	mov r1, #6
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB882:
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_GetPlayerProfileFromData
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl BufferPlayersName
	mov r5, #0
_021EB89A:
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	lsl r2, r5, #0x18
	ldr r0, [sp, #0xc]
	lsr r2, r2, #0x18
	add r3, r5, #1
	bl ov96_021ED524
	add r5, r5, #1
	cmp r5, #3
	blt _021EB89A
	ldr r0, [r4]
	add r2, r4, #0
	str r0, [sp]
	add r2, #0xb2
	add r0, r4, #0
	ldrb r2, [r2]
	ldr r1, [sp, #0xc]
	add r0, #0x20
	mov r3, #2
	bl ov96_021ECB38
	add r0, r4, #0
	add r0, #0xb2
	ldrb r0, [r0]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x20]
	bl ManagedSprite_SetAnim
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021ED8A4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #5
	bhs _021EB8F2
	ldr r0, _021EBA8C ; =0x000008DC
	b _021EB8F4
_021EB8F2:
	ldr r0, _021EBA90 ; =0x000008DD
_021EB8F4:
	lsl r2, r1, #2
	ldr r1, _021EBA94 ; =ov96_0221B088
	lsl r0, r0, #0x10
	ldr r1, [r1, r2]
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl PlaySE_SetPitch
	add r0, r4, #0
	mov r5, #1
	add r0, #0xb0
	strb r5, [r0]
	add r0, r4, #0
	mov r1, #7
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB918:
	add r0, r4, #0
	add r0, #0xb0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EB990
	add r0, r4, #0
	add r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #4
	blo _021EB940
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb5
	mov r5, #2
	strb r1, [r0]
	b _021EB990
_021EB940:
	add r0, r4, #0
	mov r1, #5
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB94A:
	ldr r0, [sp, #0xc]
	bl PokeathlonCourse_GetMode
	cmp r0, #0
	beq _021EB95E
	ldr r0, [sp, #0xc]
	bl ov96_021EE54C
	cmp r0, #0
	beq _021EB990
_021EB95E:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	beq _021EB978
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, [r4, #8]
	bl SysTask_Destroy
_021EB978:
	ldr r0, [r4, #0xc]
	bl ov96_021EE944
	ldr r0, [sp, #0xc]
	mov r1, #2
	bl PokeathlonCourse_SetStateField07
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021EB98C:
	bl GF_AssertFail
_021EB990:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EB9AE
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl ov96_021EE8CC
	add r0, r4, #0
	add r0, #0xb7
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb7
	strb r1, [r0]
_021EB9AE:
	add r0, r4, #0
	add r0, #0xb0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EBA86
	add r0, r4, #0
	add r0, #0xb2
	ldrb r1, [r0]
	add r2, r4, #0
	add r2, #0x94
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	ldr r2, [r2]
	add r0, #0x94
	ldr r1, [r0]
	add r3, r2, #1
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x94
	add r0, #0x94
	str r3, [r2]
	cmp r1, #0
	bne _021EBA08
	mov r5, #0
_021EB9E4:
	lsl r1, r6, #0x18
	ldr r0, [r4, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r7, r0, #0
	mov r1, #2
	bl ov96_021EAC0C
	add r0, r7, #0
	mov r1, #0x10
	bl ov96_021EAC5C
	add r5, r5, #1
	add r6, r6, #1
	cmp r5, #3
	blt _021EB9E4
	b _021EBA86
_021EBA08:
	add r1, r4, #0
	add r1, #0x94
	ldr r2, [r1]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	cmp r2, #0x3c
	blt _021EBA86
	mov r5, #0
	str r5, [sp, #0x10]
_021EBA1C:
	lsl r1, r6, #0x18
	ldr r0, [r4, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r7, r0, #0
	mov r1, #1
	bl ov96_021EAC0C
	add r0, r7, #0
	mov r1, #0
	bl ov96_021EAC5C
	add r0, r7, #0
	bl ov96_021EAA20
	bl ov96_021E8BAC
	bl Sprite_GetCellAnim
	lsl r1, r5, #0xc
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #1
	add r5, r5, #3
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _021EBA1C
	ldr r0, [r4]
	add r2, r4, #0
	str r0, [sp]
	add r2, #0xb2
	add r0, r4, #0
	ldrb r2, [r2]
	ldr r1, [sp, #0xc]
	add r0, #0x20
	mov r3, #1
	bl ov96_021ECB38
	add r0, r4, #0
	mov r2, #0
	add r0, #0xb0
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0xb2
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb2
	strb r1, [r0]
	add r4, #0x94
	str r2, [r4]
_021EBA86:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EBA8C: .word 0x000008DC
_021EBA90: .word 0x000008DD
_021EBA94: .word ov96_0221B088
	thumb_func_end ov96_021EB730

