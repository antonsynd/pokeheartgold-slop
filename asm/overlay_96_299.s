	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021F2BB4
	.public ov96_021F2C04
	.public ov96_021F2CD0
	.public ov96_021F2D68
	.extern PokeathlonCourse_GetDataCopyArea
	.extern ov96_021E8A20
	.extern ov96_021F31F0
	.extern ov96_021F3298
	.extern ov96_0221DB70

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
	thumb_func_start ov96_021F2BB4
ov96_021F2BB4: ; 0x021F2BB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021F2BC6
	cmp r0, #1
	beq _021F2BDE
	pop {r3, r4, r5, pc}
_021F2BC6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F2BFE
	ldr r0, _021F2C00 ; =ov96_021F2D68
	mov r2, #3
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x10]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_021F2BDE:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021F2BFE
	mov r0, #0
	str r0, [r4, #4]
	strb r0, [r4]
	ldr r0, [r4, #0x30]
	bl PokeathlonCourse_GetDataCopyArea
	bl ov96_021E8A20
	mov r1, #1
	strb r1, [r0, #8]
	add r0, r5, #0
	bl SysTask_Destroy
_021F2BFE:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2C00: .word ov96_021F2D68
	thumb_func_end ov96_021F2BB4

	thumb_func_start ov96_021F2C04
ov96_021F2C04: ; 0x021F2C04
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _021F2C1C
	cmp r1, #1
	beq _021F2C5A
	cmp r1, #2
	beq _021F2C86
	add sp, #4
	pop {r3, r4, pc}
_021F2C1C:
	ldrh r0, [r4, #0x18]
	add r0, r0, #1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	cmp r0, #5
	bhi _021F2C50
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xc
	mul r0, r1
	mov r1, #5
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r4, #4
	str r0, [sp]
	mov r3, #0xc
	ldr r0, _021F2CC8 ; =0x04000050
	mov r1, #0
	mov r2, #1
	sub r3, r3, r4
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
_021F2C50:
	ldrb r0, [r4, #1]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_021F2C5A:
	ldrh r1, [r4, #0x1e]
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021F31F0
	ldrh r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021F3298
	mov r0, #0
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldr r0, _021F2CCC ; =0x0000089F
	bl PlaySE
	add sp, #4
	pop {r3, r4, pc}
_021F2C86:
	ldrh r1, [r4, #0x18]
	add r1, r1, #1
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r1, #5
	bhi _021F2CB8
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xc
	mul r0, r1
	mov r1, #5
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021F2CC8 ; =0x04000050
	mov r1, #0
	mov r2, #1
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
_021F2CB8:
	mov r1, #0
	str r1, [r4, #0xc]
	strh r1, [r4, #0x18]
	strb r1, [r4, #1]
	bl SysTask_Destroy
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021F2CC8: .word 0x04000050
_021F2CCC: .word 0x0000089F
	thumb_func_end ov96_021F2C04

	thumb_func_start ov96_021F2CD0
ov96_021F2CD0: ; 0x021F2CD0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _021F2CE6
	cmp r0, #1
	beq _021F2D16
	cmp r0, #2
	beq _021F2D2E
	pop {r3, r4, r5, pc}
_021F2CE6:
	ldrh r0, [r4, #0x1a]
	mov r1, #5
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #7
	bl _s32_div_f
	mov r1, #0x80
	sub r0, r1, r0
	lsl r1, r0, #0x10
	ldr r0, _021F2D60 ; =0x01FF0000
	and r1, r0
	ldr r0, _021F2D64 ; =0x04000018
	str r1, [r0]
	ldrh r0, [r4, #0x1a]
	cmp r0, #5
	blo _021F2D5E
	mov r0, #0
	strh r0, [r4, #0x1a]
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
_021F2D16:
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x14
	blo _021F2D5E
	mov r0, #0
	strh r0, [r4, #0x1a]
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
_021F2D2E:
	ldrh r0, [r4, #0x1a]
	mov r1, #5
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #7
	neg r0, r0
	bl _s32_div_f
	lsl r1, r0, #0x10
	ldr r0, _021F2D60 ; =0x01FF0000
	and r1, r0
	ldr r0, _021F2D64 ; =0x04000018
	str r1, [r0]
	ldrh r0, [r4, #0x1a]
	cmp r0, #5
	blo _021F2D5E
	mov r0, #0
	strh r0, [r4, #0x1a]
	str r0, [r4, #8]
	strb r0, [r4, #2]
	add r0, r5, #0
	bl SysTask_Destroy
_021F2D5E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2D60: .word 0x01FF0000
_021F2D64: .word 0x04000018
	thumb_func_end ov96_021F2CD0

	thumb_func_start ov96_021F2D68
ov96_021F2D68: ; 0x021F2D68
	push {r4, lr}
	mov r2, #0x24
	ldrsh r4, [r1, r2]
	ldrh r2, [r1, #0x26]
	lsl r3, r2, #2
	ldr r2, _021F2D94 ; =ov96_0221DB70
	ldr r2, [r2, r3]
	add r2, r4, r2
	strh r2, [r1, #0x24]
	ldrh r2, [r1, #0x26]
	add r2, r2, #1
	strh r2, [r1, #0x26]
	ldrh r2, [r1, #0x26]
	cmp r2, #0x12
	blo _021F2D92
	mov r2, #0
	strh r2, [r1, #0x24]
	str r2, [r1, #0x10]
	strh r2, [r1, #0x26]
	bl SysTask_Destroy
_021F2D92:
	pop {r4, pc}
	.balign 4, 0
_021F2D94: .word ov96_0221DB70
	thumb_func_end ov96_021F2D68

