	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE550
	.extern ov103_021EE430

	.text

	.text
	thumb_func_start ov103_021EE550
ov103_021EE550: ; 0x021EE550
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x76
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0xc]
	mov r1, #0x2c
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r1, _021EE604 ; =0x00010200
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0x8a
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r2, #0x19
	bl ov103_021EE430
	mov r0, #0x76
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x66
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0xc]
	mov r1, #0x18
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r1, _021EE608 ; =0x000F0100
	mov r2, #0x15
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0x8a
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r3, #3
	bl ov103_021EE430
	mov r0, #0x66
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x6a
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0xc]
	mov r1, #0x18
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r3, #4
	ldr r1, _021EE608 ; =0x000F0100
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0x8a
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r2, #0x16
	bl ov103_021EE430
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021EE604: .word 0x00010200
_021EE608: .word 0x000F0100
	thumb_func_end ov103_021EE550

