	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021EA47C
	.extern ov108_021EA624

	.text

	.text
	thumb_func_start ov108_021EA47C
ov108_021EA47C: ; 0x021EA47C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ov108_021EA624
	ldr r0, _021EA500 ; =0x000004A4
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	ldr r2, _021EA504 ; =0x00000431
	sub r1, r2, #1
	ldrb r3, [r4, r1]
	mov r1, #6
	ldrb r0, [r4, r2]
	mul r1, r3
	add r1, r0, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r0, #6
	bhs _021EA4AE
	sub r0, r2, #4
	ldrb r0, [r4, r0]
	cmp r1, r0
	blo _021EA4BA
_021EA4AE:
	ldr r0, _021EA500 ; =0x000004A4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021EA4BA:
	mov r3, #0xc3
	lsl r3, r3, #2
	add r2, r3, #0
	add r2, #0x28
	ldr r5, [r4, r2]
	lsl r2, r1, #2
	add r1, r1, r2
	ldrb r1, [r5, r1]
	ldr r0, [r4, r3]
	add r3, #0xc
	ldr r2, [r4, r3]
	add r1, #0x26
	bl ReadMsgDataIntoString
	mov r1, #0
	mov r2, #0xc6
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EA508 ; =0x00010200
	lsl r2, r2, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _021EA500 ; =0x000004A4
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _021EA500 ; =0x000004A4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EA500: .word 0x000004A4
_021EA504: .word 0x00000431
_021EA508: .word 0x00010200
	thumb_func_end ov108_021EA47C

