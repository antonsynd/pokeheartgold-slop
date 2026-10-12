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
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EC774

	.text

	.text
	thumb_func_start ov01_021EC774
ov01_021EC774: ; 0x021EC774
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
_021EC77A:
	add r0, r3, r2
	add r2, r2, #1
	strb r1, [r0, #4]
	cmp r2, #0x20
	blt _021EC77A
	ldr r0, [r3]
	add r1, r3, #4
	ldr r3, _021EC78C ; =ov01_021EA8C4
	bx r3
	.balign 4, 0
_021EC78C: .word ov01_021EA8C4
	thumb_func_end ov01_021EC774

