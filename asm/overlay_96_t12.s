	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E65D8
	.public ov96_021E661C

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
	thumb_func_start ov96_021E65D8
ov96_021E65D8: ; 0x021E65D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021E6614 ; =0x00000728
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021E6610
	mov r4, #0
	cmp r0, #0
	bls _021E6610
	ldr r7, _021E6614 ; =0x00000728
_021E65EC:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _021E6618 ; =0x0000071C
	mov r1, #1
	ldr r0, [r6, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _021E6618 ; =0x0000071C
	mov r1, #0
	ldr r0, [r6, r0]
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r0, [r5, r7]
	cmp r4, r0
	blo _021E65EC
_021E6610:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6614: .word 0x00000728
_021E6618: .word 0x0000071C
	thumb_func_end ov96_021E65D8

	thumb_func_start ov96_021E661C
ov96_021E661C: ; 0x021E661C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021E6668 ; =0x00000728
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _021E662C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E662C:
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _021E6664
	ldr r0, _021E6668 ; =0x00000728
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _021E6660
	ldr r7, _021E666C ; =0x0000071C
	add r6, r7, #0
	add r6, #0xc
_021E6648:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r0, [r5, r6]
	cmp r4, r0
	blo _021E6648
_021E6660:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6664:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6668: .word 0x00000728
_021E666C: .word 0x0000071C
	thumb_func_end ov96_021E661C

