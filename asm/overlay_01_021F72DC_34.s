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
	.public ov01_021F856C
	.extern ov01_022089F8

	.text

	.text
	thumb_func_start ov01_021F856C
ov01_021F856C: ; 0x021F856C
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F8580
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _021F8596
_021F8580:
	ldr r1, _021F85B8 ; =ov01_022089F8
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02023EE0
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F40
_021F8596:
	add r0, r4, #0
	bl sub_02023F70
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r0, r1
	bpl _021F85A6
	mov r1, #0
_021F85A6:
	add r0, r4, #0
	bl sub_02023F40
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
	pop {r4, pc}
	nop
_021F85B8: .word ov01_022089F8
	thumb_func_end ov01_021F856C

