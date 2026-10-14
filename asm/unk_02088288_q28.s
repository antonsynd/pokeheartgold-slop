#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_02089608

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_02089608
sub_02089608: ; 0x02089608
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02089650 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208964A
	ldr r0, _02089654 ; =0x000007BE
	mov r1, #0
	ldrb r2, [r5, r0]
	mov r0, #1
_0208961E:
	add r4, r0, #0
	lsl r4, r1
	add r3, r2, #0
	tst r3, r4
	beq _02089640
	add r0, r5, #0
	bl sub_0208DDA0
	ldr r0, _02089654 ; =0x000007BE
	ldrb r1, [r5, r0]
	eor r1, r4
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0208964A
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_02089640:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #5
	blo _0208961E
_0208964A:
	mov r0, #0x11
	pop {r3, r4, r5, pc}
	nop
_02089650: .word gSystem
_02089654: .word 0x000007BE
	thumb_func_end sub_02089608

