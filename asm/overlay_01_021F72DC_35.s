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
	.include "overlay_01_021F72DC.inc"
	.include "global.inc"
	.public ov01_021F85BC
	.extern ov01_022089F8

	.text

	.text
	thumb_func_start ov01_021F85BC
ov01_021F85BC: ; 0x021F85BC
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F85D0
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #1
	beq _021F85E4
_021F85D0:
	ldr r1, _021F85F0 ; =ov01_022089F8
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F85E4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	pop {r4, pc}
	.balign 4, 0
_021F85F0: .word ov01_022089F8
	thumb_func_end ov01_021F85BC

