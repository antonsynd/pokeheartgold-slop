	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022409B0
	.public ov81_02242300
	.public ov81_022423D0
	.public ov81_02242420
	.public ov81_022424AC
	.public ov81_02242500

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

	thumb_func_start ov81_022423D0
ov81_022423D0: ; 0x022423D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0224241C ; =0x0000047C
	add r7, r1, #0
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _02242416
	add r6, r5, #0
	add r6, #0x50
_022423E6:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	add r1, r4, #2
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, r1
	lsr r2, r2, #0x18
	mov r3, #4
	str r7, [sp, #0x14]
	bl ov81_022409B0
	ldr r0, _0224241C ; =0x0000047C
	add r4, r4, #1
	ldr r0, [r5, r0]
	cmp r4, r0
	blo _022423E6
_02242416:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224241C: .word 0x0000047C
	thumb_func_end ov81_022423D0

	thumb_func_start ov81_02242420
ov81_02242420: ; 0x02242420
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _022424A8 ; =0x0000047C
	mov r4, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	bls _022424A4
	add r6, r5, #0
	lsl r0, r1, #0x18
	add r6, #0x50
	lsr r7, r0, #0x18
_02242438:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, r4
	bne _0224246E
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #2
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, r1
	add r2, r7, #0
	mov r3, #4
	bl ov81_022409B0
	b _0224249A
_0224246E:
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
	lsl r2, r4, #0x18
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, r1
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov81_022409B0
_0224249A:
	ldr r0, _022424A8 ; =0x0000047C
	add r4, r4, #1
	ldr r0, [r5, r0]
	cmp r4, r0
	blo _02242438
_022424A4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022424A8: .word 0x0000047C
	thumb_func_end ov81_02242420

	thumb_func_start ov81_022424AC
ov81_022424AC: ; 0x022424AC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r6, #0xf2
	lsl r6, r6, #2
	add r2, r1, #0
	ldrh r1, [r0, r6]
	add r1, r1, #2
	cmp r2, #4
	blo _022424CC
	add r0, #0x50
	lsl r1, r1, #4
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x18
	pop {r4, r5, r6, pc}
_022424CC:
	lsl r4, r1, #4
	mov r1, #0
	str r1, [sp]
	mov r3, #0xf
	str r3, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	sub r1, r6, #4
	add r5, r0, #0
	ldr r1, [r0, r1]
	lsl r2, r2, #0x18
	add r5, #0x50
	str r1, [sp, #0x14]
	add r1, r5, r4
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov81_022409B0
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov81_022424AC

	thumb_func_start ov81_02242500
ov81_02242500: ; 0x02242500
	push {r3, lr}
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #2
	mov r2, #0
	lsl r3, r1, #8
	bl PaletteData_LoadPaletteSlotFromHardware
	pop {r3, pc}
	thumb_func_end ov81_02242500

