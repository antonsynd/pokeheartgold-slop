#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_02096910.inc"
	.include "global.inc"
	.public sub_02096910
	.extern _02108594

	.text

	.text
	thumb_func_start sub_02096910
sub_02096910: ; 0x02096910
	ldr r3, _0209691C ; =sub_0203410C
	add r2, r0, #0
	ldr r0, _02096920 ; =_02108594
	mov r1, #0x34
	bx r3
	nop
_0209691C: .word sub_0203410C
_02096920: .word _02108594
	thumb_func_end sub_02096910

