#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208B85C

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208B85C
sub_0208B85C: ; 0x0208B85C
	push {r3, r4, r5, r6}
	add r3, r3, #2
	mov r4, #0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	mov r5, #1
	add r6, r4, #0
_0208B86A:
	cmp r4, r1
	ble _0208B872
	strb r6, [r0, r4]
	b _0208B87C
_0208B872:
	cmp r4, r2
	ble _0208B87A
	strb r5, [r0, r4]
	b _0208B87C
_0208B87A:
	strb r3, [r0, r4]
_0208B87C:
	add r4, r4, #1
	cmp r4, #5
	blt _0208B86A
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0208B88E
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0208B88E:
	bge _0208B894
	mov r0, #1
	b _0208B896
_0208B894:
	mov r0, #0
_0208B896:
	neg r0, r0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0208B85C

