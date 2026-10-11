#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_02089308
	.public sub_0208AA9C

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_02089308
sub_02089308: ; 0x02089308
	push {r3, lr}
	bl sub_0208AA9C
	cmp r0, #1
	bne _02089316
	mov r0, #2
	pop {r3, pc}
_02089316:
	mov r0, #0xb
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02089308

