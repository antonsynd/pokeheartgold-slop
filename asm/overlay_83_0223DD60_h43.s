	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240664
	.extern ov83_02240C48
	.extern ov83_02240EC4
	.extern ov83_02241DD8

    .text

	.text
	thumb_func_start ov83_02240664
ov83_02240664: ; 0x02240664
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _02240738 ; =0x00000862
	add r4, r5, #0
	ldrsh r1, [r5, r0]
	mov r0, #6
	mov r6, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	lsl r0, r0, #3
	str r0, [sp, #0x14]
	add r4, #0x50
_02240682:
	add r0, r6, #0
	add r0, #0x30
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x18]
	add r1, r0, r6
	ldr r0, _0224073C ; =0x00000861
	ldrb r0, [r5, r0]
	cmp r1, r0
	bge _02240722
	add r0, r6, #0
	add r0, #0x30
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240740 ; =0x00010200
	ldr r2, _02240744 ; =0x000004DC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [r5, r2]
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r2, r2, r3
	lsl r7, r6, #3
	ldr r2, [r7, r2]
	add r0, r4, r0
	mov r1, #0
	mov r3, #4
	bl AddTextPrinterParameterizedWithColor
	ldr r1, _02240744 ; =0x000004DC
	add r0, r5, #0
	ldr r2, [r5, r1]
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	add r1, r7, r1
	ldr r1, [r1, #4]
	ldrb r2, [r5, #0x13]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov83_02240EC4
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #2
	bl ov83_02240C48
	ldr r0, [sp, #0x20]
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	sub r0, r0, #4
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _02240740 ; =0x00010200
	ldr r1, [sp, #0x20]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r4, r1
	mov r3, #0x68
	bl ov83_02241DD8
_02240722:
	ldr r0, [sp, #0x1c]
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #6
	blo _02240682
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02240738: .word 0x00000862
_0224073C: .word 0x00000861
_02240740: .word 0x00010200
_02240744: .word 0x000004DC
	thumb_func_end ov83_02240664

