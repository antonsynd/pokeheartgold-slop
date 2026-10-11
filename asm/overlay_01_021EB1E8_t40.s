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
	.public ov01_021EC2CC
	.public ov01_021EC2E4
	.extern ov01_021EC29C

	.text

	.text
	thumb_func_start ov01_021EC2CC
ov01_021EC2CC: ; 0x021EC2CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, r5
	beq _021EC2E2
_021EC2D6:
	ldr r4, [r0, #0x34]
	bl ov01_021EC29C
	add r0, r4, #0
	cmp r4, r5
	bne _021EC2D6
_021EC2E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC2CC

	thumb_func_start ov01_021EC2E4
ov01_021EC2E4: ; 0x021EC2E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r6, r1, #0
	ldr r4, [r0, #0x34]
	cmp r0, r5
	beq _021EC2FC
_021EC2F2:
	blx r6
	add r0, r4, #0
	ldr r4, [r4, #0x34]
	cmp r0, r5
	bne _021EC2F2
_021EC2FC:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC2E4

