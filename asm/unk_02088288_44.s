#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public _021039E8
	.public sub_0208AEC4

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208AEC4
sub_0208AEC4: ; 0x0208AEC4
	ldr r3, _0208AECC ; =TouchscreenHitbox_FindRectAtTouchNew
	ldr r0, _0208AED0 ; =_021039E8
	bx r3
	nop
_0208AECC: .word TouchscreenHitbox_FindRectAtTouchNew
_0208AED0: .word _021039E8
	thumb_func_end sub_0208AEC4

