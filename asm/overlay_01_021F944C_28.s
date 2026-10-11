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
	.include "overlay_01_021F944C.inc"
	.include "global.inc"
	.public ov01_021F9E30
	.public ov01_021F9FCC
	.public ov01_021FA1F4
	.public ov01_021FA1FC
	.public ov01_021FA22C
	.public ov01_021FA234
	.public ov01_021FA4F0
	.public ov01_021FA6A4

	.text

	thumb_func_start ov01_021F9E30
ov01_021F9E30: ; 0x021F9E30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	bl ov01_021FA1F4
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov01_021FA1FC
	add r4, r0, #0
	add r0, r6, #0
	bl ov01_021FA22C
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl ov01_021FA234
	add r7, r0, #0
_021F9E5A:
	ldr r4, [r5]
	ldr r0, _021F9E98 ; =0x0000FFFF
	cmp r4, r0
	beq _021F9E8C
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021F9FCC
	cmp r0, #0
	bne _021F9E8C
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl GF3dGfxRawResMan_FreeObjById
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021FA4F0
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021FA6A4
	ldr r0, _021F9E98 ; =0x0000FFFF
	str r0, [r5]
_021F9E8C:
	add r5, r5, #4
	sub r7, r7, #1
	bne _021F9E5A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F9E98: .word 0x0000FFFF
	thumb_func_end ov01_021F9E30

