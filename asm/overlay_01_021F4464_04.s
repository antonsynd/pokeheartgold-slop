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
	.include "overlay_01_021F4464.inc"
	.include "global.inc"
	.public ov01_021F45E4

	.text

	.text
	thumb_func_start ov01_021F45E4
ov01_021F45E4: ; 0x021F45E4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0xa
	bgt _021F4600
	bge _021F4624
	cmp r0, #6
	bgt _021F463E
	cmp r0, #2
	blt _021F463E
	beq _021F4606
	cmp r0, #6
	beq _021F4616
	b _021F463E
_021F4600:
	cmp r0, #0xe
	beq _021F4632
	b _021F463E
_021F4606:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F463E
_021F4616:
	mov r2, #2
	ldr r1, _021F466C ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F463E
_021F4624:
	mov r2, #2
	ldr r1, _021F4670 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F463E
_021F4632:
	mov r2, #2
	ldr r1, _021F4674 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
_021F463E:
	ldr r5, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x18]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	mov r4, #2
	lsl r2, r1, #0x10
	lsl r1, r0, #0x14
	lsl r5, r5, #0x1d
	lsl r4, r4, #0x1e
	orr r4, r5
	lsl r3, r3, #0x19
	lsl r0, r6, #0x18
	orr r3, r4
	orr r0, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0x10
	orr r1, r0
	ldr r0, _021F4678 ; =0x04000064
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F466C: .word 0x06820000
_021F4670: .word 0x06840000
_021F4674: .word 0x06860000
_021F4678: .word 0x04000064
	thumb_func_end ov01_021F45E4
