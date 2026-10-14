	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E6BA8
	.extern ov86_021E5FBC
	.extern ov86_021E6024
	.extern ov86_021E6064
	.extern ov86_021E6DD8

	.text

	.text
	thumb_func_start ov86_021E6BA8
ov86_021E6BA8: ; 0x021E6BA8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x20
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x50
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x60
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x70
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x80
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x90
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	ldr r0, _021E6DD0 ; =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0x15
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl ov86_021E6024
	mov r1, #0
	str r1, [sp]
	ldr r0, _021E6DD0 ; =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0xe0
	bl ov86_021E6024
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6DD4 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x2c
	bl ov86_021E6024
	ldrb r1, [r4, #6]
	add r0, r4, #0
	bl ov86_021E6DD8
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	ldr r0, _021E6DD4 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #4
	str r3, [sp, #0xc]
	bl ov86_021E6024
	ldrb r0, [r4, #6]
	bl sub_0205C310
	add r1, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl FrontierSave_GetStat
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov86_021E5FBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6DD4 ; =0x00010200
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r2, #0x32
	mov r3, #0x70
	bl ov86_021E6064
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6DD4 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x2b
	bl ov86_021E6024
	ldrb r0, [r4, #6]
	bl sub_0205C350
	add r1, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl FrontierSave_GetStat
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov86_021E5FBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6DD4 ; =0x00010200
	mov r1, #5
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r2, #0x32
	mov r3, #0x70
	bl ov86_021E6064
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6DD4 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x2d
	str r3, [sp, #0xc]
	bl ov86_021E6024
	add r0, r4, #0
	mov r1, #3
	bl ov86_021E6DD8
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	ldr r0, _021E6DD4 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #7
	str r3, [sp, #0xc]
	bl ov86_021E6024
	mov r0, #3
	bl sub_0205C310
	add r1, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl FrontierSave_GetStat
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov86_021E5FBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6DD4 ; =0x00010200
	mov r1, #7
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r2, #0x32
	mov r3, #0x70
	bl ov86_021E6064
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6DD4 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0x2b
	str r3, [sp, #0xc]
	bl ov86_021E6024
	mov r0, #3
	bl sub_0205C350
	add r1, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl FrontierSave_GetStat
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov86_021E5FBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6DD4 ; =0x00010200
	mov r1, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r2, #0x32
	mov r3, #0x70
	bl ov86_021E6064
	add r0, r4, #0
	add r0, #0x10
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x20
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x50
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x60
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x70
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x80
	bl ScheduleWindowCopyToVram
	add r4, #0x90
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021E6DD0: .word 0x000F0200
_021E6DD4: .word 0x00010200
	thumb_func_end ov86_021E6BA8

