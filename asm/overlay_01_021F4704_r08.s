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
	.public ov01_021F4A50
	.extern ov01_021F49FC

	.text

	.text
	thumb_func_start ov01_021F4A50
ov01_021F4A50: ; 0x021F4A50
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _021F4A72
	ldr r0, _021F4AA4 ; =0x00000808
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F4A6C
	bl GF_AssertFail
_021F4A6C:
	ldr r0, _021F4AA4 ; =0x00000808
	mov r1, #0
	str r1, [r4, r0]
_021F4A72:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	blt _021F4A7E
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	blt _021F4A82
_021F4A7E:
	ldr r0, _021F4AA8 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_021F4A82:
	add r1, r6, #0
	bl GetMapModelNo
	add r4, r0, #0
	ldr r0, _021F4AA8 ; =0x0000FFFF
	cmp r4, r0
	beq _021F4A9E
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r7, #0
	bl ov01_021F49FC
_021F4A9E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4AA4: .word 0x00000808
_021F4AA8: .word 0x0000FFFF
	thumb_func_end ov01_021F4A50

