	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D028
	.extern ov43_0222A9F4

	.text

	.text
	thumb_func_start ov43_0222D028
ov43_0222D028: ; 0x0222D028
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r1, #4]
	add r4, r2, #0
	bl Save_PlayerData_GetProfile
	add r2, r0, #0
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl BufferPlayersName
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x64
	mov r2, #0x32
	bl ov43_0222A9F4
	ldr r2, [r5, #0x34]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl LoadRectToBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0x10
	bl ScheduleWindowCopyToVram
	add r5, #0x20
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov43_0222D028

