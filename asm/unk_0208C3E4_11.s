#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208C3E4.inc"
	.include "global.inc"
	.public sub_0208D078

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208D078
sub_0208D078: ; 0x0208D078
	push {r3, r4, r5, r6}
	ldr r6, _0208D0A0 ; =0x00000299
	sub r1, r6, #1
	ldrb r4, [r0, r1]
	sub r1, r6, #2
	ldrb r3, [r0, r1]
	sub r1, r6, #3
	ldrb r2, [r0, r1]
	sub r1, r6, #5
	ldrb r5, [r0, r6]
	sub r6, r6, #4
	ldrb r1, [r0, r1]
	ldrb r0, [r0, r6]
	add r0, r1, r0
	add r0, r2, r0
	add r0, r3, r0
	add r0, r4, r0
	add r0, r5, r0
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
_0208D0A0: .word 0x00000299
	thumb_func_end sub_0208D078

