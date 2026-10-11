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
	.public sub_0208B0F4

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208B0F4
sub_0208B0F4: ; 0x0208B0F4
	push {lr}
	sub sp, #0x14
	mov r2, #6
	str r2, [sp]
	mov r2, #4
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #5
	mov r2, #0x1a
	mov r3, #0x1d
	bl sub_0208AFE8
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_0208B0F4

