#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FC164
	.extern ov15_021F9F08
	.extern ov15_021FA074
	.extern ov15_021FA170
	.extern ov15_021FB518
	.extern ov15_021FD788
	.extern ov15_021FE868
	.extern ov15_021FED3C
	.extern ov15_02200140

	.text

	.text
	thumb_func_start ov15_021FC164
ov15_021FC164: ; 0x021FC164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021FC218 ; =0x00000616
	ldrb r0, [r5, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021FC214
	ldr r0, _021FC21C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _021FC186
	ldr r0, _021FC220 ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _021FC214
_021FC186:
	add r0, r5, #0
	add r0, #0x34
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r5, #0
	add r0, #0x34
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #4
	bl ScheduleWindowCopyToVram
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r5, r0]
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
	ldrh r3, [r5, r3]
	bl Pocket_TakeItem
	add r0, r5, #0
	bl ov15_021F9F08
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r0, r5, #0
	bl ov15_021FA074
	add r1, r4, #4
	add r4, #0x64
	add r2, r0, #0
	ldrb r4, [r4]
	mov r3, #0xc
	add r0, r5, #0
	mul r3, r4
	add r1, r1, r3
	mov r3, #1
	bl ov15_02200140
	add r0, r5, #0
	bl ov15_021FE868
	add r0, r5, #0
	bl ov15_021FED3C
	add r0, r5, #0
	bl ov15_021FB518
	add r0, r5, #0
	bl ov15_021FA170
	add r0, r5, #0
	mov r1, #1
	bl ov15_021FD788
	mov r0, #1
	pop {r3, r4, r5, pc}
_021FC214:
	mov r0, #0xb
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FC218: .word 0x00000616
_021FC21C: .word gSystem
_021FC220: .word gSystem + 0x40
	thumb_func_end ov15_021FC164

