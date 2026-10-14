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
	.public ov01_021F1AB8
	.extern ov01_021F14B4
	.extern ov01_021F1A48

	.public ov01_02208C5C

	.text

	.text
	thumb_func_start ov01_021F1AB8
ov01_021F1AB8: ; 0x021F1AB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl ov01_021F14B4
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F1A48
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1AB8

