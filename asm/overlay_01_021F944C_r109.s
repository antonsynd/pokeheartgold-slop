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
	.public ov01_021FA464
	.extern ov01_02208B90

	.text

	.text
	thumb_func_start ov01_021FA464
ov01_021FA464: ; 0x021FA464
	lsl r1, r0, #2
	ldr r0, _021FA46C ; =ov01_02208B90
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_021FA46C: .word ov01_02208B90
	thumb_func_end ov01_021FA464

