	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02213E60
	.extern ov96_0221D438
	.extern ov96_0221D43A

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
	thumb_func_start ov96_02213E60
ov96_02213E60: ; 0x02213E60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	ldr r1, _02213EB8 ; =0x0000066E
	mov r4, #0
	ldrb r6, [r0, r1]
	add r3, r4, #0
	add r2, sp, #0
	add r1, #0x4c
_02213E72:
	cmp r6, r3
	beq _02213E86
	ldrb r5, [r0, r1]
	cmp r5, r3
	beq _02213E86
	add r5, r4, #0
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	strb r3, [r2, r5]
_02213E86:
	add r3, r3, #1
	cmp r3, #0xf
	blt _02213E72
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	add r0, sp, #0
	ldrb r0, [r0, r1]
	ldr r1, _02213EBC ; =ov96_0221D438
	lsl r2, r0, #2
	ldrsh r1, [r1, r2]
	lsl r1, r1, #0xc
	str r1, [r7, #8]
	ldr r1, _02213EC0 ; =ov96_0221D43A
	ldrsh r1, [r1, r2]
	lsl r1, r1, #0xc
	str r1, [r7, #0xc]
	add r7, #0x42
	strb r0, [r7]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02213EB8: .word 0x0000066E
_02213EBC: .word ov96_0221D438
_02213EC0: .word ov96_0221D43A
	thumb_func_end ov96_02213E60

