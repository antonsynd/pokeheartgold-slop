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
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EC4A8
	.extern ov01_021EB5F4
	.extern ov01_021EC304
	.extern ov01_021EC31C

	.text

	.text
	thumb_func_start ov01_021EC4A8
ov01_021EC4A8: ; 0x021EC4A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r0, sp, #8
	add r1, sp, #4
	add r2, r5, #0
	bl ov01_021EC31C
	ldr r4, [r5, #0x40]
	add r5, #0xc
	cmp r4, r5
	beq _021EC4EC
	add r6, sp, #0xc
_021EC4C6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021EC304
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov01_021EB5F4
	ldr r4, [r4, #0x34]
	cmp r4, r5
	bne _021EC4C6
_021EC4EC:
	cmp r7, #0
	beq _021EC4F4
	ldr r0, [sp, #8]
	str r0, [r7]
_021EC4F4:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EC4FE
	ldr r1, [sp, #4]
	str r1, [r0]
_021EC4FE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC4A8

