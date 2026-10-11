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
	.include "overlay_01_021F1348.inc"
	.include "global.inc"
	.public ov01_021F1538
	.public ov01_021F1560
	.public ov01_021F1588
	.extern ov01_021F151C
	.extern ov01_021F15B4

	.public ov01_02208C5C

	.text

	.text
	thumb_func_start ov01_021F1538
ov01_021F1538: ; 0x021F1538
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #4]
	ldr r5, [r6, #0x14]
	cmp r4, #0
	beq _021F155C
_021F1544:
	add r0, r5, #0
	bl ov01_021F15B4
	cmp r0, #0
	bne _021F1556
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021F151C
_021F1556:
	add r5, #8
	sub r4, r4, #1
	bne _021F1544
_021F155C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1538

	thumb_func_start ov01_021F1560
ov01_021F1560: ; 0x021F1560
	push {r3, r4, r5, lr}
	ldr r4, [r0, #4]
	ldr r5, [r0, #0x14]
	cmp r4, #0
	beq _021F157E
_021F156A:
	add r0, r5, #0
	bl ov01_021F15B4
	cmp r0, #1
	bne _021F1578
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021F1578:
	add r5, #8
	sub r4, r4, #1
	bne _021F156A
_021F157E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1560

	thumb_func_start ov01_021F1588
ov01_021F1588: ; 0x021F1588
	ldr r3, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r3, #0
	beq _021F159C
_021F1590:
	ldr r2, [r0]
	cmp r2, r1
	beq _021F159E
	add r0, #8
	sub r3, r3, #1
	bne _021F1590
_021F159C:
	mov r0, #0
_021F159E:
	bx lr
	thumb_func_end ov01_021F1588

