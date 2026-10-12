	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222BB20
	.public ov43_0222BBB8
	.extern ov43_0222A9F4
	.extern ov43_0222AA70
	.extern ov43_0222AD00
	.extern ov43_0222AD74
	.extern ov43_0222AD98
	.extern ov43_0222C378
	.extern ov43_0222C9A4

	.text

	.text
	thumb_func_start ov43_0222BB20
ov43_0222BB20: ; 0x0222BB20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r7, r1, #0
	add r1, r4, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, #0x64
	mov r2, #5
	add r6, r3, #0
	bl ov43_0222A9F4
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xe
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	mov r3, #0x14
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r2, #0x11
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	add r0, r5, #0
	add r0, #0xb8
	bl ScheduleWindowCopyToVram
	ldr r0, [r4]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r0, #4
	ldrsh r0, [r5, r0]
	mov r3, #0
	add r1, r7, #0
	str r0, [sp]
	str r3, [sp, #4]
	str r6, [sp, #8]
	ldrsh r3, [r5, r3]
	add r0, r5, #0
	add r2, r4, #0
	bl ov43_0222C378
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov43_0222AD74
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x10
	bl ov43_0222AD98
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222BB20

	thumb_func_start ov43_0222BBB8
ov43_0222BBB8: ; 0x0222BBB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov43_0222AA70
	add r0, r5, #0
	add r0, #0xb8
	bl ClearWindowTilemapAndScheduleTransfer
	mov r7, #2
	mov r6, #0
	add r5, #8
	lsl r7, r7, #8
_0222BBD6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r7
	bl ov43_0222C9A4
	add r6, r6, #1
	add r5, #0x38
	cmp r6, #3
	blt _0222BBD6
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xff
	bl ov43_0222AD74
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	bl ov43_0222AD98
	add r0, r4, #0
	mov r1, #0
	bl ov43_0222AD00
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xe
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0x11
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldrh r3, [r0]
	lsl r3, r3, #0x15
	lsr r3, r3, #0x18
	str r3, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r3, #0x14
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0x10
	add r1, r0, #0
	str r2, [sp]
	mov r3, #4
	str r3, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #0
	add r3, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222BBB8

