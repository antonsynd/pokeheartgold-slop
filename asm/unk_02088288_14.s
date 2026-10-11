#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_02088D34
	.public sub_0208A63C

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_02088D34
sub_02088D34: ; 0x02088D34
	push {r3, lr}
	bl sub_0208A63C
	cmp r0, #1
	bne _02088D42
	mov r0, #2
	pop {r3, pc}
_02088D42:
	mov r0, #4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02088D34

