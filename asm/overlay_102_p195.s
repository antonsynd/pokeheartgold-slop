	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EB77C

	.text

	.text
	thumb_func_start ov102_021EB77C
ov102_021EB77C: ; 0x021EB77C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r1, [sp, #0x18]
	mov r1, #0x1b
	add r6, r2, #0
	add r2, r1, #0
	str r0, [sp, #0x14]
	mov r0, #1
	add r2, #0xff
	mov r3, #0x23
	bl NewMsgDataFromNarc
	str r0, [sp, #0x20]
	mov r0, #9
	mov r7, #1
	str r0, [sp, #0x24]
	mov r4, #0
_021EB79E:
	cmp r4, #0
	beq _021EB7B6
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	bne _021EB7B6
	ldr r0, [sp, #0x24]
	mov r7, #1
	add r0, r0, #3
	str r0, [sp, #0x24]
_021EB7B6:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_02091C38
	cmp r0, #0
	beq _021EB7D4
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, _021EB874 ; =0x0001020F
	str r0, [sp, #0x1c]
	b _021EB7E2
_021EB7D4:
	ldr r0, [sp, #0x20]
	mov r1, #0xc
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, _021EB878 ; =0x0003040F
	str r0, [sp, #0x1c]
_021EB7E2:
	ldr r0, _021EB87C ; =0x000003EE
	cmp r6, r0
	blo _021EB7EC
	bl GF_AssertFail
_021EB7EC:
	ldr r0, [sp, #0x24]
	lsl r3, r7, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x28
	mov r2, #1
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, sp, #0x28
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0x48
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	add r2, r5, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, sp, #0x28
	bl PutWindowTilemap
	add r0, sp, #0x28
	bl CopyWindowPixelsToVram_TextMode
	add r0, r5, #0
	bl String_Delete
	add r0, sp, #0x28
	bl RemoveWindow
	add r4, r4, #1
	add r6, #0x12
	add r7, #0xa
	cmp r4, #0xc
	blt _021EB79E
	ldr r0, [sp, #0x20]
	bl DestroyMsgData
	add r0, r6, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EB874: .word 0x0001020F
_021EB878: .word 0x0003040F
_021EB87C: .word 0x000003EE
	thumb_func_end ov102_021EB77C

