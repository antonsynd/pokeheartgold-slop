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
	.public ov01_021F94A0
	.public ov01_021F96E4
	.public ov01_021F9890
	.public ov01_021FA1D0
	.public ov01_021FA314
	.public ov01_021FA8F8

	.text

	thumb_func_start ov01_021F94A0
ov01_021F94A0: ; 0x021F94A0
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FA8F8
	add r0, r4, #0
	bl ov01_021F96E4
	add r0, r4, #0
	bl ov01_021FA1D0
	bl ov01_021FA314
	add r0, r4, #0
	bl ov01_021F9890
	pop {r4, pc}
	thumb_func_end ov01_021F94A0

