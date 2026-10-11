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
	.public ov01_021F8CC8

	.text

	.text
	thumb_func_start ov01_021F8CC8
ov01_021F8CC8: ; 0x021F8CC8
	push {r4, lr}
	ldr r3, _021F8CF4 ; =ov01_022073D8
	add r2, r1, #0
	ldr r4, [r3]
	ldr r1, _021F8CF8 ; =0x0000FFFF
	cmp r4, r1
	beq _021F8CEE
_021F8CD6:
	cmp r4, r0
	bne _021F8CE6
	add r3, r3, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	pop {r4, pc}
_021F8CE6:
	add r3, #0x10
	ldr r4, [r3]
	cmp r4, r1
	bne _021F8CD6
_021F8CEE:
	bl GF_AssertFail
	pop {r4, pc}
	.balign 4, 0
_021F8CF4: .word ov01_022073D8
_021F8CF8: .word 0x0000FFFF
	thumb_func_end ov01_021F8CC8

