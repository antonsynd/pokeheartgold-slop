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
	.public ov01_021F4544

	.text

	.text
	thumb_func_start ov01_021F4544
ov01_021F4544: ; 0x021F4544
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021F457C
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsl r5, r5, #0x14
	lsl r7, r1, #8
	lsl r1, r3, #0x18
	lsl r3, r2, #0x1d
	mov r2, #2
	lsl r2, r2, #0x1e
	orr r3, r2
	lsl r2, r4, #0x19
	orr r2, r3
	orr r1, r2
	lsl r6, r6, #0x10
	orr r1, r5
	orr r1, r6
	orr r1, r7
	orr r1, r0
	ldr r0, _021F4580 ; =0x04000064
	str r1, [r0]
_021F457C:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_021F4580: .word 0x04000064
	thumb_func_end ov01_021F4544

