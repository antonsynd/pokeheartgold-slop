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
	.public _021038B4
	.public sub_0208AE88

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208AE88
sub_0208AE88: ; 0x0208AE88
	push {r3, lr}
	ldr r0, _0208AEAC ; =_021038B4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #1
	bne _0208AE98
	mov r0, #0
	pop {r3, pc}
_0208AE98:
	ldr r0, _0208AEB0 ; =_021038AC
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #1
	bne _0208AEA6
	mov r0, #1
	pop {r3, pc}
_0208AEA6:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	.balign 4, 0
_0208AEAC: .word _021038B4
_0208AEB0: .word _021038AC
	thumb_func_end sub_0208AE88

