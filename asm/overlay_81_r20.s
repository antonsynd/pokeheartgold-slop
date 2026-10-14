	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223F770
	.extern ov81_0223FB3C
	.extern ov81_0223FB64
	.extern ov81_0223FB88
	.extern ov81_0224086C
	.extern ov81_02240F38
	.extern ov81_02241980
	.extern ov81_022419E0
	.extern ov81_02241A38
	.extern ov81_02241A7C
	.extern ov81_02241BD0
	.extern ov81_02241D94
	.extern ov81_02242218
	.extern ov81_022424AC
	.extern ov81_022425C4
	.extern ov81_022425D8
	.extern ov81_022425EC
	.extern ov81_02242694
	.extern ov81_02242D88
	.extern ov81_02242E08
	.extern ov81_02243028

	.text

	.text
	thumb_func_start ov81_0223F770
ov81_0223F770: ; 0x0223F770
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #8
	bhi _0223F7FC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223F786: ; jump table
	.short _0223F798 - _0223F786 - 2 ; case 0
	.short _0223F7BC - _0223F786 - 2 ; case 1
	.short _0223FA4A - _0223F786 - 2 ; case 2
	.short _0223FABC - _0223F786 - 2 ; case 3
	.short _0223FAC0 - _0223F786 - 2 ; case 4
	.short _0223FAC6 - _0223F786 - 2 ; case 5
	.short _0223FAD4 - _0223F786 - 2 ; case 6
	.short _0223FAE4 - _0223F786 - 2 ; case 7
	.short _0223FB24 - _0223F786 - 2 ; case 8
_0223F798:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov81_02243028
	add r0, r4, #0
	mov r1, #0xd
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	mov r0, #1
	strb r0, [r4, #8]
	b _0223FB38
_0223F7BC:
	ldr r0, _0223FB10 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_NoHold
	add r5, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r5, r0
	bhi _0223F7F2
	blo _0223F7D2
	b _0223F956
_0223F7D2:
	cmp r5, #7
	bhi _0223F7FC
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F7E2: ; jump table
	.short _0223F7FE - _0223F7E2 - 2 ; case 0
	.short _0223F7FE - _0223F7E2 - 2 ; case 1
	.short _0223F7FE - _0223F7E2 - 2 ; case 2
	.short _0223F7FE - _0223F7E2 - 2 ; case 3
	.short _0223F84A - _0223F7E2 - 2 ; case 4
	.short _0223F8B8 - _0223F7E2 - 2 ; case 5
	.short _0223F926 - _0223F7E2 - 2 ; case 6
	.short _0223F93E - _0223F7E2 - 2 ; case 7
_0223F7F2:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0223F7FC
	b _0223FA02
_0223F7FC:
	b _0223FB38
_0223F7FE:
	ldr r0, _0223FB14 ; =0x000005DC
	bl PlaySE
	ldr r2, _0223FB18 ; =0x00000468
	add r0, r4, #0
	add r1, r2, #0
	str r5, [r4, r2]
	sub r1, #0xa4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	mov r3, #4
	bl ov81_02242218
	ldr r0, _0223FB1C ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #7
	add r3, r1, #0
	bl sub_020196E8
	add r0, r4, #0
	bl ov81_02241D94
	ldr r1, _0223FB18 ; =0x00000468
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov81_022424AC
	add r0, r4, #0
	bl ov81_02241980
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242E08
	b _0223FB38
_0223F84A:
	ldr r0, _0223FB14 ; =0x000005DC
	bl PlaySE
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r2, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0xd0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x50
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _0223FB1C ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0201980C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xf
	mov r3, #5
	bl ov81_022425D8
	mov r0, #4
	strb r0, [r4, #8]
	b _0223FB38
_0223F8B8:
	ldr r0, _0223FB14 ; =0x000005DC
	bl PlaySE
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r2, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0xd0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x50
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _0223FB1C ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0201980C
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0xf
	mov r3, #6
	bl ov81_022425D8
	mov r0, #4
	strb r0, [r4, #8]
	b _0223FB38
_0223F926:
	ldr r0, _0223FB14 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xf
	mov r3, #7
	bl ov81_022425C4
	mov r0, #4
	strb r0, [r4, #8]
	b _0223FB38
_0223F93E:
	ldr r0, _0223FB14 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0xf
	mov r3, #8
	bl ov81_022425C4
	mov r0, #4
	strb r0, [r4, #8]
	b _0223FB38
_0223F956:
	ldr r0, _0223FB14 ; =0x000005DC
	bl PlaySE
	ldr r0, _0223FB10 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r5, r0, #0
	sub r0, r5, #4
	cmp r0, #1
	bhi _0223F9C4
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r2, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0xd0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x50
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _0223FB1C ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0201980C
	b _0223FB38
_0223F9C4:
	cmp r5, #6
	beq _0223FA5A
	cmp r5, #7
	beq _0223FA5A
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #4
	bl ov81_02242218
	add r0, r4, #0
	add r0, #0xd0
	bl ScheduleWindowCopyToVram
	ldr r0, _0223FB1C ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #7
	add r3, r1, #0
	bl sub_020196E8
	add r0, r4, #0
	bl ov81_02241D94
	add r0, r4, #0
	add r1, r5, #0
	bl ov81_022424AC
	b _0223FB38
_0223FA02:
	ldr r0, _0223FB10 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	cmp r0, #6
	ldr r0, _0223FB14 ; =0x000005DC
	blo _0223FA28
	bl PlaySE
	add r0, r4, #0
	bl ov81_022419E0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242E08
	b _0223FB38
_0223FA28:
	bl PlaySE
	add r0, r4, #0
	bl ov81_02241A7C
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242E08
	add r0, r4, #0
	mov r1, #1
	bl ov81_02240F38
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223FA4A:
	ldr r0, _0223FB20 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223FA5C
	cmp r0, #2
	beq _0223FA8E
_0223FA5A:
	b _0223FB38
_0223FA5C:
	ldr r0, _0223FB20 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242694
	add r0, r4, #0
	bl ov81_0223FB64
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223FA86
	add r0, r4, #0
	mov r1, #2
	bl ov81_0224086C
	strb r0, [r4, #0x10]
_0223FA86:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FB38
_0223FA8E:
	ldr r0, _0223FB20 ; =0x0000046C
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242694
	add r0, r4, #0
	bl ov81_0223FB88
	add r0, r4, #0
	bl ov81_02241A38
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242E08
	mov r0, #1
	strb r0, [r4, #8]
	b _0223FB38
_0223FABC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223FAC0:
	bl ov81_022425EC
	b _0223FB38
_0223FAC6:
	bl ov81_02241A7C
	add r0, r4, #0
	bl ov81_0223FB3C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223FAD4:
	bl ov81_02241A7C
	add r0, r4, #0
	mov r1, #1
	bl ov81_02240F38
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223FAE4:
	bl ov81_022419E0
	add r0, r4, #0
	bl ov81_02241A7C
	ldr r0, _0223FB20 ; =0x0000046C
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, r0]
	bl ov81_02241BD0
	add r0, r4, #0
	mov r1, #1
	bl ov81_02242694
	add r0, r4, #0
	mov r1, #0xe
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	mov r0, #2
	strb r0, [r4, #8]
	b _0223FB38
	.balign 4, 0
_0223FB10: .word 0x00000464
_0223FB14: .word 0x000005DC
_0223FB18: .word 0x00000468
_0223FB1C: .word 0x00000474
_0223FB20: .word 0x0000046C
_0223FB24:
	bl ov81_022419E0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242E08
	mov r0, #1
	strb r0, [r4, #8]
_0223FB38:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov81_0223F770

