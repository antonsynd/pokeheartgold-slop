#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208F814.inc"
	.include "global.inc"
	.public sub_0208F814
	.extern _021054B4

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208F814
sub_0208F814: ; 0x0208F814
	ldr r3, _0208F820 ; =sub_0203410C
	add r2, r0, #0
	ldr r0, _0208F824 ; =_021054B4
	mov r1, #0x6e
	bx r3
	nop
_0208F820: .word sub_0203410C
_0208F824: .word _021054B4
	thumb_func_end sub_0208F814

