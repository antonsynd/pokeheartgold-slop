#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_020892F4
	.public sub_0208A9C4

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_020892F4
sub_020892F4: ; 0x020892F4
	push {r3, lr}
	bl sub_0208A9C4
	cmp r0, #1
	bne _02089302
	mov r0, #0xc
	pop {r3, pc}
_02089302:
	mov r0, #0xa
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020892F4

