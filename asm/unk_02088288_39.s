#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public _021038AC
	.public _021038D4
	.public sub_0208ADDC

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208ADDC
sub_0208ADDC: ; 0x0208ADDC
	push {r3, lr}
	ldr r0, _0208AE00 ; =_021038D4
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0208ADFE
	ldr r0, _0208AE04 ; =_021038AC
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #1
	bne _0208ADFA
	mov r0, #4
	pop {r3, pc}
_0208ADFA:
	mov r0, #0
	mvn r0, r0
_0208ADFE:
	pop {r3, pc}
	.balign 4, 0
_0208AE00: .word _021038D4
_0208AE04: .word _021038AC
	thumb_func_end sub_0208ADDC

