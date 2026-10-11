	.include "asm/macros.inc"
	.include "overlay_41_02247828.inc"
	.include "global.inc"
	.public ov41_02247B7C
	.public ov41_02247BB8

    .text

	.text
	thumb_func_start ov41_02247B7C
ov41_02247B7C: ; 0x02247B7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02247BB0 ; =0x000006B8
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	add r4, r0, #0
	beq _02247B96
	cmp r4, #1
	beq _02247B9A
	cmp r4, #2
	beq _02247B9E
	b _02247BA0
_02247B96:
	mov r0, #4
	pop {r3, r4, r5, pc}
_02247B9A:
	mov r4, #8
	b _02247BA0
_02247B9E:
	mov r4, #9
_02247BA0:
	ldr r0, _02247BB0 ; =0x000006B8
	ldr r0, [r5, r0]
	bl YesNoPrompt_IsInTouchMode
	ldr r1, _02247BB4 ; =0x000006EC
	str r0, [r5, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02247BB0: .word 0x000006B8
_02247BB4: .word 0x000006EC
	thumb_func_end ov41_02247B7C

	thumb_func_start ov41_02247BB8
ov41_02247BB8: ; 0x02247BB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02247C70 ; =0x000006DC
	str r1, [sp, #0x14]
	ldr r0, [r5, r0]
	add r7, r2, #0
	add r4, r3, #0
	bl Options_GetFrame
	add r6, r0, #0
	mov r0, #0
	mov r1, #0xe0
	mov r2, #0xe
	bl LoadFontPal1
	str r4, [sp]
	add r0, sp, #0x20
	ldrb r1, [r0, #0x10]
	mov r2, #3
	add r3, r7, #0
	str r1, [sp, #4]
	ldrb r0, [r0, #0x14]
	ldr r1, _02247C74 ; =0x000006BC
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x5a
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, r1]
	bl AddWindowParameterized
	ldr r0, _02247C74 ; =0x000006BC
	mov r1, #0xf
	ldr r0, [r5, r0]
	bl FillWindowPixelBuffer
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r5, #0x40]
	mov r1, #3
	mov r2, #0x3c
	mov r3, #8
	bl LoadUserFrameGfx2
	ldr r0, _02247C74 ; =0x000006BC
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #0x3c
	mov r3, #8
	bl DrawFrameAndWindow2
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xd7
	mov r3, #0xd
	bl NewMsgDataFromNarc
	ldr r1, [sp, #0x14]
	add r6, r0, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	ldr r0, _02247C78 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02247C74 ; =0x000006BC
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, r6, #0
	bl DestroyMsgData
	ldr r0, _02247C74 ; =0x000006BC
	ldr r0, [r5, r0]
	bl CopyWindowToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247C70: .word 0x000006DC
_02247C74: .word 0x000006BC
_02247C78: .word 0x0001020F
	thumb_func_end ov41_02247BB8

