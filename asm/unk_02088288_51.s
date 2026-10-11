#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_0208AFE8
	.public sub_0208B068

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208B068
sub_0208B068: ; 0x0208B068
	push {lr}
	sub sp, #0x14
	mov r2, #0xf
	str r2, [sp]
	mov r2, #4
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #6
	mov r3, #0x13
	bl sub_0208AFE8
	add sp, #0x14
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_0208B068

