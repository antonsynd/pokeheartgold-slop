	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259314
	.public ov90_02259464
	.public ov90_02259570
	.public ov90_0225C34C

	.text

	thumb_func_start ov90_02259464
ov90_02259464: ; 0x02259464
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	str r1, [sp, #4]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #1
	bne _0225948A
	ldr r2, _022594F8 ; =ov90_0225C34C
	mov r1, #0
_0225947A:
	ldrh r0, [r2]
	cmp r4, r0
	bne _02259482
	ldrh r4, [r2, #2]
_02259482:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x14
	blo _0225947A
_0225948A:
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	lsl r0, r6, #1
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _022594B4
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_022594B4:
	add r0, r5, #0
	add r1, r6, #0
	bl ov90_02259570
	lsl r7, r6, #4
	add r0, r5, r7
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #1
	lsl r3, r6, #2
	str r0, [sp]
	add r3, r5, r3
	ldr r0, [sp, #4]
	ldr r3, [r3, #0x24]
	add r1, r4, #0
	add r2, r5, r7
	bl ov90_02259314
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r3, #0xd
	strh r0, [r2, r1]
	mov r1, #1
	add r0, r5, r7
	add r2, r1, #0
	bl DrawFrameAndWindow2
	add r0, r5, r7
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022594F8: .word ov90_0225C34C
	thumb_func_end ov90_02259464

