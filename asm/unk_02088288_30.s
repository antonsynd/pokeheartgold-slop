#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_0208A234
	.public sub_0208A2C0
	.public sub_0208A2E0

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208A2C0
sub_0208A2C0: ; 0x0208A2C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208A2E0
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0208A2DC
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0208A234
_0208A2DC:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0208A2C0

