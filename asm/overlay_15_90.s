#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FEB84
	.public ov15_021FECA0
	.extern ov15_021F9C78
	.extern ov15_021FD3F0
	.extern ov15_021FE584
	.extern ov15_021FE5C4
	.extern ov15_021FE620
	.extern ov15_021FF97C

	.text

	.text
	thumb_func_start ov15_021FEB84
ov15_021FEB84: ; 0x021FEB84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _021FEBDC
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, #0x66
	ldrh r1, [r1]
	bl ov15_021FE620
	add r0, r5, #4
	bl ScheduleWindowCopyToVram
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, #0x66
	ldrh r1, [r1]
	mov r2, #1
	bl ov15_021FF97C
	add r0, r5, #0
	mov r1, #0
	bl ov15_021F9C78
_021FEBDC:
	add r0, r5, #0
	ldr r2, _021FEC98 ; =0x000003E2
	add r0, #0x24
	mov r1, #1
	mov r3, #0xc
	bl DrawFrameAndWindow2
	add r0, r5, #0
	add r0, #0x24
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r0, r1, #0
	add r0, #0x64
	ldrb r2, [r0]
	mov r0, #0xc
	add r3, r1, #4
	mul r0, r2
	add r4, r3, r0
	add r0, r1, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #6
	bne _021FEC30
	add r1, #0x66
	ldrb r0, [r4, #8]
	ldrh r1, [r1]
	bl ov15_021FD3F0
	cmp r0, #0
	bne _021FEC30
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x6a
	bl NewString_ReadMsgData
	add r7, r0, #0
	b _021FEC3E
_021FEC30:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x2b
	bl NewString_ReadMsgData
	add r7, r0, #0
_021FEC3E:
	mov r0, #0x6c
	mov r1, #6
	bl String_New
	mov r1, #6
	ldrsh r2, [r4, r1]
	ldr r1, _021FEC9C ; =0x00000644
	add r6, r0, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, #8
	mov r2, #0
	bl ov15_021FE584
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x24
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #8]
	bl AddTextPrinterParameterized
	add r0, r6, #0
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	add r5, #0x24
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FEC98: .word 0x000003E2
_021FEC9C: .word 0x00000644
	thumb_func_end ov15_021FEB84

	thumb_func_start ov15_021FECA0
ov15_021FECA0: ; 0x021FECA0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ov15_021FE5C4
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov15_021FECA0

