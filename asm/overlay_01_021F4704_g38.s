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
	.public ov01_021F5D8C
	.extern ov01_021F47A0
	.extern ov01_021F488C
	.extern ov01_021F4E88

	.text

	.text
	thumb_func_start ov01_021F5D8C
ov01_021F5D8C: ; 0x021F5D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	mov r1, #0
	add r7, r2, #0
	bl ov01_021F488C
	add r2, r5, #0
	add r3, r5, #0
	str r4, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r2, #0xc4
	add r3, #0xc8
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r6, #0
	add r1, r7, #0
	bl ov01_021F47A0
	mov r4, #0
	add r7, sp, #0x10
_021F5DBC:
	lsl r6, r4, #2
	bl ov01_021FB254
	add r1, r5, r6
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021F5E1C ; =0x0000085C
	str r0, [r2, r1]
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F5E1C ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov01_021FB360
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov01_021FBA00
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xb8
	add r3, #0xc0
	ldr r0, [r7, r6]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r4, #0
	bl ov01_021F4E88
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F5DBC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5E1C: .word 0x0000085C
	thumb_func_end ov01_021F5D8C

