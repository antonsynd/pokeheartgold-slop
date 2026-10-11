	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E6BA8
	.public ov86_021E6DD8
	.extern ov86_021E5FBC
	.extern ov86_021E6024
	.extern ov86_021E6064

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

	thumb_func_start ov86_021E6DD8
ov86_021E6DD8: ; 0x021E6DD8
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl Save_FrontierData_Get
	cmp r4, #6
	bhi _021E6E1C
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6DF6: ; jump table
	.short _021E6E04 - _021E6DF6 - 2 ; case 0
	.short _021E6E08 - _021E6DF6 - 2 ; case 1
	.short _021E6E0C - _021E6DF6 - 2 ; case 2
	.short _021E6E10 - _021E6DF6 - 2 ; case 3
	.short _021E6E14 - _021E6DF6 - 2 ; case 4
	.short _021E6E1C - _021E6DF6 - 2 ; case 5
	.short _021E6E18 - _021E6DF6 - 2 ; case 6
_021E6E04:
	mov r1, #8
	b _021E6E1E
_021E6E08:
	mov r1, #9
	b _021E6E1E
_021E6E0C:
	mov r1, #0xa
	b _021E6E1E
_021E6E10:
	mov r1, #0xb
	b _021E6E1E
_021E6E14:
	mov r1, #0xc
	b _021E6E1E
_021E6E18:
	mov r1, #0xf
	b _021E6E1E
_021E6E1C:
	mov r1, #8
_021E6E1E:
	mov r2, #0
	bl sub_0202D5DC
	cmp r0, #1
	bne _021E6E2C
	mov r0, #0x1e
	pop {r4, pc}
_021E6E2C:
	mov r0, #0x1d
	pop {r4, pc}
	thumb_func_end ov86_021E6DD8

