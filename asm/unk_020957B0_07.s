#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020957B0.inc"
	.include "global.inc"
	.public sub_02095D1C
	.extern _02108434

	.text

	.text
	thumb_func_start sub_02095D1C
sub_02095D1C: ; 0x02095D1C
	mov r2, #0
	strb r2, [r0]
	ldr r2, _02095D28 ; =_02108434
	str r2, [r0, #8]
	strb r1, [r0, #2]
	bx lr
	.balign 4, 0
_02095D28: .word _02108434
	thumb_func_end sub_02095D1C

