	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02217B84
	.extern ov96_021E5F24
	.extern ov96_021E60C0
	.extern ov96_021E6104
	.extern ov96_021E6138
	.extern ov96_021E62AC
	.extern ov96_021EAA04
	.extern ov96_021EAA20
	.extern ov96_021EAB38
	.extern ov96_021EABA8
	.extern ov96_021EABE0
	.extern ov96_021EAC0C
	.extern ov96_021EAF6C
	.extern ov96_021EAF70
	.extern ov96_021EAF94
	.extern ov96_021EB0A4
	.extern ov96_02218510
	.extern ov96_02218578
	.extern ov96_0221918C
	.extern ov96_0221935C
	.extern ov96_0221D6E4

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
	thumb_func_start ov96_02217B84
ov96_02217B84: ; 0x02217B84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, sp, #0x44
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	mov r1, #0xaa
	mov r2, #0x13
	bl ReadWholeNarcMemberByIdPair
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02217BAE
	bl GF_AssertFail
_02217BAE:
	ldr r0, [sp, #0x10]
	bl ov96_0221918C
	mov r1, #0x83
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x28]
	mov r0, #0xf
	mov r4, #0
	str r0, [sp, #0x2c]
_02217BC4:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	mov r0, #0xa8
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #0x28]
	add r1, r0, r1
	ldr r0, [sp, #0x24]
	lsl r0, r0, #4
	add r6, r1, r0
	ldr r0, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x1c]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r5, r0, #0
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _02217C06
	mov r1, #1
	b _02217C08
_02217C06:
	mov r1, #0
_02217C08:
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov96_021EAB38
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	add r1, r7, #0
	bl ov96_021E60C0
	bl ov96_021E6138
	lsl r1, r0, #3
	add r0, sp, #0x44
	add r2, r0, r1
	add r1, r2, #0
	sub r1, #8
	sub r2, r2, #4
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, r5, #0
	bl ov96_021EAF70
	ldr r0, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x1c]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r5, r0, #0
	bl ov96_021EAA20
	add r0, r5, #0
	mov r1, #2
	bl ov96_021EABE0
	add r0, r5, #0
	mov r1, #1
	bl ov96_02218510
	ldr r1, _02217DB0 ; =ov96_0221D6E4
	lsl r0, r7, #2
	ldr r2, _02217DB0 ; =ov96_0221D6E4
	add r1, r1, r0
	ldrsh r0, [r2, r0]
	str r0, [sp, #0x20]
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	bl ov96_021E5F24
	cmp r7, r0
	bne _02217C7E
	ldr r1, [sp, #0x20]
	add r0, sp, #0x30
	strh r1, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	strh r1, [r0, #0x12]
_02217C7E:
	add r0, r5, #0
	mov r1, #2
	bl ov96_021EAC0C
	add r0, r5, #0
	mov r1, #7
	bl ov96_021EABA8
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	bl ov96_021EAF94
	bl ov96_021E6104
	add r1, r0, #0
	add r0, r5, #0
	bl ov96_021EAF6C
	add r0, sp, #0x38
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	add r3, sp, #0x3c
	bl ov96_021EB0A4
	ldr r0, [r6, #0xc]
	ldr r1, [sp, #0x2c]
	bic r0, r1
	mov r1, #0xf
	and r1, r4
	orr r0, r1
	str r0, [r6, #0xc]
	str r5, [r6]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	add r1, r7, #0
	bl ov96_0221935C
	str r0, [r6, #4]
	ldr r0, [r0, #8]
	add r4, r4, #1
	str r0, [r6, #8]
	cmp r4, #0xc
	bge _02217CDC
	b _02217BC4
_02217CDC:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0xc]
	bl SpriteManager_GetSpriteList
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x40
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r2, #0x18]
	mov r1, #0
	bl ov96_021E62AC
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	add r2, r0, #0
	add r4, r1, r0
	sub r2, #0xc
	add r1, r1, r2
	str r1, [sp, #0x18]
	ldr r1, [sp, #0xc]
	add r0, #0x68
	add r7, r1, r0
	add r0, r1, #0
	ldr r6, _02217DB0 ; =ov96_0221D6E4
	mov r5, #0
	str r0, [sp, #0x14]
_02217D1A:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	str r0, [r4, #8]
	mov r0, #6
	str r7, [r4, #4]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #0
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x10]
	mov r2, #2
	str r0, [r4]
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [r4, #4]
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r0]
	add r3, sp, #0x34
	bl ov96_021EB0A4
	add r0, r4, #0
	mov r1, #1
	bl ov96_02218578
	ldr r1, [r4, #0x60]
	ldr r0, _02217DB4 ; =0xFFF0FFFF
	add r7, #0xa8
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x34]
	add r6, r6, #4
	lsl r0, r0, #0xc
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0xc
	str r0, [r4, #0x30]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #0xc
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0xc
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x60]
	ldr r0, _02217DB8 ; =0xFFCFFFFF
	and r1, r0
	lsl r0, r5, #0x1e
	lsr r0, r0, #0xa
	orr r0, r1
	str r0, [r4, #0x60]
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x54]
	add r1, #0x5f
	mov r0, #3
	strb r0, [r1]
	mov r0, #0x8f
	ldr r1, [sp, #0x14]
	lsl r0, r0, #2
	str r5, [r1, r0]
	ldr r0, [sp, #0x18]
	add r5, r5, #1
	add r0, #0xa8
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #0xa8
	add r4, #0xa8
	str r0, [sp, #0x14]
	cmp r5, #4
	blt _02217D1A
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02217DB0: .word ov96_0221D6E4
_02217DB4: .word 0xFFF0FFFF
_02217DB8: .word 0xFFCFFFFF
	thumb_func_end ov96_02217B84

