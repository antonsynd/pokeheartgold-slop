	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225E54C
	.public ov31_0225E5FC
	.public ov31_0225E700
	.public ov31_0225E774
	.public ov31_0225E7D4
	.extern ov31_0225E4BC
	.extern ov31_0225E4EC
	.extern ov31_0225E51C
	.extern ov31_0225E948

	.text

	.text
	thumb_func_start ov31_0225E54C
ov31_0225E54C: ; 0x0225E54C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r3, [r5, #0x14]
	ldr r2, _0225E5F4 ; =0x00000283
	ldr r1, [r5, r1]
	ldrb r0, [r3, r2]
	add r2, r2, #1
	ldrh r2, [r3, r2]
	mov r3, #0
	bl ov31_0225E4BC
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc
	bl NewString_ReadMsgData
	mov r1, #0x55
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #0x34
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r1, #4
	str r1, [sp, #4]
	ldr r0, [r5, #4]
	ldr r2, _0225E5F8 ; =0x000001B5
	mov r3, #5
	bl LoadUserFrameGfx2
	mov r2, #0x51
	lsl r2, r2, #2
	add r0, r5, r2
	mov r1, #1
	add r2, #0x71
	mov r3, #5
	bl DrawFrameAndWindow2
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Options_GetTextFrameDelay
	mov r3, #0
	str r3, [sp]
	mov r2, #0x51
	str r0, [sp, #4]
	lsl r2, r2, #2
	add r0, r5, r2
	str r3, [sp, #8]
	add r2, #0x44
	ldr r2, [r5, r2]
	mov r1, #1
	bl AddTextPrinterParameterized
	mov r1, #0xa
	ldr r2, [r5, #0x14]
	lsl r1, r1, #6
	strb r0, [r2, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0225E5F4: .word 0x00000283
_0225E5F8: .word 0x000001B5
	thumb_func_end ov31_0225E54C

	thumb_func_start ov31_0225E5FC
ov31_0225E5FC: ; 0x0225E5FC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r2, [r4, #0x14]
	ldr r3, _0225E6F8 ; =0x00000283
	ldrb r0, [r2, r3]
	add r1, r0, #0
	add r1, #0xfd
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	bhi _0225E63E
	mov r1, #0x55
	add r3, r3, #1
	lsl r1, r1, #2
	ldrh r2, [r2, r3]
	ldr r1, [r4, r1]
	mov r3, #0
	bl ov31_0225E51C
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2e
	bl NewString_ReadMsgData
	b _0225E684
_0225E63E:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x55
	add r3, r3, #3
	lsl r0, r0, #2
	ldrsh r2, [r2, r3]
	ldr r0, [r4, r0]
	mov r3, #2
	bl BufferIntegerAsString
	mov r5, #0xa3
	ldr r2, [r4, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r0, #0x55
	str r1, [sp, #4]
	lsl r5, r5, #2
	ldr r3, [r2, r5]
	sub r5, r5, #6
	ldrsh r2, [r2, r5]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mul r2, r3
	mov r3, #6
	bl BufferIntegerAsString
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xe
	bl NewString_ReadMsgData
_0225E684:
	mov r1, #0x55
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r0, [r4, r1]
	add r1, #0x34
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r1, #4
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	ldr r2, _0225E6FC ; =0x000001B5
	mov r3, #5
	bl LoadUserFrameGfx2
	mov r2, #0x51
	lsl r2, r2, #2
	add r0, r4, r2
	mov r1, #1
	add r2, #0x71
	mov r3, #5
	bl DrawFrameAndWindow2
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetTextFrameDelay
	mov r3, #0
	str r3, [sp]
	mov r2, #0x51
	str r0, [sp, #4]
	lsl r2, r2, #2
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x44
	ldr r2, [r4, r2]
	mov r1, #1
	bl AddTextPrinterParameterized
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0225E6F8: .word 0x00000283
_0225E6FC: .word 0x000001B5
	thumb_func_end ov31_0225E5FC

	thumb_func_start ov31_0225E700
ov31_0225E700: ; 0x0225E700
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r2, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r2, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	ldr r0, [r4, #0x1c]
	add r2, #0xf2
	add r0, r0, r2
	bl MenuInputStateMgr_GetState
	add r1, sp, #0
	ldrb r2, [r1, #0x12]
	mov r3, #0xf
	lsl r0, r0, #0x18
	bic r2, r3
	lsr r3, r0, #0x18
	mov r0, #0xf
	and r0, r3
	orr r0, r2
	strb r0, [r1, #0x12]
	ldrb r2, [r1, #0x12]
	mov r0, #0xf0
	bic r2, r0
	strb r2, [r1, #0x12]
	mov r0, #0
	strb r0, [r1, #0x13]
	ldr r0, [r4, #4]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	mov r0, #8
	bl YesNoPrompt_Create
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov31_0225E700

	thumb_func_start ov31_0225E774
ov31_0225E774: ; 0x0225E774
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0225E786
	mov r0, #0
	pop {r4, pc}
_0225E786:
	bl YesNoPrompt_HandleInputForSave
	cmp r0, #1
	beq _0225E794
	cmp r0, #2
	beq _0225E7B2
	b _0225E7D0
_0225E794:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #0x17
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r4, r0]
	mov r0, #0xa5
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	str r2, [r1, r0]
	mov r0, #1
	pop {r4, pc}
_0225E7B2:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #0x17
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0xa5
	ldr r2, [r4, #0x14]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, pc}
_0225E7D0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov31_0225E774

	thumb_func_start ov31_0225E7D4
ov31_0225E7D4: ; 0x0225E7D4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r3, [r4, #0x14]
	ldr r2, _0225E938 ; =0x00000286
	ldrsh r0, [r3, r2]
	cmp r0, #1
	ble _0225E7FA
	sub r0, r2, #3
	mov r1, #0x55
	sub r2, r2, #2
	lsl r1, r1, #2
	ldrb r0, [r3, r0]
	ldrh r2, [r3, r2]
	ldr r1, [r4, r1]
	mov r3, #0
	bl ov31_0225E4EC
	b _0225E80E
_0225E7FA:
	sub r0, r2, #3
	mov r1, #0x55
	sub r2, r2, #2
	lsl r1, r1, #2
	ldrb r0, [r3, r0]
	ldrh r2, [r3, r2]
	ldr r1, [r4, r1]
	mov r3, #0
	bl ov31_0225E4BC
_0225E80E:
	ldr r1, [r4, #0x14]
	ldr r0, _0225E93C ; =0x00000283
	ldrb r2, [r1, r0]
	cmp r2, #4
	bhi _0225E8CC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225E824: ; jump table
	.short _0225E82E - _0225E824 - 2 ; case 0
	.short _0225E8BC - _0225E824 - 2 ; case 1
	.short _0225E8CC - _0225E824 - 2 ; case 2
	.short _0225E85C - _0225E824 - 2 ; case 3
	.short _0225E8AC - _0225E824 - 2 ; case 4
_0225E82E:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl NewString_ReadMsgData
	add r5, r0, #0
	mov r0, #0xa1
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	mov r1, #5
	mov r2, #0xb
	bl GetItemAttr
	add r2, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl BufferPocketName
	b _0225E8DA
_0225E85C:
	add r2, r0, #1
	ldrh r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x9e
	cmp r2, r1
	blo _0225E87E
	sub r0, #0x98
	cmp r2, r0
	bhi _0225E87E
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl NewString_ReadMsgData
	add r5, r0, #0
	b _0225E8DA
_0225E87E:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl NewString_ReadMsgData
	add r5, r0, #0
	mov r0, #0xa1
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	mov r1, #5
	mov r2, #0xb
	bl GetItemAttr
	add r2, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl BufferPocketName
	b _0225E8DA
_0225E8AC:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl NewString_ReadMsgData
	add r5, r0, #0
	b _0225E8DA
_0225E8BC:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x15
	bl NewString_ReadMsgData
	add r5, r0, #0
	b _0225E8DA
_0225E8CC:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x17
	bl NewString_ReadMsgData
	add r5, r0, #0
_0225E8DA:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x34
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	add r0, #0x44
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r4, #0
	ldr r2, _0225E940 ; =0x000001B5
	add r0, #0x44
	mov r1, #1
	mov r3, #5
	bl DrawFrameAndWindow2
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetTextFrameDelay
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0225E944 ; =ov31_0225E948
	mov r2, #0x62
	str r0, [sp, #8]
	lsl r2, r2, #2
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x44
	mov r1, #1
	bl AddTextPrinterParameterized
	mov r1, #0xa
	ldr r2, [r4, #0x14]
	lsl r1, r1, #6
	strb r0, [r2, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0225E938: .word 0x00000286
_0225E93C: .word 0x00000283
_0225E940: .word 0x000001B5
_0225E944: .word ov31_0225E948
	thumb_func_end ov31_0225E7D4

