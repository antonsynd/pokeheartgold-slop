#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public _021038D4
	.public sub_0208ADCC

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208ADCC
sub_0208ADCC: ; 0x0208ADCC
	ldr r3, _0208ADD4 ; =TouchscreenHitbox_FindRectAtTouchNew
	ldr r0, _0208ADD8 ; =_021038D4
	bx r3
	nop
_0208ADD4: .word TouchscreenHitbox_FindRectAtTouchNew
_0208ADD8: .word _021038D4
	thumb_func_end sub_0208ADCC

