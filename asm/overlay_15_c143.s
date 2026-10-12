#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FF320
	.public ov15_021FF364
	.extern ov15_021FE17C
	.extern ov15_021FF570
	.extern ov15_022008C8

	.text

	.text
	thumb_func_start ov15_021FF320
ov15_021FF320: ; 0x021FF320
	push {r4, r5, r6, r7}
	add r3, r1, #0
	add r1, r2, #0
	ldr r2, _021FF360 ; =ov15_022008C8
	mov r5, #0
	ldrb r6, [r2, r3]
	add r4, r5, #0
	cmp r6, #0
	ble _021FF35A
	ldr r7, [r0]
	ldrb r2, [r2, r3]
	add r0, r7, #0
	add r6, r5, #0
	add r1, r1, #1
_021FF33C:
	ldrh r3, [r0]
	cmp r3, #0
	beq _021FF350
	add r3, r7, r6
	ldrh r3, [r3, #2]
	cmp r3, #0
	beq _021FF350
	add r5, r5, #1
	cmp r5, r1
	beq _021FF35A
_021FF350:
	add r4, r4, #1
	add r0, r0, #4
	add r6, r6, #4
	cmp r4, r2
	blt _021FF33C
_021FF35A:
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_021FF360: .word ov15_022008C8
	thumb_func_end ov15_021FF320

	thumb_func_start ov15_021FF364
ov15_021FF364: ; 0x021FF364
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r1, [sp, #0x10]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	str r3, [sp, #0x14]
	mul r0, r1
	add r0, r2, r0
	mov r1, #6
	str r0, [sp, #0x24]
	ldrb r2, [r0, #9]
	ldrsh r0, [r0, r1]
	sub r0, r2, r0
	str r0, [sp, #0x20]
	cmp r0, #6
	ble _021FF392
	str r1, [sp, #0x20]
_021FF392:
	ldr r0, _021FF4DC ; =0x0000068A
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021FF3A2
	mov r0, #0
	str r0, [sp, #0x18]
	mov r4, #6
	b _021FF3A8
_021FF3A2:
	mov r0, #6
	str r0, [sp, #0x18]
	mov r4, #0
_021FF3A8:
	ldr r1, _021FF4DC ; =0x0000068A
	mov r0, #1
	ldrb r2, [r5, r1]
	eor r0, r2
	strb r0, [r5, r1]
	add r0, r5, #0
	bl ov15_021FE17C
	mov r0, #0
	add r7, r5, #0
	ldr r6, [sp, #0x18]
	str r0, [sp, #0x2c]
	add r7, #0xb4
_021FF3C2:
	lsl r0, r6, #4
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	lsl r0, r4, #4
	add r0, r7, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	add r0, r0, #1
	add r4, r4, #1
	str r0, [sp, #0x2c]
	cmp r0, #6
	blt _021FF3C2
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r0, #0
	add r1, #0x64
	ldrb r1, [r1]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x10]
	bl ov15_021FF320
	add r4, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x64
	ldrb r1, [r0]
	ldr r0, _021FF4E0 ; =ov15_022008C8
	ldrb r0, [r0, r1]
	cmp r4, r0
	bge _021FF4BE
	lsl r0, r4, #2
	str r0, [sp, #0x1c]
	add r7, r5, r0
	add r0, r5, #0
	str r0, [sp, #0x30]
	add r0, #0xb4
	ldr r6, [sp, #0x18]
	str r0, [sp, #0x30]
_021FF41C:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0]
	ldr r2, [sp, #0x1c]
	add r1, r0, r1
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _021FF4A2
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _021FF4A2
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021FF450
	ldr r1, [sp, #0x30]
	lsl r2, r6, #4
	add r1, r1, r2
	mov r2, #0x35
	str r4, [sp]
	lsl r2, r2, #4
	ldr r2, [r7, r2]
	ldr r3, [sp, #0x24]
	add r0, r5, #0
	bl ov15_021FF570
	b _021FF494
_021FF450:
	ldr r0, _021FF4E4 ; =0x00000672
	ldrb r0, [r5, r0]
	cmp r4, r0
	bne _021FF470
	ldr r1, [sp, #0x30]
	lsl r2, r6, #4
	add r1, r1, r2
	mov r2, #0x35
	str r4, [sp]
	lsl r2, r2, #4
	ldr r2, [r7, r2]
	ldr r3, [sp, #0x24]
	add r0, r5, #0
	bl ov15_021FF570
	b _021FF494
_021FF470:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FF4E8 ; =0x00010200
	mov r2, #0x35
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r2, r2, #4
	ldr r0, [sp, #0x30]
	lsl r1, r6, #4
	add r0, r0, r1
	mov r1, #0
	ldr r2, [r7, r2]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
_021FF494:
	ldr r0, [sp, #0x28]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x28]
	cmp r1, r0
	bge _021FF4BE
_021FF4A2:
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0x1c]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r7, r7, #4
	add r0, #0x64
	ldrb r1, [r0]
	ldr r0, _021FF4E0 ; =ov15_022008C8
	ldrb r0, [r0, r1]
	cmp r4, r0
	blt _021FF41C
_021FF4BE:
	mov r4, #0
	add r5, #0xb4
_021FF4C2:
	ldr r0, [sp, #0x18]
	lsl r0, r0, #4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r4, #6
	blt _021FF4C2
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FF4DC: .word 0x0000068A
_021FF4E0: .word ov15_022008C8
_021FF4E4: .word 0x00000672
_021FF4E8: .word 0x00010200
	thumb_func_end ov15_021FF364

