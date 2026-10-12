	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E7080
	.extern ov108_021EA724
	.extern ov108_021EA7A8

	.text

	.text
	thumb_func_start ov108_021E7080
ov108_021E7080: ; 0x021E7080
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r4, _021E71D8 ; =ov108_021EA7A8
	mov r6, #0
	add r5, r7, r0
_021E7090:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #4
	ble _021E7090
	mov r0, #5
	str r0, [sp, #0x24]
	mov r0, #1
	ldr r4, _021E71DC ; =0x000003A6
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r0, #0xe
	mov r5, #0
	add r6, r7, r0
_021E70C2:
	ldr r0, [sp, #0x20]
	mov r2, #7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	asr r0, r5, #1
	lsr r0, r0, #0x1e
	add r0, r5, r0
	asr r1, r0, #2
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	lsl r0, r0, #1
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x16
	mul r1, r0
	str r1, [sp, #0x1c]
	sub r4, r4, r1
	ldr r1, [sp, #0x24]
	mov r3, #1
	lsl r1, r1, #4
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r1, [sp]
	mov r1, #0x16
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r1, [sp, #0x2c]
	ldr r0, [r7, r0]
	add r1, r6, r1
	bl AddWindowParameterized
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r1, r0, #2
	ldr r0, _021E71E0 ; =ov108_021EA724
	ldr r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0x18
	add r0, r6, r0
	lsr r1, r1, #0x18
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	sub r4, r4, r0
	ldr r0, [sp, #0x24]
	mov r2, #7
	add r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x18]
	mov r3, #0x1a
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r1, [sp, #0x30]
	ldr r0, [r7, r0]
	add r1, r6, r1
	bl AddWindowParameterized
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x30]
	lsl r1, r1, #0x18
	add r0, r6, r0
	lsr r1, r1, #0x18
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x24]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	sub r4, #0xa
	add r0, r0, #4
	str r0, [sp, #0x20]
	cmp r5, #5
	blt _021E70C2
	ldr r0, _021E71E4 ; =0x000004A4
	add r0, r7, r0
	bl InitWindow
	ldr r1, _021E71E8 ; =0x000002E1
	mov r0, #0
	str r1, [sp]
	add r1, #0x5f
	str r0, [sp, #4]
	ldr r0, [r7, r1]
	ldr r1, _021E71E4 ; =0x000004A4
	mov r2, #6
	add r1, r7, r1
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	ldr r0, _021E71E4 ; =0x000004A4
	mov r1, #0
	add r0, r7, r0
	bl FillWindowPixelBufferText_AssumeTileSize32
	ldr r0, [r7]
	bl YesNoPrompt_Create
	mov r1, #0x13
	lsl r1, r1, #6
	str r0, [r7, r1]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021E71D8: .word ov108_021EA7A8
_021E71DC: .word 0x000003A6
_021E71E0: .word ov108_021EA724
_021E71E4: .word 0x000004A4
_021E71E8: .word 0x000002E1
	thumb_func_end ov108_021E7080

