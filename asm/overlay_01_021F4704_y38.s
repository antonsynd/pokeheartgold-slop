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
	.include "overlay_01_021F4704.inc"
	.include "global.inc"
	.public ov01_021F613C
	.extern ov01_021F562C
	.extern ov01_021F5A04
	.extern ov01_021F5A80
	.extern ov01_021F5B24
	.extern ov01_021F6328

	.text

	.text
	thumb_func_start ov01_021F613C
ov01_021F613C: ; 0x021F613C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r2, r5, #0
	add r3, r5, #0
	add r1, #0xc8
	add r2, #0xcc
	add r3, #0xa8
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r6, r0, #0
	bl ov01_021F5A80
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0xc4
	add r2, #0xcc
	ldr r1, [r1]
	ldr r2, [r2]
	add r7, r0, #0
	bl ov01_021F5A04
	add r1, r5, #0
	add r1, #0xcc
	add r4, r0, #0
	ldr r1, [r1]
	add r0, r7, #0
	bl ov01_021F6328
	add r1, r5, #0
	add r1, #0xa4
	ldr r1, [r1]
	cmp r1, r4
	bne _021F61A4
	add r1, r5, #0
	add r1, #0xad
	ldrb r1, [r1]
	cmp r1, r0
	beq _021F61A4
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov01_021F562C
	add r1, r5, #0
	add r1, #0xad
	add r5, #0xac
	ldrb r1, [r1]
	add r0, r6, #0
	add r2, r5, #0
	bl ov01_021F5B24
_021F61A4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F613C

