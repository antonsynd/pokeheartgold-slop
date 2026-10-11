#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02087FD4.inc"
	.include "global.inc"
	.public sub_02087FD4
	.extern _02103754
	.extern _021037B8

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_02087FD4
sub_02087FD4: ; 0x02087FD4
	push {r3, lr}
	cmp r0, #7
	blt _02087FE6
	blt _02087FE0
	bl GF_AssertFail
_02087FE0:
	ldr r0, _02087FF0 ; =_02103754
	ldr r0, [r0, #0x64]
	pop {r3, pc}
_02087FE6:
	mov r1, #0x24
	mul r1, r0
	ldr r0, _02087FF4 ; =_021037B8
	ldr r0, [r0, r1]
	pop {r3, pc}
	.balign 4, 0
_02087FF0: .word _02103754
_02087FF4: .word _021037B8
	thumb_func_end sub_02087FD4

