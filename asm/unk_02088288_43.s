#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public _021038B8
	.public sub_0208AEB4

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208AEB4
sub_0208AEB4: ; 0x0208AEB4
	ldr r3, _0208AEBC ; =TouchscreenHitbox_FindRectAtTouchNew
	ldr r0, _0208AEC0 ; =_021038B8
	bx r3
	nop
_0208AEBC: .word TouchscreenHitbox_FindRectAtTouchNew
_0208AEC0: .word _021038B8
	thumb_func_end sub_0208AEB4

