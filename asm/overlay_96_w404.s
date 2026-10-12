	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F8360
	.public ov96_021F8378
	.extern PokeathlonCourse_GetGraphicsSystem
	.extern ov96_021E94EC
	.extern ov96_021E9524
	.extern ov96_021F8830

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
	thumb_func_start ov96_021F8360
ov96_021F8360: ; 0x021F8360
	add r1, r0, #0
	add r1, #0x59
	add r0, #0x5a
	ldrb r1, [r1]
	ldrb r0, [r0]
	mov r2, #0
	cmp r1, r0
	bls _021F8372
	mov r2, #1
_021F8372:
	add r0, r2, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F8360

	thumb_func_start ov96_021F8378
ov96_021F8378: ; 0x021F8378
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl PokeathlonCourse_GetGraphicsSystem
	add r7, r0, #0
	bl ov96_021E9524
	add r2, r5, #0
	add r2, #0x5c
	sub r1, r0, #1
	ldrb r2, [r2]
	add r0, r7, #0
	sub r1, r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021E94EC
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0x5c
	ldrb r0, [r0]
	add r2, r6, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x5c
	strb r1, [r0]
	ldr r0, [r5]
	add r1, r4, #0
	bl ov96_021F8830
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8378

