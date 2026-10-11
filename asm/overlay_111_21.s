	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E6888
	.public ov111_021E68FC
	.public ov111_021E6934
	.public ov111_021E696C
	.public ov111_021E69A0
	.public ov111_021E69F4
	.extern ov111_021E6A74
	.extern ov111_021E6B30

	.text

	.text
	thumb_func_start ov111_021E6888
ov111_021E6888: ; 0x021E6888
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4, #0x2c]
	mvn r0, r0
	cmp r1, r0
	beq _021E68BC
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021E68B8
	ldr r1, [r4, #0x30]
	ldr r0, _021E68F4 ; =0xFFFF0000
	and r0, r1
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x10]
	bl String_Delete
	mov r0, #0
	str r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x2c]
_021E68B8:
	mov r0, #1
	pop {r4, pc}
_021E68BC:
	ldr r2, [r4, #0x30]
	lsl r1, r2, #0x10
	lsr r3, r1, #0x10
	beq _021E68EE
	lsl r1, r2, #0xc
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021E68DA
	lsl r0, r0, #0x10
	add r1, r2, #0
	and r1, r0
	ldr r0, _021E68F8 ; =0xFFF7FFFF
	and r0, r1
	str r0, [r4, #0x30]
	b _021E68EE
_021E68DA:
	lsl r0, r0, #0x10
	add r1, r2, #0
	and r1, r0
	sub r0, r3, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r4, #0x30]
	mov r0, #1
	pop {r4, pc}
_021E68EE:
	mov r0, #0
	pop {r4, pc}
	nop
_021E68F4: .word 0xFFFF0000
_021E68F8: .word 0xFFF7FFFF
	thumb_func_end ov111_021E6888

	thumb_func_start ov111_021E68FC
ov111_021E68FC: ; 0x021E68FC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r2, r4, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0x30]
	add r1, r4, #0
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	add r2, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r3, [r4, #8]
	bl ov111_021E6A74
	str r0, [r4, #0x2c]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov111_021E68FC

	thumb_func_start ov111_021E6934
ov111_021E6934: ; 0x021E6934
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	str r0, [sp, #0xc]
	ldr r0, _021E6968 ; =0x00010200
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl ov111_021E6B30
	add sp, #0x18
	pop {r4, pc}
	nop
_021E6968: .word 0x00010200
	thumb_func_end ov111_021E6934

	thumb_func_start ov111_021E696C
ov111_021E696C: ; 0x021E696C
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl ov111_021E6B30
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov111_021E696C

	thumb_func_start ov111_021E69A0
ov111_021E69A0: ; 0x021E69A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021E69D4
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x2c]
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0200CE7C
	b _021E69E8
_021E69D4:
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl PrintUIntOnWindow
_021E69E8:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov111_021E69A0

	thumb_func_start ov111_021E69F4
ov111_021E69F4: ; 0x021E69F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4, #0x2c]
	mvn r0, r0
	cmp r1, r0
	beq _021E6A0A
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_021E6A0A:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021E6A2A
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0
	bl ClearFrameAndWindow2
	add r0, r4, #0
	add r0, #0x1c
	bl ClearWindowTilemapAndCopyToVram
	add r4, #0x1c
	add r0, r4, #0
	bl RemoveWindow
_021E6A2A:
	pop {r4, pc}
	thumb_func_end ov111_021E69F4

