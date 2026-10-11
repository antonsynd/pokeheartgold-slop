	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241A98
	.public ov81_022430B4

	.text

	thumb_func_start ov81_02241A98
ov81_02241A98: ; 0x02241A98
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #2
	bl FillWindowPixelBuffer
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #2
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0xe0
	mov r1, #2
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0xf0
	mov r1, #2
	bl FillWindowPixelBuffer
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02241BB4 ; =0x000F0E02
	lsl r5, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x15
	lsr r3, r5, #0x1f
	lsl r0, r0, #4
	add r3, r5, r3
	ldr r1, [r4, #0x1c]
	add r0, r4, r0
	mov r2, #0x19
	asr r3, r3, #1
	bl ov81_022430B4
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02241BB4 ; =0x000F0E02
	lsl r5, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x16
	lsr r3, r5, #0x1f
	lsl r0, r0, #4
	add r3, r5, r3
	ldr r1, [r4, #0x1c]
	add r0, r4, r0
	mov r2, #0x16
	asr r3, r3, #1
	bl ov81_022430B4
	add r0, r4, #0
	add r0, #0xe0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02241BB4 ; =0x000F0E02
	lsl r5, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	lsr r3, r5, #0x1f
	add r0, r4, #0
	add r3, r5, r3
	ldr r1, [r4, #0x1c]
	add r0, #0xe0
	mov r2, #0x17
	asr r3, r3, #1
	bl ov81_022430B4
	add r0, r4, #0
	add r0, #0xf0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02241BB4 ; =0x000F0E02
	lsl r5, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	lsr r3, r5, #0x1f
	add r0, r4, #0
	add r3, r5, r3
	ldr r1, [r4, #0x1c]
	add r0, #0xf0
	mov r2, #0x18
	asr r3, r3, #1
	bl ov81_022430B4
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	add r0, r4, #0
	add r0, #0xe0
	bl CopyWindowPixelsToVram_TextMode
	add r4, #0xf0
	add r0, r4, #0
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241BB4: .word 0x000F0E02
	thumb_func_end ov81_02241A98

