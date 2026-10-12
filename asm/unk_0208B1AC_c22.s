#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208BD38

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208BD38
sub_0208BD38: ; 0x0208BD38
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	mov r7, #1
_0208BD42:
	mov r0, #0x9f
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	add r0, r7, #0
	lsl r0, r4
	tst r0, r1
	beq _0208BD5E
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl Sprite_SetAnimCtrlSeq
	b _0208BD6A
_0208BD5E:
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
_0208BD6A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _0208BD42
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	lsl r1, r0, #2
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _0208BD92
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208BD92
	ldr r0, _0208BDC0 ; =0x000004D4
	mov r1, #1
	ldr r0, [r6, r0]
	bl thunk_Sprite_SetDrawFlag
	b _0208BD9C
_0208BD92:
	ldr r0, _0208BDC0 ; =0x000004D4
	mov r1, #0
	ldr r0, [r6, r0]
	bl thunk_Sprite_SetDrawFlag
_0208BD9C:
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	lsr r0, r0, #0x1e
	cmp r0, #2
	ldr r0, _0208BDC4 ; =0x000004D8
	bne _0208BDB4
	ldr r0, [r6, r0]
	mov r1, #1
	bl thunk_Sprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
_0208BDB4:
	ldr r0, [r6, r0]
	mov r1, #0
	bl thunk_Sprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208BDC0: .word 0x000004D4
_0208BDC4: .word 0x000004D8
	thumb_func_end sub_0208BD38

