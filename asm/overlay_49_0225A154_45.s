	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225ABA4

    .text

	thumb_func_start ov49_0225ABA4
ov49_0225ABA4: ; 0x0225ABA4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _0225ABC4
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0225ABC4:
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl String_Copy
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225AC04 ; =0x0001020F
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl AddTextPrinterParameterizedWithColor
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl DrawFrameAndWindow2
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225AC04: .word 0x0001020F
	thumb_func_end ov49_0225ABA4

