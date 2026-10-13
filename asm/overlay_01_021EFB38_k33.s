#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021F0500
	.extern ov01_021F0454

	.text

	.text
	thumb_func_start ov01_021F0500
ov01_021F0500: ; 0x021F0500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, [sp, #0x38]
	add r5, r0, #0
	str r6, [sp, #0x38]
	ldr r6, [sp, #0x30]
	add r4, r1, #0
	str r6, [sp]
	ldr r6, [sp, #0x34]
	add r7, r2, #0
	str r6, [sp, #4]
	ldr r6, [sp, #0x38]
	str r3, [sp, #0x10]
	str r6, [sp, #8]
	ldr r6, [sp, #0x3c]
	str r6, [sp, #0xc]
	bl ov01_021F0454
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov01_021F0454
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl GetBgTilemapBuffer
	add r3, r0, #0
	mov r5, #0
	mov r0, #0xf
	mov ip, r5
	str r0, [sp, #0x14]
_021F0556:
	mov r4, #0
_021F0558:
	add r0, r4, r5
	lsl r0, r0, #0x10
	lsr r2, r0, #0xf
	ldr r0, [sp, #0x14]
	ldrh r1, [r3, r2]
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r6, r0, #0xf
	ldrh r0, [r3, r6]
	add r4, r4, #1
	strh r0, [r3, r2]
	strh r1, [r3, r6]
	ldrh r1, [r3, r2]
	ldr r0, _021F05C0 ; =0x0000FBFF
	add r7, r1, #0
	and r7, r0
	asr r1, r1, #0xa
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #0xa
	orr r0, r7
	strh r0, [r3, r2]
	ldrh r0, [r3, r6]
	ldr r1, _021F05C0 ; =0x0000FBFF
	add r2, r0, #0
	and r2, r1
	asr r1, r0, #0xa
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #0xa
	orr r0, r2
	strh r0, [r3, r6]
	cmp r4, #8
	blt _021F0558
	ldr r0, [sp, #0x14]
	add r5, #0x10
	add r0, #0x10
	str r0, [sp, #0x14]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x18
	blt _021F0556
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F05C0: .word 0x0000FBFF
	thumb_func_end ov01_021F0500

