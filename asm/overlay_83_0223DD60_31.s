	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_022407FC
	.public ov83_02240C48
	.public ov83_02241DD8

    .text

	thumb_func_start ov83_022407FC
ov83_022407FC: ; 0x022407FC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x3d
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	ldr r2, _02240880 ; =0x00000862
	str r1, [sp]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #1
	add r2, r2, #1
	bl ov83_02240C48
	ldr r0, _02240884 ; =0x00000861
	mov r1, #6
	ldrb r0, [r4, r0]
	sub r0, r0, #1
	bl _s32_div_f
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r2, r2, #1
	add r3, r1, #0
	bl ov83_02240C48
	mov r0, #0x3d
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240888 ; =0x00010200
	mov r1, #0x3d
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x67
	bl ov83_02241DD8
	mov r0, #0x3d
	lsl r0, r0, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02240880: .word 0x00000862
_02240884: .word 0x00000861
_02240888: .word 0x00010200
	thumb_func_end ov83_022407FC

