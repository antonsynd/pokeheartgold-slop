	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E6CE4
	.extern PokeathlonCourse_InitStateInfo
	.extern PokeathlonCourse_ResetDataCopyArea
	.extern PokeathlonCourse_SetStateField07
	.extern _0221DA00
	.extern ov96_0221DA28

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
	thumb_func_start ov96_021E6CE4
ov96_021E6CE4: ; 0x021E6CE4
	push {r4, r5, r6, lr}
	mov r1, #0x1f
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldr r6, _021E6D40 ; =0x0000FFFF
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0xf6
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, _021E6D44 ; =0x00000728
	lsl r5, r1, #0x18
	mov r1, #0
	strb r1, [r4, r2]
	ldr r3, _021E6D48 ; =0x00000D2A
	add r2, r2, #3
	strh r6, [r4, r3]
	strb r1, [r4, r2]
	add r3, #0x42
	str r1, [r4, r3]
	bl PokeathlonCourse_ResetDataCopyArea
	ldr r0, _021E6D4C ; =ov96_0221DA28
	lsr r2, r5, #0x16
	ldr r1, [r0, r2]
	mov r0, #0x1e
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0xd
	strb r1, [r4, r0]
	ldr r0, _021E6D50 ; =_0221DA00
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r0, [r0, r2]
	add r1, r4, r1
	bl PokeathlonCourse_InitStateInfo
	add r0, r4, #0
	mov r1, #0x10
	bl PokeathlonCourse_SetStateField07
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E6D40: .word 0x0000FFFF
_021E6D44: .word 0x00000728
_021E6D48: .word 0x00000D2A
_021E6D4C: .word ov96_0221DA28
_021E6D50: .word _0221DA00
	thumb_func_end ov96_021E6CE4

