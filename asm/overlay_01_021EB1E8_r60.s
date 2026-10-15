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
	.include "macros.inc"
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EC538

	.text

	.text
	thumb_func_start ov01_021EC538
ov01_021EC538: ; 0x021EC538
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bne _021EC54C
	mov r0, #1
	orr r4, r0
	b _021EC572
_021EC54C:
	bgt _021EC552
	mov r2, #1
	b _021EC554
_021EC552:
	add r2, r4, #0
_021EC554:
	mov r0, #0xe
	ldrsh r1, [r5, r0]
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, r1
	blt _021EC564
	cmp r2, #0
	beq _021EC56C
_021EC564:
	cmp r0, r1
	bgt _021EC572
	cmp r2, #1
	bne _021EC572
_021EC56C:
	mov r0, #1
	orr r4, r0
	strh r1, [r5, #8]
_021EC572:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021EC57E
	mov r0, #2
	orr r4, r0
	b _021EC5A4
_021EC57E:
	bgt _021EC584
	mov r2, #1
	b _021EC586
_021EC584:
	mov r2, #0
_021EC586:
	mov r0, #0xc
	ldrsh r1, [r5, r0]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, r1
	blt _021EC596
	cmp r2, #0
	beq _021EC59E
_021EC596:
	cmp r0, r1
	bgt _021EC5A4
	cmp r2, #1
	bne _021EC5A4
_021EC59E:
	mov r0, #2
	orr r4, r0
	strh r1, [r5, #4]
_021EC5A4:
	mov r0, #6
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, #6]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EC5F8
	mov r1, #4
	ldrsh r1, [r5, r1]
	ldr r0, [r5]
	ldr r2, [r5, #0x18]
	blx r2
	mov r0, #8
	ldrsh r1, [r5, r0]
	strh r1, [r5, #6]
	mov r1, #1
	tst r1, r4
	bne _021EC5D2
	ldrsh r1, [r5, r0]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #8]
_021EC5D2:
	mov r0, #2
	tst r0, r4
	bne _021EC5F8
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #0xa]
	ldrsh r1, [r5, r0]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _021EC5F8
	mov r0, #0
	strh r0, [r5, #0xa]
	mov r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	strh r0, [r5, #4]
_021EC5F8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC538

