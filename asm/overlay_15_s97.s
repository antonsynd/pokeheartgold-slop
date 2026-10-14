#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FD24C
	.extern ov15_021F9F08

	.text

	.text
	thumb_func_start ov15_021FD24C
ov15_021FD24C: ; 0x021FD24C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021FD2F4 ; =0x00000616
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _021FD264
	add sp, #4
	mov r0, #0x17
	pop {r3, r4, pc}
_021FD264:
	ldr r0, _021FD2F8 ; =0x00000643
	bl PlaySE
	mov r1, #0x1a
	lsl r1, r1, #6
	mov r0, #0x8f
	ldrsh r2, [r4, r1]
	add r1, r1, #4
	lsl r0, r0, #2
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	mul r1, r2
	bl PlayerProfile_AddMoney
	mov r0, #0x1a
	lsl r0, r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #1
	bne _021FD2A8
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _021FD2B4
	add r0, r1, #0
	add r0, #0x75
	ldrb r0, [r0]
	add r1, #0x75
	add r0, r0, #1
	strb r0, [r1]
	b _021FD2B4
_021FD2A8:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	add r0, #0x75
	strb r1, [r0]
_021FD2B4:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r3, r1, #0
	mul r3, r0
	add r1, r2, r3
	mov r0, #6
	mov r3, #0x1a
	str r0, [sp]
	add r2, #0x66
	lsl r3, r3, #6
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	ldrh r2, [r2]
	ldrh r3, [r4, r3]
	bl Pocket_TakeItem
	add r0, r4, #0
	bl ov15_021F9F08
	add r4, #0x34
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	mov r0, #0x18
	add sp, #4
	pop {r3, r4, pc}
	nop
_021FD2F4: .word 0x00000616
_021FD2F8: .word 0x00000643
	thumb_func_end ov15_021FD24C

