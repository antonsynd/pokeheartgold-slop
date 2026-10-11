#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_0208AF08
	.public sub_0208AF70

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	thumb_func_start sub_0208AF08
sub_0208AF08: ; 0x0208AF08
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _0208AF34
	mov r0, #0x7d
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	mov r3, #0x12
	bl sub_020196E8
	ldr r0, _0208AF6C ; =0x00000448
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	mov r1, #1
	bl sub_0208DC68
	pop {r4, pc}
_0208AF34:
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrh r1, [r1, #0x18]
	cmp r1, #0
	beq _0208AF5C
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	mov r3, #0x12
	bl sub_020196E8
	ldr r0, _0208AF6C ; =0x00000448
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	b _0208AF60
_0208AF5C:
	bl sub_0208AF70
_0208AF60:
	add r0, r4, #0
	mov r1, #0
	bl sub_0208DC68
	pop {r4, pc}
	nop
_0208AF6C: .word 0x00000448
	thumb_func_end sub_0208AF08

