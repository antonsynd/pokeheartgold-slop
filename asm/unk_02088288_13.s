#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_02088D18
	.public sub_0208A564
	.public sub_0208AFA0

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_02088D18
sub_02088D18: ; 0x02088D18
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208A564
	cmp r0, #1
	bne _02088D30
	add r0, r4, #0
	mov r1, #1
	bl sub_0208AFA0
	mov r0, #5
	pop {r4, pc}
_02088D30:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end sub_02088D18

