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
	.public ov01_021F9918
	.public ov01_021F9974

	.text

	thumb_func_start ov01_021F9974
ov01_021F9974: ; 0x021F9974
	ldr r3, _021F997C ; =ov01_021F9918
	add r2, r1, #0
	mov r1, #1
	bx r3
	.balign 4, 0
_021F997C: .word ov01_021F9918
	thumb_func_end ov01_021F9974

