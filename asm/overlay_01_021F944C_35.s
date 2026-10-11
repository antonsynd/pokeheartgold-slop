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
	.public ov01_021FA28C
	.public sub_021FA248

	.text

	thumb_func_start ov01_021FA28C
ov01_021FA28C: ; 0x021FA28C
	push {r3, lr}
	bl sub_021FA248
	ldrb r0, [r0, #2]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA28C

