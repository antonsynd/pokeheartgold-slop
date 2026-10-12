#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021F9F08
	.extern ov15_021F9D8C
	.extern ov15_021F9D9C
	.extern ov15_022008B0

	.text

	.text
	thumb_func_start ov15_021F9F08
ov15_021F9F08: ; 0x021F9F08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	ldrb r1, [r4, #8]
	cmp r1, #3
	bne _021F9F82
	ldr r0, _021FA000 ; =ov15_022008B0
	mov r6, #0
	ldrb r0, [r0, r1]
	cmp r0, #0
	bls _021F9F7E
	ldr r0, [sp]
	add r5, r6, #0
	str r0, [sp, #4]
	add r7, r0, #0
_021F9F38:
	ldr r0, [r4]
	ldrh r3, [r0, r5]
	add r1, r0, r5
	cmp r3, #0
	beq _021F9F7E
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _021F9F7E
	mov r0, #0xbf
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x35
	ldr r2, [sp, #4]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r2, r3, #0
	mov r3, #6
	bl ov15_021F9D9C
	ldr r0, [r4]
	add r6, r6, #1
	ldrh r1, [r0, r5]
	ldr r0, _021FA004 ; =0x000006A4
	add r5, r5, #4
	strh r1, [r7, r0]
	ldr r0, [sp, #4]
	ldrb r1, [r4, #8]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _021FA000 ; =ov15_022008B0
	add r7, r7, #2
	ldrb r0, [r0, r1]
	cmp r6, r0
	blo _021F9F38
_021F9F7E:
	strb r6, [r4, #9]
	b _021F9FDC
_021F9F82:
	ldr r0, _021FA000 ; =ov15_022008B0
	mov r6, #0
	ldrb r0, [r0, r1]
	cmp r0, #0
	bls _021F9FDA
	ldr r0, [sp]
	add r5, r6, #0
	str r0, [sp, #8]
	add r7, r0, #0
_021F9F94:
	ldr r0, [r4]
	ldrh r3, [r0, r5]
	add r1, r0, r5
	cmp r3, #0
	beq _021F9FDA
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _021F9FDA
	mov r0, #0xbe
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x35
	ldr r2, [sp, #8]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r2, r3, #0
	mov r3, #6
	bl ov15_021F9D8C
	ldr r0, [r4]
	add r6, r6, #1
	ldrh r1, [r0, r5]
	ldr r0, _021FA004 ; =0x000006A4
	add r5, r5, #4
	strh r1, [r7, r0]
	ldr r0, [sp, #8]
	ldrb r1, [r4, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, _021FA000 ; =ov15_022008B0
	add r7, r7, #2
	ldrb r0, [r0, r1]
	cmp r6, r0
	blo _021F9F94
_021F9FDA:
	strb r6, [r4, #9]
_021F9FDC:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _021F9FE6
	mov r1, #0
	b _021F9FF2
_021F9FE6:
	sub r0, r0, #1
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
_021F9FF2:
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, r1
	ble _021F9FFC
	strh r1, [r4, #6]
_021F9FFC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FA000: .word ov15_022008B0
_021FA004: .word 0x000006A4
	thumb_func_end ov15_021F9F08

