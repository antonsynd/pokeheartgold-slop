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
	.include "overlay_01_022053EC.inc"
	.include "global.inc"
	.public ov01_02205564

	.text

	.text
	thumb_func_start ov01_02205564
ov01_02205564: ; 0x02205564
	push {r3, lr}
	bl MapObject_GetSpriteID
	ldr r1, _02205580 ; =0x0000019F
	cmp r0, r1
	blt _0220557A
	add r1, r1, #5
	cmp r0, r1
	bgt _0220557A
	mov r0, #1
	pop {r3, pc}
_0220557A:
	mov r0, #0
	pop {r3, pc}
	nop
_02205580: .word 0x0000019F
	thumb_func_end ov01_02205564

