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
	.include "overlay_01_021EDAFC.inc"
	.include "global.inc"
	.public ov01_021EDAFC

	.text

	.text
	thumb_func_start ov01_021EDAFC
ov01_021EDAFC: ; 0x021EDAFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [sp, #0x2c]
	add r4, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	cmp r1, #0
	bne _021EDB2A
	mov r0, #1
	mov r1, #0x1b ; msgdata/msg.narc
	mov r2, #0xbf ; msg_0191.gmm
	mov r3, #4
	bl NewMsgDataFromNarc
	add r1, r6, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	b _021EDB3A
_021EDB2A:
	add r0, r6, #0
	add r0, #0x8c
	str r1, [r0]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
_021EDB3A:
	add r0, r6, #0
	add r0, #0x97
	strb r1, [r0]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x90
	str r1, [r0]
	add r0, r6, #0
	str r4, [r6]
	ldr r1, [sp, #0x20]
	add r0, #0xa0
	str r1, [r0]
	add r1, r6, #0
	mov r0, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r6, #0
	add r1, #0xa8
	str r0, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r3, [r1]
	add r4, sp, #8
	mov r1, #1
	bic r3, r1
	ldrb r2, [r4, #0x14]
	mov r1, #1
	and r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, r6, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, r6, #0
	ldrb r2, [r4, #0x10]
	add r1, #0x96
	mov r3, #0x40
	strb r2, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r1, [r1]
	bic r1, r3
	add r3, r6, #0
	add r3, #0x97
	strb r1, [r3]
	add r1, r6, #0
	add r1, #0x97
	ldrb r1, [r1]
	mov r3, #0x80
	bic r1, r3
	add r3, r6, #0
	add r3, #0x97
	strb r1, [r3]
	add r1, r6, #0
	add r1, #0x98
	strb r5, [r1]
	add r1, r6, #0
	add r1, #0x99
	strb r7, [r1]
	add r1, r6, #0
	add r1, #0x9b
	strb r0, [r1]
	ldr r1, [sp, #0x28]
	mov r3, #3
	str r1, [r6, #0x18]
	add r1, r6, #0
	add r1, #0x94
	strb r3, [r1]
	mov r1, #0xb7
	lsl r1, r1, #2
	strh r2, [r6, r1]
	add r2, r6, #0
	add r3, r0, #0
_021EDBCC:
	add r1, r2, #0
	add r1, #0xbc
	str r3, [r1]
	add r1, r2, #0
	add r1, #0xc0
	add r0, r0, #1
	add r2, #8
	str r3, [r1]
	cmp r0, #0x1c
	blt _021EDBCC
	mov r7, #0xa9
	add r1, r6, #0
	add r2, r6, #0
	mov r5, #0
	mov r0, #0xff
	lsl r7, r7, #2
_021EDBEC:
	mov r4, #0x71
	lsl r4, r4, #2
	str r5, [r1, r4]
	add r4, r4, #4
	str r5, [r1, r4]
	strh r0, [r2, r7]
	add r3, r3, #1
	add r1, #8
	add r2, r2, #2
	cmp r3, #0x1c
	blt _021EDBEC
	add r4, r6, #0
	mov r7, #0x50
_021EDC06:
	add r0, r7, #0
	mov r1, #4
	bl String_New
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x1c
	blt _021EDC06
	add r6, #0xa0
	ldr r1, _021EDC24 ; =0x0000EEEE
	ldr r0, [r6]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EDC24: .word 0x0000EEEE
	thumb_func_end ov01_021EDAFC

