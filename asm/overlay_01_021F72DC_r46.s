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
	.public ov01_021F8BE0

	.text

	.text
	thumb_func_start ov01_021F8BE0
ov01_021F8BE0: ; 0x021F8BE0
	push {lr}
	sub sp, #0xc
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	mov r2, #2
	ldr r3, [sp, #8]
	lsl r2, r2, #0xa
	add r2, r3, r2
	str r2, [sp, #8]
	bl MapObject_SetFacingVector
	add sp, #0xc
	pop {pc}
	thumb_func_end ov01_021F8BE0

