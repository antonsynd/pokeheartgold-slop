	.include "macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242300
	.extern ov81_022409B0

	.text

	.text
	thumb_func_start ov81_02242300
ov81_02242300: ; 0x02242300
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, r2
	bhs _022423C8
	mov r4, #0
	str r4, [sp, #0x18]
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	ble _02242364
	add r7, r5, #0
	add r7, #0x50
_0224231A:
	lsl r0, r4, #1
	add r1, r5, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r2, [r1, r0]
	cmp r6, r2
	bne _0224232C
	mov r0, #1
	str r0, [sp, #0x18]
_0224232C:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r4, #2
	lsl r1, r1, #4
	lsl r2, r2, #0x18
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, r1
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov81_022409B0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrb r0, [r5, #0x11]
	cmp r4, r0
	blt _0224231A
_02242364:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0224239C
	mov r2, #0
	str r2, [sp]
	mov r1, #0xf
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	lsl r0, r1, #6
	add r2, r5, #0
	add r1, r4, #2
	ldr r0, [r5, r0]
	add r2, #0x50
	lsl r1, r1, #4
	add r1, r2, r1
	lsl r2, r6, #0x18
	str r0, [sp, #0x14]
	add r0, r5, #0
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov81_022409B0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224239C:
	ldr r0, _022423CC ; =0x0000047C
	ldr r0, [r5, r0]
	cmp r4, r0
	bhs _022423C8
	add r6, r5, #0
	add r6, #0x50
_022423A8:
	add r0, r4, #2
	lsl r7, r0, #4
	add r0, r6, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, r7
	bl ScheduleWindowCopyToVram
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _022423CC ; =0x0000047C
	ldr r0, [r5, r0]
	cmp r4, r0
	blo _022423A8
_022423C8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022423CC: .word 0x0000047C
	thumb_func_end ov81_02242300

