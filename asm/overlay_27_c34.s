	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225BC84
	.public ov27_0225BCE8
	.public ov27_0225BD44

	.text

	.text
	thumb_func_start ov27_0225BC84
ov27_0225BC84: ; 0x0225BC84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r7, #0
	str r0, [sp]
	add r4, r7, #0
	add r5, sp, #4
_0225BC90:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x10]
	bl FieldSystem_ShouldDrawStartMenuIcon
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #8
	blt _0225BC90
	mov r1, #0x3f
	ldr r0, [sp]
	lsl r1, r1, #4
	mov r6, #0
	add r4, sp, #4
	add r5, r0, r1
_0225BCAE:
	ldr r0, [r4]
	cmp r0, #0
	beq _0225BCBC
	add r0, r5, #0
	bl CopyWindowToVram
	add r7, r7, #1
_0225BCBC:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #8
	blt _0225BCAE
	cmp r7, #0
	beq _0225BCE4
	mov r1, #0xf2
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r1, #0x3e
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	bl CopyWindowToVram
_0225BCE4:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov27_0225BC84

	thumb_func_start ov27_0225BCE8
ov27_0225BCE8: ; 0x0225BCE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	mov r6, #0
	add r4, r5, r0
_0225BCF6:
	ldr r0, _0225BD3C ; =0x00000474
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0225BD2C
	mov r0, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0x48
	sub r3, r1, r0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225BD40 ; =0x000E0200
	lsr r7, r3, #0x1f
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, _0225BD3C ; =0x00000474
	add r7, r3, r7
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #0
	asr r3, r7, #1
	bl AddTextPrinterParameterizedWithColor
_0225BD2C:
	add r6, r6, #1
	add r5, #8
	add r4, #0x10
	cmp r6, #7
	blt _0225BCF6
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BD3C: .word 0x00000474
_0225BD40: .word 0x000E0200
	thumb_func_end ov27_0225BCE8

	thumb_func_start ov27_0225BD44
ov27_0225BD44: ; 0x0225BD44
	add r0, #0xd2
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	.balign 4, 0
	thumb_func_end ov27_0225BD44

