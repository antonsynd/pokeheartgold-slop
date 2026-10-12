	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223FF44
	.public ov83_0223FFD8
	.extern ov83_0223FCB4
	.extern ov83_02240C48

    .text

	.text
	thumb_func_start ov83_0223FF44
ov83_0223FF44: ; 0x0223FF44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r4, r2, #0
	bl FillWindowPixelBuffer
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	mov r0, #0x42
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x60
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x37
	str r0, [sp, #8]
	mov r0, #0x3b
	str r0, [sp, #0xc]
	mov r0, #0x43
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x61
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r0, #0x3c
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #0x62
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	mov r0, #0x45
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #0x63
	bl ov83_0223FFD8
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov83_0223FF44

	thumb_func_start ov83_0223FFD8
ov83_0223FFD8: ; 0x0223FFD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	mov r2, #0
	add r7, r3, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl BufferMoveName
	mov r3, #0x18
	add r0, r5, #0
	mul r0, r3
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov83_0223FCB4
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r3, #3
	bl ov83_02240C48
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r3, #3
	bl ov83_02240C48
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x60
	bl ov83_0223FCB4
	strb r0, [r4, #0xa]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FFD8

