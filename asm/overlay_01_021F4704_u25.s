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
	.public ov01_021F5B88

	.text

	.text
	thumb_func_start ov01_021F5B88
ov01_021F5B88: ; 0x021F5B88
	push {r3, lr}
	cmp r0, #4
	bhi _021F5BB4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F5B9A: ; jump table
	.short _021F5BB4 - _021F5B9A - 2 ; case 0
	.short _021F5BAC - _021F5B9A - 2 ; case 1
	.short _021F5BA8 - _021F5B9A - 2 ; case 2
	.short _021F5BB0 - _021F5B9A - 2 ; case 3
	.short _021F5BA4 - _021F5B9A - 2 ; case 4
_021F5BA4:
	mov r0, #2
	pop {r3, pc}
_021F5BA8:
	mov r0, #4
	pop {r3, pc}
_021F5BAC:
	mov r0, #3
	pop {r3, pc}
_021F5BB0:
	mov r0, #1
	pop {r3, pc}
_021F5BB4:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov01_021F5B88

