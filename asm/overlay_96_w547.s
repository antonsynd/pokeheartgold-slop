	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02203F50
	.extern ov96_021EB5EC

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
	thumb_func_start ov96_02203F50
ov96_02203F50: ; 0x02203F50
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x65
	mov r2, #0
	add r5, r0, #0
	bl ov96_021EB5EC
	ldr r4, [r0]
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #1
	bl ov96_021EB5EC
	ldr r5, [r0]
	add r0, r4, #0
	bl SpriteTransfer_GetCharProxy
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl SpriteTransfer_GetPaletteProxy
	str r0, [sp]
	mov r4, #0
_02203F80:
	lsl r0, r4, #2
	add r5, r6, r0
	add r0, r7, #0
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r1, #0xd
	lsl r1, r1, #8
	add r2, r4, #0
	mul r2, r1
	mov r1, #3
	lsl r1, r1, #8
	add r1, r2, r1
	add r0, r1, r0
	str r0, [r5, #0x3c]
	ldr r0, [sp]
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	lsl r1, r4, #5
	add r1, #0x20
	add r0, r1, r0
	str r0, [r5, #0x48]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _02203F80
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02203F50

